; Generated with MatterSlice 1.0
; filamentDiameter = 1.75
; extrusionWidth = 1
; firstLayerExtrusionWidth = 1
; layerThickness = 1
; firstLayerThickness = 1
; automatic settings before start_gcode
G21 ; set units to millimeters
M107 ; fan off
; settings from start_gcode
G28 XY ; home all axes
M86 D0
M87 D1
M76 D0
M72 D0
; automatic settings after start_gcode
G90 ; use absolute coordinates
G92 E0 ; reset the expected extruder position
M82 ; use absolute distance for extrusion
M78 B1 P80 S4 D0
M78 B2 P2 S0 D0
M78 B3 P2 S0 D0
M78 B4 P2 S0 D0
M78 B5 P2 S0 D0
M78 B6 P2 S0 D0
M78 B7 P2 S0 D0
M78 B8 P2 S0 D0
T0 B1
; Layer count: 1
; Layer Change GCode
; LAYER:0
M87 B1 D1
M87 B1 D1
M87 B2 D1
M87 B3 D1
M87 B4 D1
M87 B5 D1
M87 B6 D1
M87 B7 D1
M400
M107
G0 Z2
G0 F4800 X95.5 Y84.5 Z2.5
; TYPE:WALL-OUTER
G0 Z0.5
M400
M87 B1 D0
M78 B1 D1
M400
M86 B1 D1
G1 F240 X95.5 Y65.5
G1 X114.5 Y65.5
G1 X114.5 Y84.5
G1 X95.5 Y84.5
M400
M86 B1 D0
G0 F4800 X96.5 Y83.5
; TYPE:WALL-INNER
M400
M86 B1 D1
G1 F240 X96.5 Y66.5
G1 X113.5 Y66.5
G1 X113.5 Y83.5
G1 X96.5 Y83.5
M400
M86 B1 D0
G0 Z2.5
G0 F4800 X98.116 Y82.56
; TYPE:BOTTOM-FILL
G0 Z0.5
M400
M86 B1 D1
G1 F240 X97.439 Y81.882
M400
M86 B1 D0
G0 F4800 X97.439 Y80.468
M400
M86 B1 D1
G1 F240 X99.53 Y82.56
M400
M86 B1 D0
G0 F4800 X100.945 Y82.56
M400
M86 B1 D1
G1 F240 X97.439 Y79.054
M400
M86 B1 D0
G0 F4800 X97.439 Y77.64
M400
M86 B1 D1
G1 F240 X102.359 Y82.56
M400
M86 B1 D0
G0 F4800 X103.773 Y82.56
M400
M86 B1 D1
G1 F240 X97.439 Y76.226
M400
M86 B1 D0
G0 F4800 X97.439 Y74.811
M400
M86 B1 D1
G1 F240 X105.187 Y82.559
M400
M86 B1 D0
G0 F4800 X106.601 Y82.559
M400
M86 B1 D1
G1 F240 X97.439 Y73.397
M400
M86 B1 D0
G0 F4800 X97.439 Y71.983
M400
M86 B1 D1
G1 F240 X108.015 Y82.559
M400
M86 B1 D0
G0 F4800 X109.429 Y82.559
M400
M86 B1 D1
G1 F240 X97.439 Y70.569
M400
M86 B1 D0
G0 F4800 X97.439 Y69.155
M400
M86 B1 D1
G1 F240 X110.843 Y82.559
M400
M86 B1 D0
G0 F4800 X112.258 Y82.559
M400
M86 B1 D1
G1 F240 X97.439 Y67.74
M400
M86 B1 D0
G0 F4800 X98.552 Y67.439
M400
M86 B1 D1
G1 F240 X112.559 Y81.446
M400
M86 B1 D0
G0 F4800 X112.559 Y80.032
M400
M86 B1 D1
G1 F240 X99.966 Y67.439
M400
M86 B1 D0
G0 F4800 X101.38 Y67.439
M400
M86 B1 D1
G1 F240 X112.559 Y78.618
M400
M86 B1 D0
G0 F4800 X112.559 Y77.204
M400
M86 B1 D1
G1 F240 X102.794 Y67.439
M400
M86 B1 D0
G0 F4800 X104.209 Y67.439
M400
M86 B1 D1
G1 F240 X112.559 Y75.789
M400
M86 B1 D0
G0 F4800 X112.559 Y74.375
M400
M86 B1 D1
G1 F240 X105.624 Y67.44
M400
M86 B1 D0
G0 F4800 X107.038 Y67.44
M400
M86 B1 D1
G1 F240 X112.559 Y72.961
M400
M86 B1 D0
G0 F4800 X112.559 Y71.547
M400
M86 B1 D1
G1 F240 X108.452 Y67.44
M400
M86 B1 D0
G0 F4800 X109.866 Y67.44
M400
M86 B1 D1
G1 F240 X112.559 Y70.132
M400
M86 B1 D0
G0 F4800 X112.559 Y68.718
M400
M86 B1 D1
G1 F240 X111.28 Y67.44
G92 E0 ; reset extrusion
M400
M400
M86 B1 D0
M87 B1 D1
T1 B2
G0 F4800 X125.5 Y84.5
; TYPE:WALL-OUTER
M400
M87 B2 D0
M78 B2 D1
M400
M86 B2 D1
G1 F1080 X125.5 Y65.5
G1 X144.5 Y65.5
G1 X144.5 Y84.5
G1 X125.5 Y84.5
M400
M86 B2 D0
G0 F4800 X126.5 Y83.5
; TYPE:WALL-INNER
M400
M86 B2 D1
G1 F1080 X126.5 Y66.5
G1 X143.5 Y66.5
G1 X143.5 Y83.5
G1 X126.5 Y83.5
M400
M86 B2 D0
G0 Z2.5
G0 F4800 X127.815 Y82.56
; TYPE:BOTTOM-FILL
G0 Z0.5
M400
M86 B2 D1
G1 F1080 X127.439 Y82.184
M400
M86 B2 D0
G0 F4800 X127.439 Y80.769
M400
M86 B2 D1
G1 F1080 X129.229 Y82.56
M400
M86 B2 D0
G0 F4800 X130.643 Y82.56
M400
M86 B2 D1
G1 F1080 X127.439 Y79.355
M400
M86 B2 D0
G0 F4800 X127.439 Y77.941
M400
M86 B2 D1
G1 F1080 X132.057 Y82.56
M400
M86 B2 D0
G0 F4800 X133.472 Y82.56
M400
M86 B2 D1
G1 F1080 X127.439 Y76.527
M400
M86 B2 D0
G0 F4800 X127.439 Y75.113
M400
M86 B2 D1
G1 F1080 X134.886 Y82.56
M400
M86 B2 D0
G0 F4800 X136.299 Y82.559
M400
M86 B2 D1
G1 F1080 X127.439 Y73.698
M400
M86 B2 D0
G0 F4800 X127.439 Y72.284
M400
M86 B2 D1
G1 F1080 X137.713 Y82.559
M400
M86 B2 D0
G0 F4800 X139.128 Y82.559
M400
M86 B2 D1
G1 F1080 X127.439 Y70.87
M400
M86 B2 D0
G0 F4800 X127.439 Y69.456
M400
M86 B2 D1
G1 F1080 X140.542 Y82.559
M400
M86 B2 D0
G0 F4800 X141.956 Y82.559
M400
M86 B2 D1
G1 F1080 X127.439 Y68.042
M400
M86 B2 D0
G0 F4800 X128.25 Y67.439
M400
M86 B2 D1
G1 F1080 X142.559 Y81.747
M400
M86 B2 D0
G0 F4800 X142.559 Y80.333
M400
M86 B2 D1
G1 F1080 X129.664 Y67.439
M400
M86 B2 D0
G0 F4800 X131.079 Y67.439
M400
M86 B2 D1
G1 F1080 X142.559 Y78.919
M400
M86 B2 D0
G0 F4800 X142.559 Y77.505
M400
M86 B2 D1
G1 F1080 X132.493 Y67.439
M400
M86 B2 D0
G0 F4800 X133.907 Y67.439
M400
M86 B2 D1
G1 F1080 X142.559 Y76.091
M400
M86 B2 D0
G0 F4800 X142.559 Y74.676
M400
M86 B2 D1
G1 F1080 X135.322 Y67.44
M400
M86 B2 D0
G0 F4800 X136.736 Y67.44
M400
M86 B2 D1
G1 F1080 X142.559 Y73.262
M400
M86 B2 D0
G0 F4800 X142.559 Y71.848
M400
M86 B2 D1
G1 F1080 X138.15 Y67.44
M400
M86 B2 D0
G0 F4800 X139.565 Y67.44
M400
M86 B2 D1
G1 F1080 X142.559 Y70.434
M400
M86 B2 D0
G0 F4800 X142.559 Y69.019
M400
M86 B2 D1
G1 F1080 X140.979 Y67.44
M400
M86 B2 D0
G0 F4800 X142.393 Y67.44
M400
M86 B2 D1
G1 F1080 X142.559 Y67.605
G92 E0 ; reset extrusion
M400
M400
M86 B2 D0
M87 B2 D1
T2 B3
G0 F4800 X155.5 Y84.5
; TYPE:WALL-OUTER
M400
M87 B3 D0
M78 B3 D1
M400
M86 B3 D1
G1 F1080 X155.5 Y65.5
G1 X174.5 Y65.5
G1 X174.5 Y84.5
G1 X155.5 Y84.5
M400
M86 B3 D0
G0 F4800 X156.5 Y83.5
; TYPE:WALL-INNER
M400
M86 B3 D1
G1 F1080 X156.5 Y66.5
G1 X173.5 Y66.5
G1 X173.5 Y83.5
G1 X156.5 Y83.5
M400
M86 B3 D0
G0 F4800 X157.512 Y82.559
; TYPE:BOTTOM-FILL
M400
M86 B3 D1
G1 F1080 X157.439 Y82.486
M400
M86 B3 D0
G0 F4800 X157.439 Y81.071
M400
M86 B3 D1
G1 F1080 X158.927 Y82.559
M400
M86 B3 D0
G0 F4800 X160.341 Y82.559
M400
M86 B3 D1
G1 F1080 X157.439 Y79.657
M400
M86 B3 D0
G0 F4800 X157.439 Y78.243
M400
M86 B3 D1
G1 F1080 X161.755 Y82.559
M400
M86 B3 D0
G0 F4800 X163.169 Y82.559
M400
M86 B3 D1
G1 F1080 X157.439 Y76.829
M400
M86 B3 D0
G0 F4800 X157.439 Y75.415
M400
M86 B3 D1
G1 F1080 X164.584 Y82.559
M400
M86 B3 D0
G0 F4800 X165.998 Y82.56
M400
M86 B3 D1
G1 F1080 X157.439 Y74
M400
M86 B3 D0
G0 F4800 X157.439 Y72.586
M400
M86 B3 D1
G1 F1080 X167.413 Y82.56
M400
M86 B3 D0
G0 F4800 X168.827 Y82.56
M400
M86 B3 D1
G1 F1080 X157.439 Y71.172
M400
M86 B3 D0
G0 F4800 X157.439 Y69.758
M400
M86 B3 D1
G1 F1080 X170.241 Y82.56
M400
M86 B3 D0
G0 F4800 X171.655 Y82.56
M400
M86 B3 D1
G1 F1080 X157.439 Y68.343
M400
M86 B3 D0
G0 F4800 X157.949 Y67.44
M400
M86 B3 D1
G1 F1080 X172.559 Y82.049
M400
M86 B3 D0
G0 F4800 X172.559 Y80.635
M400
M86 B3 D1
G1 F1080 X159.364 Y67.44
M400
M86 B3 D0
G0 F4800 X160.778 Y67.44
M400
M86 B3 D1
G1 F1080 X172.559 Y79.221
M400
M86 B3 D0
G0 F4800 X172.559 Y77.807
M400
M86 B3 D1
G1 F1080 X162.192 Y67.44
M400
M86 B3 D0
G0 F4800 X163.606 Y67.44
M400
M86 B3 D1
G1 F1080 X172.559 Y76.392
M400
M86 B3 D0
G0 F4800 X172.559 Y74.978
M400
M86 B3 D1
G1 F1080 X165.02 Y67.439
M400
M86 B3 D0
G0 F4800 X166.434 Y67.439
M400
M86 B3 D1
G1 F1080 X172.559 Y73.564
M400
M86 B3 D0
G0 F4800 X172.559 Y72.15
M400
M86 B3 D1
G1 F1080 X167.848 Y67.439
M400
M86 B3 D0
G0 F4800 X169.262 Y67.439
M400
M86 B3 D1
G1 F1080 X172.559 Y70.736
M400
M86 B3 D0
G0 F4800 X172.559 Y69.321
M400
M86 B3 D1
G1 F1080 X170.677 Y67.439
M400
M86 B3 D0
G0 F4800 X172.091 Y67.439
M400
M86 B3 D1
G1 F1080 X172.559 Y67.907
G92 E0 ; reset extrusion
M400
M400
M86 B3 D0
M87 B3 D1
T3 B4
G0 F4800 X185.5 Y84.5
; TYPE:WALL-OUTER
M400
M87 B4 D0
M78 B4 D1
M400
M86 B4 D1
G1 F1080 X185.5 Y65.5
G1 X204.5 Y65.5
G1 X204.5 Y84.5
G1 X185.5 Y84.5
M400
M86 B4 D0
G0 F4800 X186.5 Y83.5
; TYPE:WALL-INNER
M400
M86 B4 D1
G1 F1080 X186.5 Y66.5
G1 X203.5 Y66.5
G1 X203.5 Y83.5
G1 X186.5 Y83.5
M400
M86 B4 D0
G0 Z2.5
G0 F4800 X188.625 Y82.559
; TYPE:BOTTOM-FILL
G0 Z0.5
M400
M86 B4 D1
G1 F1080 X187.439 Y81.373
M400
M86 B4 D0
G0 F4800 X187.439 Y79.958
M400
M86 B4 D1
G1 F1080 X190.039 Y82.559
M400
M86 B4 D0
G0 F4800 X191.454 Y82.559
M400
M86 B4 D1
G1 F1080 X187.439 Y78.544
M400
M86 B4 D0
G0 F4800 X187.439 Y77.13
M400
M86 B4 D1
G1 F1080 X192.868 Y82.559
M400
M86 B4 D0
G0 F4800 X194.282 Y82.559
M400
M86 B4 D1
G1 F1080 X187.439 Y75.716
M400
M86 B4 D0
G0 F4800 X187.439 Y74.302
M400
M86 B4 D1
G1 F1080 X195.697 Y82.56
M400
M86 B4 D0
G0 F4800 X197.111 Y82.56
M400
M86 B4 D1
G1 F1080 X187.439 Y72.887
M400
M86 B4 D0
G0 F4800 X187.439 Y71.473
M400
M86 B4 D1
G1 F1080 X198.525 Y82.56
M400
M86 B4 D0
G0 F4800 X199.94 Y82.56
M400
M86 B4 D1
G1 F1080 X187.439 Y70.059
M400
M86 B4 D0
G0 F4800 X187.439 Y68.645
M400
M86 B4 D1
G1 F1080 X201.354 Y82.56
M400
M86 B4 D0
G0 F4800 X202.559 Y82.351
M400
M86 B4 D1
G1 F1080 X187.648 Y67.44
M400
M86 B4 D0
G0 F4800 X189.062 Y67.44
M400
M86 B4 D1
G1 F1080 X202.559 Y80.936
M400
M86 B4 D0
G0 F4800 X202.559 Y79.522
M400
M86 B4 D1
G1 F1080 X190.476 Y67.44
M400
M86 B4 D0
G0 F4800 X191.891 Y67.44
M400
M86 B4 D1
G1 F1080 X202.559 Y78.108
M400
M86 B4 D0
G0 F4800 X202.559 Y76.694
M400
M86 B4 D1
G1 F1080 X193.305 Y67.44
M400
M86 B4 D0
G0 F4800 X194.719 Y67.44
M400
M86 B4 D1
G1 F1080 X202.559 Y75.28
M400
M86 B4 D0
G0 F4800 X202.559 Y73.865
M400
M86 B4 D1
G1 F1080 X196.133 Y67.439
M400
M86 B4 D0
G0 F4800 X197.547 Y67.439
M400
M86 B4 D1
G1 F1080 X202.559 Y72.451
M400
M86 B4 D0
G0 F4800 X202.559 Y71.037
M400
M86 B4 D1
G1 F1080 X198.961 Y67.439
M400
M86 B4 D0
G0 F4800 X200.375 Y67.439
M400
M86 B4 D1
G1 F1080 X202.559 Y69.623
M400
M86 B4 D0
G0 F4800 X202.559 Y68.208
M400
M86 B4 D1
G1 F1080 X201.789 Y67.439
G92 E0 ; reset extrusion
M400
M400
M86 B4 D0
M87 B4 D1
T4 B5
G0 F4800 X95.5 Y114.5
; TYPE:WALL-OUTER
M400
M87 B5 D0
M78 B5 D1
M400
M86 B5 D1
G1 F1080 X95.5 Y95.5
G1 X114.5 Y95.5
G1 X114.5 Y114.5
G1 X95.5 Y114.5
M400
M86 B5 D0
G0 F4800 X96.5 Y113.5
; TYPE:WALL-INNER
M400
M86 B5 D1
G1 F1080 X96.5 Y96.5
G1 X113.5 Y96.5
G1 X113.5 Y113.5
G1 X96.5 Y113.5
M400
M86 B5 D0
G0 Z2.5
G0 F4800 X98.417 Y112.559
; TYPE:BOTTOM-FILL
G0 Z0.5
M400
M86 B5 D1
G1 F1080 X97.44 Y111.582
M400
M86 B5 D0
G0 F4800 X97.44 Y110.167
M400
M86 B5 D1
G1 F1080 X99.831 Y112.559
M400
M86 B5 D0
G0 F4800 X101.245 Y112.559
M400
M86 B5 D1
G1 F1080 X97.44 Y108.753
M400
M86 B5 D0
G0 F4800 X97.44 Y107.339
M400
M86 B5 D1
G1 F1080 X102.659 Y112.559
M400
M86 B5 D0
G0 F4800 X104.074 Y112.559
M400
M86 B5 D1
G1 F1080 X97.44 Y105.925
M400
M86 B5 D0
G0 F4800 X97.439 Y104.51
M400
M86 B5 D1
G1 F1080 X105.488 Y112.559
M400
M86 B5 D0
G0 F4800 X106.902 Y112.559
M400
M86 B5 D1
G1 F1080 X97.439 Y103.096
M400
M86 B5 D0
G0 F4800 X97.439 Y101.681
M400
M86 B5 D1
G1 F1080 X108.316 Y112.559
M400
M86 B5 D0
G0 F4800 X109.73 Y112.559
M400
M86 B5 D1
G1 F1080 X97.439 Y100.267
M400
M86 B5 D0
G0 F4800 X97.439 Y98.853
M400
M86 B5 D1
G1 F1080 X111.145 Y112.559
M400
M86 B5 D0
G0 F4800 X112.559 Y112.559
M400
M86 B5 D1
G1 F1080 X97.439 Y97.439
M400
M86 B5 D0
G0 F4800 X98.853 Y97.439
M400
M86 B5 D1
G1 F1080 X112.559 Y111.145
M400
M86 B5 D0
G0 F4800 X112.559 Y109.73
M400
M86 B5 D1
G1 F1080 X100.267 Y97.439
M400
M86 B5 D0
G0 F4800 X101.681 Y97.439
M400
M86 B5 D1
G1 F1080 X112.559 Y108.316
M400
M86 B5 D0
G0 F4800 X112.559 Y106.902
M400
M86 B5 D1
G1 F1080 X103.096 Y97.439
M400
M86 B5 D0
G0 F4800 X104.51 Y97.439
M400
M86 B5 D1
G1 F1080 X112.559 Y105.488
M400
M86 B5 D0
G0 F4800 X112.559 Y104.074
M400
M86 B5 D1
G1 F1080 X105.925 Y97.44
M400
M86 B5 D0
G0 F4800 X107.339 Y97.44
M400
M86 B5 D1
G1 F1080 X112.559 Y102.659
M400
M86 B5 D0
G0 F4800 X112.559 Y101.245
M400
M86 B5 D1
G1 F1080 X108.753 Y97.44
M400
M86 B5 D0
G0 F4800 X110.167 Y97.44
M400
M86 B5 D1
G1 F1080 X112.559 Y99.831
M400
M86 B5 D0
G0 F4800 X112.559 Y98.417
M400
M86 B5 D1
G1 F1080 X111.582 Y97.44
G92 E0 ; reset extrusion
M400
M400
M86 B5 D0
M87 B5 D1
T5 B6
G0 F4800 X125.5 Y114.5
; TYPE:WALL-OUTER
M400
M87 B6 D0
M78 B6 D1
M400
M86 B6 D1
G1 F1080 X125.5 Y95.5
G1 X144.5 Y95.5
G1 X144.5 Y114.5
G1 X125.5 Y114.5
M400
M86 B6 D0
G0 F4800 X126.5 Y113.5
; TYPE:WALL-INNER
M400
M86 B6 D1
G1 F1080 X126.5 Y96.5
G1 X143.5 Y96.5
G1 X143.5 Y113.5
G1 X126.5 Y113.5
M400
M86 B6 D0
G0 Z2.5
G0 F4800 X128.116 Y112.56
; TYPE:BOTTOM-FILL
G0 Z0.5
M400
M86 B6 D1
G1 F1080 X127.439 Y111.882
M400
M86 B6 D0
G0 F4800 X127.439 Y110.468
M400
M86 B6 D1
G1 F1080 X129.53 Y112.56
M400
M86 B6 D0
G0 F4800 X130.944 Y112.56
M400
M86 B6 D1
G1 F1080 X127.439 Y109.054
M400
M86 B6 D0
G0 F4800 X127.439 Y107.64
M400
M86 B6 D1
G1 F1080 X132.359 Y112.56
M400
M86 B6 D0
G0 F4800 X133.773 Y112.56
M400
M86 B6 D1
G1 F1080 X127.439 Y106.225
M400
M86 B6 D0
G0 F4800 X127.439 Y104.812
M400
M86 B6 D1
G1 F1080 X135.187 Y112.56
M400
M86 B6 D0
G0 F4800 X136.601 Y112.56
M400
M86 B6 D1
G1 F1080 X127.439 Y103.398
M400
M86 B6 D0
G0 F4800 X127.439 Y101.983
M400
M86 B6 D1
G1 F1080 X138.015 Y112.56
M400
M86 B6 D0
G0 F4800 X139.43 Y112.56
M400
M86 B6 D1
G1 F1080 X127.439 Y100.569
M400
M86 B6 D0
G0 F4800 X127.439 Y99.155
M400
M86 B6 D1
G1 F1080 X140.844 Y112.56
M400
M86 B6 D0
G0 F4800 X142.258 Y112.56
M400
M86 B6 D1
G1 F1080 X127.439 Y97.741
M400
M86 B6 D0
G0 F4800 X128.552 Y97.44
M400
M86 B6 D1
G1 F1080 X142.559 Y111.447
M400
M86 B6 D0
G0 F4800 X142.559 Y110.032
M400
M86 B6 D1
G1 F1080 X129.966 Y97.44
M400
M86 B6 D0
G0 F4800 X131.381 Y97.44
M400
M86 B6 D1
G1 F1080 X142.559 Y108.618
M400
M86 B6 D0
G0 F4800 X142.559 Y107.204
M400
M86 B6 D1
G1 F1080 X132.795 Y97.44
M400
M86 B6 D0
G0 F4800 X134.209 Y97.44
M400
M86 B6 D1
G1 F1080 X142.559 Y105.79
M400
M86 B6 D0
G0 F4800 X142.559 Y104.375
M400
M86 B6 D1
G1 F1080 X135.623 Y97.44
M400
M86 B6 D0
G0 F4800 X137.038 Y97.44
M400
M86 B6 D1
G1 F1080 X142.559 Y102.961
M400
M86 B6 D0
G0 F4800 X142.559 Y101.546
M400
M86 B6 D1
G1 F1080 X138.452 Y97.44
M400
M86 B6 D0
G0 F4800 X139.866 Y97.44
M400
M86 B6 D1
G1 F1080 X142.559 Y100.132
M400
M86 B6 D0
G0 F4800 X142.559 Y98.718
M400
M86 B6 D1
G1 F1080 X141.28 Y97.44
G92 E0 ; reset extrusion
M400
M400
M86 B6 D0
M87 B6 D1
T6 B7
G0 F4800 X155.5 Y114.5
; TYPE:WALL-OUTER
M400
M87 B7 D0
M78 B7 D1
M400
M86 B7 D1
G1 F1080 X155.5 Y95.5
G1 X174.5 Y95.5
G1 X174.5 Y114.5
G1 X155.5 Y114.5
M400
M86 B7 D0
G0 F4800 X156.5 Y113.5
; TYPE:WALL-INNER
M400
M86 B7 D1
G1 F1080 X156.5 Y96.5
G1 X173.5 Y96.5
G1 X173.5 Y113.5
G1 X156.5 Y113.5
M400
M86 B7 D0
G0 Z2.5
G0 F4800 X157.814 Y112.56
; TYPE:BOTTOM-FILL
G0 Z0.5
M400
M86 B7 D1
G1 F1080 X157.438 Y112.183
M400
M86 B7 D0
G0 F4800 X157.438 Y110.769
M400
M86 B7 D1
G1 F1080 X159.229 Y112.56
M400
M86 B7 D0
G0 F4800 X160.643 Y112.56
M400
M86 B7 D1
G1 F1080 X157.438 Y109.355
M400
M86 B7 D0
G0 F4800 X157.438 Y107.941
M400
M86 B7 D1
G1 F1080 X162.057 Y112.56
M400
M86 B7 D0
G0 F4800 X163.471 Y112.56
M400
M86 B7 D1
G1 F1080 X157.438 Y106.527
M400
M86 B7 D0
G0 F4800 X157.438 Y105.112
M400
M86 B7 D1
G1 F1080 X164.885 Y112.56
M400
M86 B7 D0
G0 F4800 X166.3 Y112.56
M400
M86 B7 D1
G1 F1080 X157.439 Y103.699
M400
M86 B7 D0
G0 F4800 X157.439 Y102.285
M400
M86 B7 D1
G1 F1080 X167.714 Y112.56
M400
M86 B7 D0
G0 F4800 X169.128 Y112.56
M400
M86 B7 D1
G1 F1080 X157.439 Y100.87
M400
M86 B7 D0
G0 F4800 X157.439 Y99.456
M400
M86 B7 D1
G1 F1080 X170.542 Y112.56
M400
M86 B7 D0
G0 F4800 X171.957 Y112.56
M400
M86 B7 D1
G1 F1080 X157.439 Y98.042
M400
M86 B7 D0
G0 F4800 X158.251 Y97.44
M400
M86 B7 D1
G1 F1080 X172.559 Y111.748
M400
M86 B7 D0
G0 F4800 X172.559 Y110.334
M400
M86 B7 D1
G1 F1080 X159.665 Y97.44
M400
M86 B7 D0
G0 F4800 X161.079 Y97.44
M400
M86 B7 D1
G1 F1080 X172.559 Y108.919
M400
M86 B7 D0
G0 F4800 X172.559 Y107.505
M400
M86 B7 D1
G1 F1080 X162.493 Y97.44
M400
M86 B7 D0
G0 F4800 X163.908 Y97.44
M400
M86 B7 D1
G1 F1080 X172.559 Y106.091
M400
M86 B7 D0
G0 F4800 X172.558 Y104.676
M400
M86 B7 D1
G1 F1080 X165.322 Y97.44
M400
M86 B7 D0
G0 F4800 X166.736 Y97.44
M400
M86 B7 D1
G1 F1080 X172.558 Y103.262
M400
M86 B7 D0
G0 F4800 X172.558 Y101.848
M400
M86 B7 D1
G1 F1080 X168.15 Y97.44
M400
M86 B7 D0
G0 F4800 X169.564 Y97.44
M400
M86 B7 D1
G1 F1080 X172.558 Y100.433
M400
M86 B7 D0
G0 F4800 X172.558 Y99.019
M400
M86 B7 D1
G1 F1080 X170.979 Y97.44
M400
M86 B7 D0
G0 F4800 X172.393 Y97.44
M400
M86 B7 D1
G1 F1080 X172.558 Y97.605
G92 E0 ; reset extrusion
M400
M400
M86 B7 D0
M87 B7 D1
T7 B8
G0 F4800 X185.5 Y114.5
; TYPE:WALL-OUTER
M400
M87 B8 D0
M78 B8 D1
M400
M86 B8 D1
G1 F1080 X185.5 Y95.5
G1 X204.5 Y95.5
G1 X204.5 Y114.5
G1 X185.5 Y114.5
M400
M86 B8 D0
G0 F4800 X186.5 Y113.5
; TYPE:WALL-INNER
M400
M86 B8 D1
G1 F1080 X186.5 Y96.5
G1 X203.5 Y96.5
G1 X203.5 Y113.5
G1 X186.5 Y113.5
M400
M86 B8 D0
G0 F4800 X187.513 Y112.56
; TYPE:BOTTOM-FILL
M400
M86 B8 D1
G1 F1080 X187.439 Y112.486
M400
M86 B8 D0
G0 F4800 X187.439 Y111.072
M400
M86 B8 D1
G1 F1080 X188.927 Y112.56
M400
M86 B8 D0
G0 F4800 X190.341 Y112.56
M400
M86 B8 D1
G1 F1080 X187.439 Y109.658
M400
M86 B8 D0
G0 F4800 X187.439 Y108.243
M400
M86 B8 D1
G1 F1080 X191.756 Y112.56
M400
M86 B8 D0
G0 F4800 X193.17 Y112.56
M400
M86 B8 D1
G1 F1080 X187.439 Y106.829
M400
M86 B8 D0
G0 F4800 X187.439 Y105.415
M400
M86 B8 D1
G1 F1080 X194.584 Y112.56
M400
M86 B8 D0
G0 F4800 X195.998 Y112.56
M400
M86 B8 D1
G1 F1080 X187.439 Y104
M400
M86 B8 D0
G0 F4800 X187.439 Y102.586
M400
M86 B8 D1
G1 F1080 X197.412 Y112.56
M400
M86 B8 D0
G0 F4800 X198.827 Y112.56
M400
M86 B8 D1
G1 F1080 X187.439 Y101.172
M400
M86 B8 D0
G0 F4800 X187.439 Y99.757
M400
M86 B8 D1
G1 F1080 X200.241 Y112.56
M400
M86 B8 D0
G0 F4800 X201.655 Y112.56
M400
M86 B8 D1
G1 F1080 X187.439 Y98.343
M400
M86 B8 D0
G0 F4800 X187.949 Y97.44
M400
M86 B8 D1
G1 F1080 X202.559 Y112.049
M400
M86 B8 D0
G0 F4800 X202.559 Y110.635
M400
M86 B8 D1
G1 F1080 X189.363 Y97.44
M400
M86 B8 D0
G0 F4800 X190.778 Y97.44
M400
M86 B8 D1
G1 F1080 X202.559 Y109.221
M400
M86 B8 D0
G0 F4800 X202.559 Y107.806
M400
M86 B8 D1
G1 F1080 X192.192 Y97.44
M400
M86 B8 D0
G0 F4800 X193.606 Y97.44
M400
M86 B8 D1
G1 F1080 X202.559 Y106.392
M400
M86 B8 D0
G0 F4800 X202.559 Y104.979
M400
M86 B8 D1
G1 F1080 X195.02 Y97.44
M400
M86 B8 D0
G0 F4800 X196.434 Y97.44
M400
M86 B8 D1
G1 F1080 X202.559 Y103.564
M400
M86 B8 D0
G0 F4800 X202.559 Y102.15
M400
M86 B8 D1
G1 F1080 X197.849 Y97.44
M400
M86 B8 D0
G0 F4800 X199.263 Y97.44
M400
M86 B8 D1
G1 F1080 X202.559 Y100.736
M400
M86 B8 D0
G0 F4800 X202.559 Y99.322
M400
M86 B8 D1
G1 F1080 X200.677 Y97.44
M400
M86 B8 D0
G0 F4800 X202.091 Y97.44
M400
M86 B8 D1
G1 F1080 X202.559 Y97.908
M400
M400
M86 B8 D0
M87 B8 D1
M78 H2
M140 S0
G28 XY  ; home X and Y axis
M84     ; disable motors
; filament used = 315.8
; filament used extruder 1 (mm) = 154.9
; filament used extruder 2 (mm) = 160.8
; total print time (s) = 290
; Element Version 1.7.4 Build francium-87-2 : GCode settings used
; Date 07/20/2021 00:00:00 Time 14:16
; numberOfBottomLayers = 1
; numberOfPerimeters = 2
; raftExtraDistanceAroundPart = 5
; numberOfSkirtLoops = 0
; supportInterfaceLayers = 1
; numberOfTopLayers = 1
; numberOfBrimLoops = 0
; outsidePerimeterExtrusionWidth = 0.5
; outsidePerimeterSpeed = 21
; firstLayerSpeed = 18
; raftPrintSpeed = 60
; topInfillSpeed = 50
; firstLayerExtrusionWidth = 0.5
; firstLayerThickness = 1
; beforeToolchangeCode =
; endCode = G28 XY  ; home X and Y axis\nM84     ; disable motors
; toolChangeCode =
; minimumTravelToCauseRetraction = 1.5
; retractionOnTravel = 6
; retractionZHop = 2
; unretractExtraExtrusion = 0
; retractRestartExtraTimeToApply = 0
; retractionSpeed = 30
; bridgeFanSpeedPercent = 100
; bridgeSpeed = 20
; firstLayerToAllowFan = 1
; extrusionMultiplier = 1
; infillStartingAngle = 45
; infillExtendIntoPerimeter = .06
; infillSpeed = 60
; infillType = GRID
; layerChangeCode = ; LAYER:[layer_num]
; fanSpeedMaxPercent = 100
; minimumExtrusionBeforeRetraction = .1
; fanSpeedMinPercent = 35
; minimumPrintingSpeed = 10
; insidePerimetersSpeed = 30
; raftAirGap = .2
; raftFanSpeedPercent = 100
; retractionOnExtruderSwitch = 6
; unretractExtraOnExtruderSwitch = 0
; skirtDistanceFromObject = 6
; minimumLayerTimeSeconds = 30
; supportAirGap = .3
; supportInfillStartingAngle = 45
; supportPercent = 50
; supportLineSpacing = 2.5
; supportMaterialSpeed = 60
; supportXYDistanceFromObject = 0.7
; supportType = LINES
; travelSpeed = 80
; wipeShieldDistanceFromObject = 0
; wipeTowerSize = 0
; zOffset = 0
; bottomClipAmount = 0
; filamentDiameter = 1.75
; layerThickness = 1
; avoidCrossingPerimeters = False
; enableRaft = False
; outsidePerimetersFirst = True
; outputOnlyFirstLayer = False
; retractWhenChangingIslands = True
; generateSupport = False
; generateInternalSupport = True
; generateSupportPerimeter = True
; wipeAfterRetraction = False
; centerObjectInXy = False
; expandThinWalls = True
; MergeOverlappingLines = True
; fillThinGaps = True
; continuousSpiralOuterPerimeter = False
; positionToPlaceObjectCenter = [150,90]
; startCode = ; automatic settings before start_gcode\nG21 ; set units to millimeters\nM107 ; fan off\n; settings from start_gcode\nG28 XY ; home all axes\nM86 D0\nM87 D1\nM76 D0\nM72 D0\n; automatic settings after start_gcode\nG90 ; use absolute coordinates\nG92 E0 ; reset the expected extruder position\nM82 ; use absolute distance for extrusion
; infillPercent = 40
; perimeterStartEndOverlapRatio = 1
; skirtMinLength = 0
; supportExtrusionPercent = 100
; raftExtruder = -1
; supportExtruder = 0
; supportInterfaceExtruder = 0
; NewTools = SY:infillpercent=40,infilltype=GRID,infillstartingangle=45,position=1,psi=80,speed=4,width=1^SY:infillpercent=40,infilltype=GRID,infillstartingangle=45,position=2,psi=2,width=1^SY:infillpercent=40,infilltype=GRID,infillstartingangle=45,position=3,psi=2,width=1^SY:infillpercent=40,infilltype=GRID,infillstartingangle=45,position=4,psi=2,width=1^SY:infillpercent=40,infilltype=GRID,infillstartingangle=45,position=5,psi=2,width=1^SY:infillpercent=40,infilltype=GRID,infillstartingangle=45,position=6,psi=2,width=1^SY:infillpercent=40,infilltype=GRID,infillstartingangle=45,position=7,psi=2,width=1^SY:infillpercent=40,infilltype=GRID,infillstartingangle=45,position=8,psi=2,width=1
; ToolSpecificInfill = False
