// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Fri Dec  6 14:29:49 2019
// Host        : DESKTOP-T1S8RDD running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/14832/Documents/study/CS/moshu/labs/lab10/balance/balance.srcs/sources_1/ip/ADXL362Control_0/ADXL362Control_0_stub.v
// Design      : ADXL362Control_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "ADXL362Ctrl,Vivado 2019.1" *)
module ADXL362Control_0(SYSCLK, RESET, ACCEL_X, ACCEL_Y, ACCEL_Z, 
  ACCEL_TMP, Data_Ready, SCLK, MOSI, MISO, SS)
/* synthesis syn_black_box black_box_pad_pin="SYSCLK,RESET,ACCEL_X[11:0],ACCEL_Y[11:0],ACCEL_Z[11:0],ACCEL_TMP[11:0],Data_Ready,SCLK,MOSI,MISO,SS" */;
  input SYSCLK;
  input RESET;
  output [11:0]ACCEL_X;
  output [11:0]ACCEL_Y;
  output [11:0]ACCEL_Z;
  output [11:0]ACCEL_TMP;
  output Data_Ready;
  output SCLK;
  output MOSI;
  input MISO;
  output SS;
endmodule
