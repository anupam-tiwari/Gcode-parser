let gcodePreview;

var editor = ace.edit("editor");
const endLayer = document.getElementById('end-layer');
const move_fast = document.getElementById('move_fast');
const move_back = document.getElementById('move_back');
const step_forward = document.getElementById('step_forward');
const step_backward = document.getElementById('step_backward');
const pause_play = document.getElementById('pause-resume');
const step = document.getElementById('step');
const consoleOutput = document.getElementById('success-text');
const check_box = document.getElementById('download_original');
const stepIndicator = document.getElementById('step-indicator');

var gcode_array;
var lines = [];
var originalGcode = "";
var currentLine = 0;
var steps = 1;
var original_gcode
let state = true;
var max_size;
var editor_state = 1;
let stringvar = "";
let header;
var layercount;

function initDemo() {
  editor.setOptions({
    mode: 'ace/theme/chrome',
    theme: 'ace/mode/gcode',
    placeholder: "Paste Gcode here",
  })

  const preview = (window.preview = new GCodePreview.WebGLPreview({
    canvas: document.querySelector('.gcode-previewer'),
    topLayerColor: new THREE.Color(`hsl(270, 50%, 50%)`).getHex(),
    //lastSegmentColor: new THREE.Color(`hsl(180, 50%, 50%)`).getHex(),
    lineWidth: 1,
    extrusionColor: new THREE.Color(`hsl(0, 100%, 50%)`).getHex(),
    //lastSegmentColor: "#F2BFC1", 
    buildVolume: { x: 150, y: 150, z: 150 },
    initialCameraPosition: [0, 400, 450],
    // debug: true
  }));

  preview.renderExtrusion = true;
  preview.renderTravel = false;
  //preview.extrusionColor =  new THREE.Color(`hsl(0, 100%, 50%)`).getHex() ;

  preview.buildVolume = {
    x: 150,
    y: 150,
    z: 150
  }

  window.addEventListener('resize', function () {
    preview.resize();
  });

  step.addEventListener('input', function (evt) {
    steps = +step.value;
    stepIndicator.innerHTML = `${steps} Gcode Instructions/render`
  });

  endLayer.addEventListener('input', function (evt) {
    console.log("this");
    preview.endLayer = +endLayer.value;
    console.log(endLayer.value);
    //startLayer.value = preview.startLayer = Math.min(preview.startLayer, preview.endLayer);
    preview.render();
  });

  preview.canvas.addEventListener('dragover', function (evt) {
    evt.stopPropagation();
    evt.preventDefault();
    evt.dataTransfer.dropEffect = 'copy';
    document.body.className = "dragging";
  });

  move_back.addEventListener('click', function (evt) {
    let maxLayer = preview.layers.length;
    const layer_difference = lines / maxLayer;
    console.log(layer_difference);
    const timer = setInterval(() => {
      maxLayer--;
      console.log(maxLayer);
      preview.endLayer = maxLayer;
      preview.render();
      if (preview.endLayer == 0) {
        clearInterval(timer);
      }
    }, 20);
  });

  pause_play.addEventListener('click', function (evt) {
    if (state == true) {
      state = false;
    }
    else {
      state = true;
      //preview.extrusionColor =  "#F2BFC1";
      startLoadingProgressive(lines);
    }
  });

  move_fast.addEventListener('click', function (evt) {
    startLoadingProgressive(lines);
  
  });

  step_forward.addEventListener('click', function (evt) {
    Forward();
  });

  step_backward.addEventListener('click', function (evt) {
    Backward()
  });

  gcodePreview = preview;
  return preview;

}

async function loadGCodeFromServer(file) { // eslint-disable-line no-unused-vars, @typescript-eslint/no-unused-vars
  const response = await fetch(file);

  if (response.status !== 200) {
    console.error('ERROR. Status Code: ' + response.status);
    return;
  }

  const gcode = await response.text();
  console.log(gcode)
  server(gcode);
}

function Update() {
  try {
    originalGcode = editor.getValue();
    if (originalGcode == "") {
      consoleOutput.innerHTML = "Editor is empty, please paste some Gcode"
    }
    else {
      lines = originalGcode.split("\n");
      StepControl(lines.length)
      consoleOutput.innerHTML = "Gcode Updated!"
    }
  } catch (err) {
    consoleOutput.innerHTML = err.message
  }
  FadeOutput()
}

function Clean() {
  try {
    gcodePreview.clear();
    originalGcode = editor.getValue();
    if (originalGcode == "") {
      consoleOutput.innerHTML = "Please paste the Gcode in the editor"
    }
    else {
      consoleOutput.innerHTML = "Gcode Cleaned and loaded for render"
      lines = originalGcode.split('\n');
      CleanGcode(lines);
      StepControl(lines.length)
    }
  }
  catch (err) {
    consoleOutput.innerHTML = err.message
  }
  FadeOutput()
}

function DownloadGcode() {
  originalGcode = editor.getValue();
  try {
    if (originalGcode == "") {
      consoleOutput.innerHTML = "Paste some text on the Editor"
    }
    else {
      if (check_box.checked == true) {
        Download("hello.gcode", originalGcode);
      } else {
        Download("hello.gcode", lines.join(" "));
      }
      consoleOutput.innerHTML = "File Downloaded!"

    }
  }
  catch (err) {
    consoleOutput.innerHTML = err.message
  }
  FadeOutput()
}

