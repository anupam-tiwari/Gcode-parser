let gcodePreview; 

var editor = ace.edit("editor");
const endLayer = document.getElementById('end-layer');
//const reverse = document.getElementById('reverse');
const move_fast = document.getElementById('move_fast');
const move_back = document.getElementById('move_back');
const step_forward = document.getElementById('step_forward');
const step_backward = document.getElementById('step_backward');
const pause_play = document.getElementById('pause-resume');
const step = document.getElementById('step');
const control_text = document.getElementById('success-text');
const check_box = document.getElementById('download_original');

var gcode_array; 
var lines;
var current_line = 1; 
var steps = 1;
var original_gcode
let state = true;
var max_size; 
var editor_state =1; 
let stringvar = ""; 
let header;
var layercount; 

function Update() {
    var gcode = editor.getValue();
    

    //lines = gcode.split("\n");
    console.log(gcode); 
    //console.log(sizeof(lines)); 
    step.max = lines.length;
    //endLayer.max = preview.layers.length;
    //_handleGCode('xyz',lines);
    $("#success-text").fadeIn(); 
    control_text.innerHTML = "Updated"; 
    //setTimeout(function() { control_text.fadeOut(1500); }, 5000); 
    $(function() {
      setTimeout(function() { $("#success-text").fadeOut(1500); }, 5000)
      
  })
}

function Download(){
  
  if (check_box.checked == true){
    download("hello.gcode", header);
  } else {
    download("hello.gcode", stringvar);
  }
}

function Load(){
  var gcode = editor.getValue();
  header = gcode
  lines = gcode.split('\n');
  cleanGcode(lines);
}

function initDemo(){

    editor.setTheme("ace/theme/chrome");
    editor.session.setMode("ace/mode/gcode");
    
    const preview = (window.preview = new GCodePreview.WebGLPreview({
        canvas: document.querySelector('.gcode-previewer'),
        topLayerColor: new THREE.Color(`hsl(270, 50%, 50%)`).getHex(),
        //lastSegmentColor: new THREE.Color(`hsl(180, 50%, 50%)`).getHex(),
        //lineWidth: 4,
        extrusionColor: new THREE.Color(`hsl(0, 100%, 50%)`).getHex() , 
        //lastSegmentColor: "#F2BFC1", 
        buildVolume: {x: 150, y: 150, z: 150},
        initialCameraPosition: [0,400,450],
        // debug: true
      }));

      preview.renderExtrusion = true;
      preview.renderTravel = false;
      //preview.extrusionColor =  new THREE.Color(`hsl(0, 100%, 50%)`).getHex() ;

      preview.buildVolume= { 
        x: 150,
        y: 150,
        z: 150
      }

      window.addEventListener('resize', function() {
        preview.resize();
      });


      step.addEventListener('input', function(evt) {
        var step_inc = +step.value;
        steps = step_inc;
        console.log(step_inc);
        
      });

      endLayer.addEventListener('input', function(evt) {
        console.log("this"); 
        preview.endLayer = +endLayer.value;
        console.log(endLayer.value);
        //startLayer.value = preview.startLayer = Math.min(preview.startLayer, preview.endLayer);
        preview.render();
      });

     

      preview.canvas.addEventListener('dragover', function(evt) {
        evt.stopPropagation();
        evt.preventDefault();
        evt.dataTransfer.dropEffect = 'copy';
        document.body.className = "dragging";
    });

      move_back.addEventListener('click', function(evt){
        let maxLayer = preview.layers.length;
        const layer_difference =  lines/maxLayer;
        console.log(layer_difference);
        const timer = setInterval(()=> {
        maxLayer--;
        console.log(maxLayer); 
        preview.endLayer = maxLayer;
        preview.render();
    //console.log(preview);
        if (preview.endLayer == 0) {
            clearInterval(timer);
        }
        },20);
      });

    preview.canvas.addEventListener('dragleave', function(evt) {
        evt.stopPropagation();
        evt.preventDefault();
        document.body.className = "";
    });

      preview.canvas.addEventListener('drop', function(evt) {
        evt.stopPropagation();
        evt.preventDefault();
        document.body.className = "";
        const files = evt.dataTransfer.files;
        const file = files[0];
        populate_editor(file);   
    });

    pause_play.addEventListener('click', function(evt){
      if(state == true){
        state = false; 
        console.log(state); 
        
      }
      else{
        state  = true; 
        console.log(state); 
        //preview.extrusionColor =  "#F2BFC1";
        startLoadingProgressive(lines);
      }
    });


    

    move_fast.addEventListener('click', function(evt){
      
        startLoadingProgressive(lines);
      
      
    }); 

    step_forward.addEventListener('click', function(evt){
      forward();
    }); 

    step_backward.addEventListener('click',function(evt){
      current_line = current_line - steps;
      editor.gotoLine(current_line);
      var backward = lines.slice(0,current_line);
      gcodePreview.processGCode(backward);
      gcodePreview.clear();
      console.log(backward[current_line-1]);
    }); 

    gcodePreview = preview;
    endLayer.max = 1000;
    console.log(preview);
    return preview;
    
}

