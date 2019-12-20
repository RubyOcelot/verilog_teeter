# Verilog Teeter
A FPGA version game like teeter on HTC, using Nexys4 DDR and its onboard accelerometer.


The accelerometer of ball is control by the angle of inclination of the board. There are fail holes(black, 7) and win hole(green 1). 

Currently, it has Classic mode with 10 levels and Endless mode with random map :D

No time and hair for me to add baffle or clinoplain XD


Need VGA, no need for mouse or keyboard.


Use sw[15] to chose theme; up/dowm button to change selection; centre button to confirm choose or call menu when playing.


The vga320x180.v, alpha.v(adjusted) and sram.v is taken from a nice tutorial called [FPGA VGA Graphics in Verilog](https://timetoexplore.net/blog/arty-fpga-vga-verilog-01); The ip core AccelerometerCtl is generated from [Digilent's GPIO demo](https://github.com/Digilent/Nexys-4-DDR-OOB);The Random.v is adjusted from [Zenuora's implementation of T-Rex game](https://github.com/Zenuora/Verilog_Game).