function Download(filename, text) {
  try {
    var element = document.createElement('a');
    element.setAttribute('href', 'data:text/plain;charset=utf-8,' + encodeURIComponent(text));
    element.setAttribute('download', filename);
    element.style.display = 'none';
    document.body.appendChild(element);
    element.click();
    document.body.removeChild(element);
  }
  catch (err) {
    consoleOutput.innerHTML = err.message
  }
}

function CleanGcode(rawGcode) {
  try {
    let gcodeClean = [];
    let counter = 0;
    for (let i = 0; i < rawGcode.length - 1; i++) {
      if (rawGcode[i][0] == ';' || rawGcode[i] == []) {
      }
      else {
        //rawGcode[i]  = rawGcode[i].replace(/(\r\n|\n|\r)/gm, "");
        gcodeClean[counter] = rawGcode[i] + '\n';
        counter++;
      }
    }
    lines = gcodeClean
    editor.setValue(gcodeClean.join(""));

  }
  catch (err) {
    consoleOutput.innerHTML = err.message
  }
}

function updateUI() {
  step.setAttribute('max', gcodePreview.layers.length);
  step.value = gcodePreview.layers.length;
  endLayer.setAttribute('max', gcodePreview.layers.length);
  endLayer.value = gcodePreview.layers.length;
}

function Forward() {
  gcodePreview.clear();
  if (currentLine <= lines.length) {
    var forward = lines.slice(0, currentLine);
    gcodePreview.processGCode(forward);
    editor.gotoLine(currentLine);
    console.log("editor line", forward)
  }
  else {
    currentLine = lines.length
  }
  currentLine = currentLine + steps;
  StepControl(lines.length - currentLine)
}

function Backward() {
  gcodePreview.clear();
  var backward = lines.slice(0, currentLine);
  console.log(backward)
  console.log(currentLine)
  console.log(backward[currentLine - 1])
  if (currentLine >= 0) { gcodePreview.processGCode(backward); }
  else {
    console.log("minimum limit reached", currentLine)
    currentLine = 0
  }
  editor.gotoLine(currentLine);
  currentLine = currentLine - steps;
}

function StepControl(steps) {
  step.value = 1
  stepIndicator.innerHTML = "1 Gcode Instructions/render"
  step.max = (steps/2)-2
}

function populate_editor(file) {
  const reader = new FileReader();
  reader.onload = function () {
    var gcode = reader.result;
    lines = gcode.split('\n');
    var toeditor = lines.toString();
    //console.log(toeditor);
    step.max = lines.length;
    endLayer.max = lines.length;
    max_size = lines.length;
    editor.session.setValue(toeditor);
  };
  reader.readAsText(file);
  console.log(reader.result);

}

function ObjectToEditor(objectGcode) {
  var stringGcode = objectGcode.toString();
  return stringGcode;
}

function _handleGCode(filename, gcode) {
  startLoadingProgressive(gcode);
}

function startLoadingProgressive(gcode) {
  let c = 0; 
  step.setAttribute('disabled', 'disabled');
  endLayer.setAttribute('disabled', 'disabled');
  function loadProgressive() {
    chunkSize = steps;
    var chunks = lines.length / chunkSize;
    const start = c * chunkSize;
    const end = (c + 1) * chunkSize;
    const chunk = lines.slice(start, end);
    editor.gotoLine(end + editor_state);
    c++;
    if (state == false) {
      lines = lines.slice(c, max_size);
      editor_state = c
      throw "paused";
    }
    if (c < chunks) {
      window.__loadTimer__ = requestAnimationFrame(loadProgressive)
      
    }
    else {
      step.removeAttribute('disabled');
      endLayer.removeAttribute('disabled');
    }
    gcodePreview.processGCode(chunk);
  }
  lines = gcode;
  if (window.__loadTimer__) clearTimeout(window.__loadTimer__);
  loadProgressive();
}

function FadeOutput() {
  $("#success-text").fadeIn();
  $(function () {
    setTimeout(function () { $("#success-text").fadeOut(1500); }, 5000)
  })
}


function server(gcode) {
  let c = 0;
  chunkSize = 1000;

  function loadProgressive() {
    const start = c * chunkSize;
    const end = (c + 1) * chunkSize;
    const chunk = lines.slice(start, end);

    c++;
    if (c < chunks) {
      window.__loadTimer__ = requestAnimationFrame(loadProgressive)
    }
    else {

    }
    gcodePreview.processGCode(chunk);
    updateUI();
  }

  const lines = gcode.split('\n');
  const chunks = lines.length / chunkSize;
  gcodePreview.clear();
  if (window.__loadTimer__) clearTimeout(window.__loadTimer__);
  loadProgressive();
}

function humanFileSize(size) {
  var i = Math.floor(Math.log(size) / Math.log(1024));
  return (
    (size / Math.pow(1024, i)).toFixed(2) * 1 +
    ' ' +
    ['B', 'kB', 'MB', 'GB', 'TB'][i]
  );
}

function setFavicons(favImg) {
  let headTitle = document.querySelector('head');
  let setFavicon = document.createElement('link');
  setFavicon.setAttribute('rel', 'shortcut icon');
  setFavicon.setAttribute('href', favImg);
  headTitle.appendChild(setFavicon);
}