function download(filename, text) {
  var element = document.createElement('a');
  element.setAttribute('href', 'data:text/plain;charset=utf-8,' + encodeURIComponent(text));
  element.setAttribute('download', filename);

  element.style.display = 'none';
  document.body.appendChild(element);

  element.click();

  document.body.removeChild(element);
}

function cleanGcode(rawGcode){
  let gcodeClean = []; 
  let counter = 0;
  for(let i = 0; i<rawGcode.length; i++){
    if(rawGcode[i][0] == ';'){
    }
    else{
      counter++; 
      rawGcode[i]  = rawGcode[i].replace(/(\r\n|\n|\r)/gm, "");
      gcodeClean[counter] = rawGcode[i];
    }
   }
  gcodeClean = gcodeClean.map(i =>i + " E0.001\r ");
   for(let j = 0;  j<gcodeClean.length ; j++){
    stringvar =  stringvar + gcodeClean[j];
   }
   lines = gcodeClean;
   editor.setValue(stringvar);
}

function updateUI(){
      step.setAttribute('max', gcodePreview.layers.length);
      step.value = gcodePreview.layers.length;
      endLayer.setAttribute('max', gcodePreview.layers.length);
  endLayer.value = gcodePreview.layers.length;
}

function forward(){
      current_line = current_line + steps; 
      //console.log(lines.slice(0,current_line));
      var forward = lines.slice(0,current_line);
      console.log(forward[current_line-1]);
      editor.gotoLine(current_line);
      console.log(steps);
      //console.log(forward);
      //_handleGCode('x',forward);
      gcodePreview.processGCode(forward);
      //console.log(forward_string);
}

function populate_editor(file){
  const reader = new FileReader();
  reader.onload = function() {
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

function ObjectToEditor(objectGcode){
  var stringGcode = objectGcode.toString();
  return stringGcode;
}

function loadGCode(file) {
    const reader = new FileReader();
    reader.onload = function() {
      _handleGCode(file.name, reader.result);
    };
    //console.log(reader.result);
    reader.readAsText(file);
    console.log('this is the type',typeof(reader.result)); 
    //fileName.setAttribute('href', '#');
    return reader.result;
}

function _handleGCode(filename, gcode) {
    //fileName.innerText = filename;
    //fileSize.innerText = humanFileSize(gcode.length);
    startLoadingProgressive(gcode);
  }
  
  function startLoadingProgressive(gcode) {
    let c = 0;
    //startLayer.setAttribute('disabled', 'disabled');
    //endLayer.setAttribute('disabled', 'disabled');
    function loadProgressive() {
      chunkSize = steps;
      var chunks = lines.length/ chunkSize;
      const start = c * chunkSize;
      const end = (c + 1) * chunkSize;
      const chunk = lines.slice(start, end);
      editor.gotoLine(end+editor_state);
      console.log("chunk",chunk);
      //editor.gotoLine(c);
      console.log('chunk',chunk);
      // if(lines[c]){
      //   console.log("wow"); 
      // }
      
      c++;
      if(state == false){
        console.log(c);
        console.log(steps);
        editor_state = c; 
        lines = lines.slice(c,max_size); 
        throw "paused";
      }
      if (c < chunks) {
        window.__loadTimer__ = requestAnimationFrame(loadProgressive)
      }
      else {
        //startLayer.removeAttribute('disabled');
        //endLayer.removeAttribute('disabled');
      }
      gcodePreview.processGCode(chunk);
      //updateUI();
    }
  
    lines = gcode;
   
    //gcodePreview.clear();
    if (window.__loadTimer__) clearTimeout(window.__loadTimer__);
    loadProgressive();
  }


