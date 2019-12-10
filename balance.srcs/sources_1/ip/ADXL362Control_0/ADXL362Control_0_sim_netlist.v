// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
// Date        : Fri Dec  6 14:29:49 2019
// Host        : DESKTOP-T1S8RDD running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/14832/Documents/study/CS/moshu/labs/lab10/balance/balance.srcs/sources_1/ip/ADXL362Control_0/ADXL362Control_0_sim_netlist.v
// Design      : ADXL362Control_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ADXL362Control_0,ADXL362Ctrl,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "ADXL362Ctrl,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module ADXL362Control_0
   (SYSCLK,
    RESET,
    ACCEL_X,
    ACCEL_Y,
    ACCEL_Z,
    ACCEL_TMP,
    Data_Ready,
    SCLK,
    MOSI,
    MISO,
    SS);
  input SYSCLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RESET RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input RESET;
  output [11:0]ACCEL_X;
  output [11:0]ACCEL_Y;
  output [11:0]ACCEL_Z;
  output [11:0]ACCEL_TMP;
  output Data_Ready;
  output SCLK;
  output MOSI;
  input MISO;
  output SS;

  wire [11:0]ACCEL_TMP;
  wire [11:0]ACCEL_X;
  wire [11:0]ACCEL_Y;
  wire [11:0]ACCEL_Z;
  wire Data_Ready;
  wire MISO;
  wire MOSI;
  wire RESET;
  wire SCLK;
  wire SS;
  wire SYSCLK;

  ADXL362Control_0_ADXL362Ctrl U0
       (.ACCEL_TMP(ACCEL_TMP),
        .ACCEL_X(ACCEL_X),
        .ACCEL_Y(ACCEL_Y),
        .ACCEL_Z(ACCEL_Z),
        .Data_Ready(Data_Ready),
        .MISO(MISO),
        .MOSI(MOSI),
        .RESET(RESET),
        .SCLK(SCLK),
        .SS(SS),
        .SYSCLK(SYSCLK));
endmodule

(* ORIG_REF_NAME = "ADXL362Ctrl" *) 
module ADXL362Control_0_ADXL362Ctrl
   (MOSI,
    ACCEL_X,
    ACCEL_Y,
    ACCEL_Z,
    ACCEL_TMP,
    SS,
    SCLK,
    Data_Ready,
    RESET,
    SYSCLK,
    MISO);
  output MOSI;
  output [11:0]ACCEL_X;
  output [11:0]ACCEL_Y;
  output [11:0]ACCEL_Z;
  output [11:0]ACCEL_TMP;
  output SS;
  output SCLK;
  output Data_Ready;
  input RESET;
  input SYSCLK;
  input MISO;

  wire [11:0]ACCEL_TMP;
  wire \ACCEL_TMP_SUM[0]_i_2_n_0 ;
  wire \ACCEL_TMP_SUM[0]_i_3_n_0 ;
  wire \ACCEL_TMP_SUM[0]_i_4_n_0 ;
  wire \ACCEL_TMP_SUM[0]_i_5_n_0 ;
  wire \ACCEL_TMP_SUM[12]_i_2_n_0 ;
  wire \ACCEL_TMP_SUM[12]_i_3_n_0 ;
  wire \ACCEL_TMP_SUM[12]_i_4_n_0 ;
  wire \ACCEL_TMP_SUM[12]_i_5_n_0 ;
  wire \ACCEL_TMP_SUM[4]_i_2_n_0 ;
  wire \ACCEL_TMP_SUM[4]_i_3_n_0 ;
  wire \ACCEL_TMP_SUM[4]_i_4_n_0 ;
  wire \ACCEL_TMP_SUM[4]_i_5_n_0 ;
  wire \ACCEL_TMP_SUM[8]_i_2_n_0 ;
  wire \ACCEL_TMP_SUM[8]_i_3_n_0 ;
  wire \ACCEL_TMP_SUM[8]_i_4_n_0 ;
  wire \ACCEL_TMP_SUM[8]_i_5_n_0 ;
  wire [15:4]ACCEL_TMP_SUM_reg;
  wire \ACCEL_TMP_SUM_reg[0]_i_1_n_0 ;
  wire \ACCEL_TMP_SUM_reg[0]_i_1_n_1 ;
  wire \ACCEL_TMP_SUM_reg[0]_i_1_n_2 ;
  wire \ACCEL_TMP_SUM_reg[0]_i_1_n_3 ;
  wire \ACCEL_TMP_SUM_reg[0]_i_1_n_4 ;
  wire \ACCEL_TMP_SUM_reg[0]_i_1_n_5 ;
  wire \ACCEL_TMP_SUM_reg[0]_i_1_n_6 ;
  wire \ACCEL_TMP_SUM_reg[0]_i_1_n_7 ;
  wire \ACCEL_TMP_SUM_reg[12]_i_1_n_1 ;
  wire \ACCEL_TMP_SUM_reg[12]_i_1_n_2 ;
  wire \ACCEL_TMP_SUM_reg[12]_i_1_n_3 ;
  wire \ACCEL_TMP_SUM_reg[12]_i_1_n_4 ;
  wire \ACCEL_TMP_SUM_reg[12]_i_1_n_5 ;
  wire \ACCEL_TMP_SUM_reg[12]_i_1_n_6 ;
  wire \ACCEL_TMP_SUM_reg[12]_i_1_n_7 ;
  wire \ACCEL_TMP_SUM_reg[4]_i_1_n_0 ;
  wire \ACCEL_TMP_SUM_reg[4]_i_1_n_1 ;
  wire \ACCEL_TMP_SUM_reg[4]_i_1_n_2 ;
  wire \ACCEL_TMP_SUM_reg[4]_i_1_n_3 ;
  wire \ACCEL_TMP_SUM_reg[4]_i_1_n_4 ;
  wire \ACCEL_TMP_SUM_reg[4]_i_1_n_5 ;
  wire \ACCEL_TMP_SUM_reg[4]_i_1_n_6 ;
  wire \ACCEL_TMP_SUM_reg[4]_i_1_n_7 ;
  wire \ACCEL_TMP_SUM_reg[8]_i_1_n_0 ;
  wire \ACCEL_TMP_SUM_reg[8]_i_1_n_1 ;
  wire \ACCEL_TMP_SUM_reg[8]_i_1_n_2 ;
  wire \ACCEL_TMP_SUM_reg[8]_i_1_n_3 ;
  wire \ACCEL_TMP_SUM_reg[8]_i_1_n_4 ;
  wire \ACCEL_TMP_SUM_reg[8]_i_1_n_5 ;
  wire \ACCEL_TMP_SUM_reg[8]_i_1_n_6 ;
  wire \ACCEL_TMP_SUM_reg[8]_i_1_n_7 ;
  wire \ACCEL_TMP_SUM_reg_n_0_[0] ;
  wire \ACCEL_TMP_SUM_reg_n_0_[1] ;
  wire \ACCEL_TMP_SUM_reg_n_0_[2] ;
  wire \ACCEL_TMP_SUM_reg_n_0_[3] ;
  wire [11:0]ACCEL_X;
  wire ACCEL_X_SUM0;
  wire \ACCEL_X_SUM[0]_i_3_n_0 ;
  wire \ACCEL_X_SUM[0]_i_4_n_0 ;
  wire \ACCEL_X_SUM[0]_i_5_n_0 ;
  wire \ACCEL_X_SUM[0]_i_6_n_0 ;
  wire \ACCEL_X_SUM[12]_i_2_n_0 ;
  wire \ACCEL_X_SUM[12]_i_3_n_0 ;
  wire \ACCEL_X_SUM[12]_i_4_n_0 ;
  wire \ACCEL_X_SUM[12]_i_5_n_0 ;
  wire \ACCEL_X_SUM[4]_i_2_n_0 ;
  wire \ACCEL_X_SUM[4]_i_3_n_0 ;
  wire \ACCEL_X_SUM[4]_i_4_n_0 ;
  wire \ACCEL_X_SUM[4]_i_5_n_0 ;
  wire \ACCEL_X_SUM[8]_i_2_n_0 ;
  wire \ACCEL_X_SUM[8]_i_3_n_0 ;
  wire \ACCEL_X_SUM[8]_i_4_n_0 ;
  wire \ACCEL_X_SUM[8]_i_5_n_0 ;
  wire [15:4]ACCEL_X_SUM_reg;
  wire \ACCEL_X_SUM_reg[0]_i_2_n_0 ;
  wire \ACCEL_X_SUM_reg[0]_i_2_n_1 ;
  wire \ACCEL_X_SUM_reg[0]_i_2_n_2 ;
  wire \ACCEL_X_SUM_reg[0]_i_2_n_3 ;
  wire \ACCEL_X_SUM_reg[0]_i_2_n_4 ;
  wire \ACCEL_X_SUM_reg[0]_i_2_n_5 ;
  wire \ACCEL_X_SUM_reg[0]_i_2_n_6 ;
  wire \ACCEL_X_SUM_reg[0]_i_2_n_7 ;
  wire \ACCEL_X_SUM_reg[12]_i_1_n_1 ;
  wire \ACCEL_X_SUM_reg[12]_i_1_n_2 ;
  wire \ACCEL_X_SUM_reg[12]_i_1_n_3 ;
  wire \ACCEL_X_SUM_reg[12]_i_1_n_4 ;
  wire \ACCEL_X_SUM_reg[12]_i_1_n_5 ;
  wire \ACCEL_X_SUM_reg[12]_i_1_n_6 ;
  wire \ACCEL_X_SUM_reg[12]_i_1_n_7 ;
  wire \ACCEL_X_SUM_reg[4]_i_1_n_0 ;
  wire \ACCEL_X_SUM_reg[4]_i_1_n_1 ;
  wire \ACCEL_X_SUM_reg[4]_i_1_n_2 ;
  wire \ACCEL_X_SUM_reg[4]_i_1_n_3 ;
  wire \ACCEL_X_SUM_reg[4]_i_1_n_4 ;
  wire \ACCEL_X_SUM_reg[4]_i_1_n_5 ;
  wire \ACCEL_X_SUM_reg[4]_i_1_n_6 ;
  wire \ACCEL_X_SUM_reg[4]_i_1_n_7 ;
  wire \ACCEL_X_SUM_reg[8]_i_1_n_0 ;
  wire \ACCEL_X_SUM_reg[8]_i_1_n_1 ;
  wire \ACCEL_X_SUM_reg[8]_i_1_n_2 ;
  wire \ACCEL_X_SUM_reg[8]_i_1_n_3 ;
  wire \ACCEL_X_SUM_reg[8]_i_1_n_4 ;
  wire \ACCEL_X_SUM_reg[8]_i_1_n_5 ;
  wire \ACCEL_X_SUM_reg[8]_i_1_n_6 ;
  wire \ACCEL_X_SUM_reg[8]_i_1_n_7 ;
  wire \ACCEL_X_SUM_reg_n_0_[0] ;
  wire \ACCEL_X_SUM_reg_n_0_[1] ;
  wire \ACCEL_X_SUM_reg_n_0_[2] ;
  wire \ACCEL_X_SUM_reg_n_0_[3] ;
  wire [11:0]ACCEL_Y;
  wire \ACCEL_Y_SUM[0]_i_2_n_0 ;
  wire \ACCEL_Y_SUM[0]_i_3_n_0 ;
  wire \ACCEL_Y_SUM[0]_i_4_n_0 ;
  wire \ACCEL_Y_SUM[0]_i_5_n_0 ;
  wire \ACCEL_Y_SUM[12]_i_2_n_0 ;
  wire \ACCEL_Y_SUM[12]_i_3_n_0 ;
  wire \ACCEL_Y_SUM[12]_i_4_n_0 ;
  wire \ACCEL_Y_SUM[12]_i_5_n_0 ;
  wire \ACCEL_Y_SUM[4]_i_2_n_0 ;
  wire \ACCEL_Y_SUM[4]_i_3_n_0 ;
  wire \ACCEL_Y_SUM[4]_i_4_n_0 ;
  wire \ACCEL_Y_SUM[4]_i_5_n_0 ;
  wire \ACCEL_Y_SUM[8]_i_2_n_0 ;
  wire \ACCEL_Y_SUM[8]_i_3_n_0 ;
  wire \ACCEL_Y_SUM[8]_i_4_n_0 ;
  wire \ACCEL_Y_SUM[8]_i_5_n_0 ;
  wire [15:4]ACCEL_Y_SUM_reg;
  wire \ACCEL_Y_SUM_reg[0]_i_1_n_0 ;
  wire \ACCEL_Y_SUM_reg[0]_i_1_n_1 ;
  wire \ACCEL_Y_SUM_reg[0]_i_1_n_2 ;
  wire \ACCEL_Y_SUM_reg[0]_i_1_n_3 ;
  wire \ACCEL_Y_SUM_reg[0]_i_1_n_4 ;
  wire \ACCEL_Y_SUM_reg[0]_i_1_n_5 ;
  wire \ACCEL_Y_SUM_reg[0]_i_1_n_6 ;
  wire \ACCEL_Y_SUM_reg[0]_i_1_n_7 ;
  wire \ACCEL_Y_SUM_reg[12]_i_1_n_1 ;
  wire \ACCEL_Y_SUM_reg[12]_i_1_n_2 ;
  wire \ACCEL_Y_SUM_reg[12]_i_1_n_3 ;
  wire \ACCEL_Y_SUM_reg[12]_i_1_n_4 ;
  wire \ACCEL_Y_SUM_reg[12]_i_1_n_5 ;
  wire \ACCEL_Y_SUM_reg[12]_i_1_n_6 ;
  wire \ACCEL_Y_SUM_reg[12]_i_1_n_7 ;
  wire \ACCEL_Y_SUM_reg[4]_i_1_n_0 ;
  wire \ACCEL_Y_SUM_reg[4]_i_1_n_1 ;
  wire \ACCEL_Y_SUM_reg[4]_i_1_n_2 ;
  wire \ACCEL_Y_SUM_reg[4]_i_1_n_3 ;
  wire \ACCEL_Y_SUM_reg[4]_i_1_n_4 ;
  wire \ACCEL_Y_SUM_reg[4]_i_1_n_5 ;
  wire \ACCEL_Y_SUM_reg[4]_i_1_n_6 ;
  wire \ACCEL_Y_SUM_reg[4]_i_1_n_7 ;
  wire \ACCEL_Y_SUM_reg[8]_i_1_n_0 ;
  wire \ACCEL_Y_SUM_reg[8]_i_1_n_1 ;
  wire \ACCEL_Y_SUM_reg[8]_i_1_n_2 ;
  wire \ACCEL_Y_SUM_reg[8]_i_1_n_3 ;
  wire \ACCEL_Y_SUM_reg[8]_i_1_n_4 ;
  wire \ACCEL_Y_SUM_reg[8]_i_1_n_5 ;
  wire \ACCEL_Y_SUM_reg[8]_i_1_n_6 ;
  wire \ACCEL_Y_SUM_reg[8]_i_1_n_7 ;
  wire \ACCEL_Y_SUM_reg_n_0_[0] ;
  wire \ACCEL_Y_SUM_reg_n_0_[1] ;
  wire \ACCEL_Y_SUM_reg_n_0_[2] ;
  wire \ACCEL_Y_SUM_reg_n_0_[3] ;
  wire [11:0]ACCEL_Z;
  wire \ACCEL_Z_SUM[0]_i_2_n_0 ;
  wire \ACCEL_Z_SUM[0]_i_3_n_0 ;
  wire \ACCEL_Z_SUM[0]_i_4_n_0 ;
  wire \ACCEL_Z_SUM[0]_i_5_n_0 ;
  wire \ACCEL_Z_SUM[12]_i_2_n_0 ;
  wire \ACCEL_Z_SUM[12]_i_3_n_0 ;
  wire \ACCEL_Z_SUM[12]_i_4_n_0 ;
  wire \ACCEL_Z_SUM[12]_i_5_n_0 ;
  wire \ACCEL_Z_SUM[4]_i_2_n_0 ;
  wire \ACCEL_Z_SUM[4]_i_3_n_0 ;
  wire \ACCEL_Z_SUM[4]_i_4_n_0 ;
  wire \ACCEL_Z_SUM[4]_i_5_n_0 ;
  wire \ACCEL_Z_SUM[8]_i_2_n_0 ;
  wire \ACCEL_Z_SUM[8]_i_3_n_0 ;
  wire \ACCEL_Z_SUM[8]_i_4_n_0 ;
  wire \ACCEL_Z_SUM[8]_i_5_n_0 ;
  wire [15:4]ACCEL_Z_SUM_reg;
  wire \ACCEL_Z_SUM_reg[0]_i_1_n_0 ;
  wire \ACCEL_Z_SUM_reg[0]_i_1_n_1 ;
  wire \ACCEL_Z_SUM_reg[0]_i_1_n_2 ;
  wire \ACCEL_Z_SUM_reg[0]_i_1_n_3 ;
  wire \ACCEL_Z_SUM_reg[0]_i_1_n_4 ;
  wire \ACCEL_Z_SUM_reg[0]_i_1_n_5 ;
  wire \ACCEL_Z_SUM_reg[0]_i_1_n_6 ;
  wire \ACCEL_Z_SUM_reg[0]_i_1_n_7 ;
  wire \ACCEL_Z_SUM_reg[12]_i_1_n_1 ;
  wire \ACCEL_Z_SUM_reg[12]_i_1_n_2 ;
  wire \ACCEL_Z_SUM_reg[12]_i_1_n_3 ;
  wire \ACCEL_Z_SUM_reg[12]_i_1_n_4 ;
  wire \ACCEL_Z_SUM_reg[12]_i_1_n_5 ;
  wire \ACCEL_Z_SUM_reg[12]_i_1_n_6 ;
  wire \ACCEL_Z_SUM_reg[12]_i_1_n_7 ;
  wire \ACCEL_Z_SUM_reg[4]_i_1_n_0 ;
  wire \ACCEL_Z_SUM_reg[4]_i_1_n_1 ;
  wire \ACCEL_Z_SUM_reg[4]_i_1_n_2 ;
  wire \ACCEL_Z_SUM_reg[4]_i_1_n_3 ;
  wire \ACCEL_Z_SUM_reg[4]_i_1_n_4 ;
  wire \ACCEL_Z_SUM_reg[4]_i_1_n_5 ;
  wire \ACCEL_Z_SUM_reg[4]_i_1_n_6 ;
  wire \ACCEL_Z_SUM_reg[4]_i_1_n_7 ;
  wire \ACCEL_Z_SUM_reg[8]_i_1_n_0 ;
  wire \ACCEL_Z_SUM_reg[8]_i_1_n_1 ;
  wire \ACCEL_Z_SUM_reg[8]_i_1_n_2 ;
  wire \ACCEL_Z_SUM_reg[8]_i_1_n_3 ;
  wire \ACCEL_Z_SUM_reg[8]_i_1_n_4 ;
  wire \ACCEL_Z_SUM_reg[8]_i_1_n_5 ;
  wire \ACCEL_Z_SUM_reg[8]_i_1_n_6 ;
  wire \ACCEL_Z_SUM_reg[8]_i_1_n_7 ;
  wire \ACCEL_Z_SUM_reg_n_0_[0] ;
  wire \ACCEL_Z_SUM_reg_n_0_[1] ;
  wire \ACCEL_Z_SUM_reg_n_0_[2] ;
  wire \ACCEL_Z_SUM_reg_n_0_[3] ;
  wire Advance_Cmd_Reg_Addr;
  wire Adxl_Conf_Err;
  wire Adxl_Data_Ready;
  wire [0:0]B;
  wire \Cmd_Reg[0][2]_i_1_n_0 ;
  wire \Cmd_Reg[0][4]_i_1_n_0 ;
  wire \Cmd_Reg[0][6]_i_1_n_0 ;
  wire \Cmd_Reg[0][6]_i_3_n_0 ;
  wire \Cmd_Reg[0]_0 ;
  wire [7:2]\Cmd_Reg[1]0_in ;
  wire \Cmd_Reg[1][0]_i_1_n_0 ;
  wire \Cmd_Reg[1][0]_i_2_n_0 ;
  wire \Cmd_Reg[1][1]_i_1_n_0 ;
  wire \Cmd_Reg[1][2]_i_1_n_0 ;
  wire \Cmd_Reg[1][2]_i_2_n_0 ;
  wire \Cmd_Reg[1][4]_i_1_n_0 ;
  wire \Cmd_Reg[1][5]_i_1_n_0 ;
  wire \Cmd_Reg[1][6]_i_2_n_0 ;
  wire \Cmd_Reg[1][6]_i_3_n_0 ;
  wire [7:7]\Cmd_Reg[2] ;
  wire \Cmd_Reg[2][0]_i_1_n_0 ;
  wire \Cmd_Reg[2]_1 ;
  wire \Cmd_Reg_Data_Addr[0]_i_1_n_0 ;
  wire \Cmd_Reg_Data_Addr[0]_i_2_n_0 ;
  wire \Cmd_Reg_Data_Addr[1]_i_1_n_0 ;
  wire \Cmd_Reg_Data_Addr_reg_n_0_[0] ;
  wire \Cmd_Reg_Data_Addr_reg_n_0_[1] ;
  wire [6:1]\Cmd_Reg_reg[0] ;
  wire [6:0]\Cmd_Reg_reg[1] ;
  wire [6:0]\Cmd_Reg_reg[2] ;
  wire \Cnt_Bytes_Rec[0]_i_1_n_0 ;
  wire \Cnt_Bytes_Rec[0]_i_2_n_0 ;
  wire \Cnt_Bytes_Rec[1]_i_1_n_0 ;
  wire \Cnt_Bytes_Rec[1]_i_2_n_0 ;
  wire \Cnt_Bytes_Rec[1]_i_3_n_0 ;
  wire \Cnt_Bytes_Rec[2]_i_1_n_0 ;
  wire \Cnt_Bytes_Rec[2]_i_2_n_0 ;
  wire \Cnt_Bytes_Rec_reg_n_0_[0] ;
  wire \Cnt_Bytes_Rec_reg_n_0_[1] ;
  wire \Cnt_Bytes_Rec_reg_n_0_[2] ;
  wire Cnt_Bytes_Sent1;
  wire \Cnt_Bytes_Sent[0]_i_1_n_0 ;
  wire \Cnt_Bytes_Sent[0]_i_2_n_0 ;
  wire \Cnt_Bytes_Sent[1]_i_1_n_0 ;
  wire \Cnt_Bytes_Sent_reg_n_0_[0] ;
  wire \Cnt_Bytes_Sent_reg_n_0_[1] ;
  wire [3:0]Cnt_Num_Reads;
  wire \Cnt_Num_Reads[0]_i_1_n_0 ;
  wire \Cnt_Num_Reads[1]_i_1_n_0 ;
  wire \Cnt_Num_Reads[2]_i_1_n_0 ;
  wire \Cnt_Num_Reads[3]_i_3_n_0 ;
  wire [10:0]Cnt_SS_Inactive;
  wire Cnt_SS_Inactive0;
  wire \Cnt_SS_Inactive[0]_i_2_n_0 ;
  wire \Cnt_SS_Inactive[10]_i_3_n_0 ;
  wire \Cnt_SS_Inactive[1]_i_2_n_0 ;
  wire \Cnt_SS_Inactive[1]_i_3_n_0 ;
  wire \Cnt_SS_Inactive[6]_i_2_n_0 ;
  wire [10:0]Cnt_SS_Inactive_2;
  wire [6:0]D_Send;
  wire Data_Ready;
  wire Data_Ready_i_1_n_0;
  wire [7:0]\Data_Reg_reg[1] ;
  wire [7:0]\Data_Reg_reg[2] ;
  wire [7:0]\Data_Reg_reg[3] ;
  wire [7:0]\Data_Reg_reg[4] ;
  wire [7:0]\Data_Reg_reg[5] ;
  wire \Data_Reg_reg_n_0_[0][1] ;
  wire \Data_Reg_reg_n_0_[0][2] ;
  wire \Data_Reg_reg_n_0_[0][3] ;
  wire \Data_Reg_reg_n_0_[0][4] ;
  wire \Data_Reg_reg_n_0_[0][5] ;
  wire \Data_Reg_reg_n_0_[0][6] ;
  wire [7:0]Dout;
  wire \FSM_sequential_StC_Adxl_Ctrl[0]_i_2_n_0 ;
  wire \FSM_sequential_StC_Adxl_Ctrl[2]_i_2_n_0 ;
  wire \FSM_sequential_StC_Adxl_Ctrl[3]_i_10_n_0 ;
  wire \FSM_sequential_StC_Adxl_Ctrl[3]_i_11_n_0 ;
  wire \FSM_sequential_StC_Adxl_Ctrl[3]_i_12_n_0 ;
  wire \FSM_sequential_StC_Adxl_Ctrl[3]_i_13_n_0 ;
  wire \FSM_sequential_StC_Adxl_Ctrl[3]_i_1_n_0 ;
  wire \FSM_sequential_StC_Adxl_Ctrl[3]_i_3_n_0 ;
  wire \FSM_sequential_StC_Adxl_Ctrl[3]_i_4_n_0 ;
  wire \FSM_sequential_StC_Adxl_Ctrl[3]_i_5_n_0 ;
  wire \FSM_sequential_StC_Adxl_Ctrl[3]_i_6_n_0 ;
  wire \FSM_sequential_StC_Adxl_Ctrl[3]_i_7_n_0 ;
  wire \FSM_sequential_StC_Adxl_Ctrl[3]_i_8_n_0 ;
  wire \FSM_sequential_StC_Adxl_Ctrl[3]_i_9_n_0 ;
  wire \FSM_sequential_StC_Spi_SendRec[0]_i_2_n_0 ;
  wire \FSM_sequential_StC_Spi_SendRec[1]_i_3_n_0 ;
  wire \FSM_sequential_StC_Spi_Trans[0]_i_1_n_0 ;
  wire \FSM_sequential_StC_Spi_Trans[1]_i_1_n_0 ;
  wire \FSM_sequential_StC_Spi_Trans[2]_i_1_n_0 ;
  wire \FSM_sequential_StC_Spi_Trans[2]_i_2_n_0 ;
  wire \FSM_sequential_StC_Spi_Trans[2]_i_3_n_0 ;
  wire \FSM_sequential_StC_Spi_Trans[2]_i_4_n_0 ;
  wire \FSM_sequential_StC_Spi_Trans[2]_i_5_n_0 ;
  wire \FSM_sequential_StC_Spi_Trans[2]_i_6_n_0 ;
  wire MISO;
  wire MOSI;
  wire RESET;
  wire Reset_Cnt_Bytes;
  wire Reset_Cnt_Num_Reads;
  wire Reset_Sample_Rate_Div;
  wire SCLK;
  wire SPI_Interface_n_0;
  wire SPI_Interface_n_1;
  wire SPI_Interface_n_2;
  wire SPI_RnW;
  wire SS;
  wire SYSCLK;
  wire [16:0]Sample_Rate_Div;
  wire Sample_Rate_Div0_carry__0_n_0;
  wire Sample_Rate_Div0_carry__0_n_1;
  wire Sample_Rate_Div0_carry__0_n_2;
  wire Sample_Rate_Div0_carry__0_n_3;
  wire Sample_Rate_Div0_carry__1_n_0;
  wire Sample_Rate_Div0_carry__1_n_1;
  wire Sample_Rate_Div0_carry__1_n_2;
  wire Sample_Rate_Div0_carry__1_n_3;
  wire Sample_Rate_Div0_carry__2_n_1;
  wire Sample_Rate_Div0_carry__2_n_2;
  wire Sample_Rate_Div0_carry__2_n_3;
  wire Sample_Rate_Div0_carry_n_0;
  wire Sample_Rate_Div0_carry_n_1;
  wire Sample_Rate_Div0_carry_n_2;
  wire Sample_Rate_Div0_carry_n_3;
  wire [16:0]Sample_Rate_Div_3;
  wire Shift_Cmd_Reg;
  wire Shift_Data_Reg;
  wire [3:0]StC_Adxl_Ctrl;
  wire [2:0]StC_Spi_SendRec;
  wire [2:0]StC_Spi_Trans;
  wire [3:0]StN_Adxl_Ctrl__0;
  wire StartSpiSendRec;
  wire [16:1]data0;
  wire [15:0]in;
  wire sel;
  wire [3:3]\NLW_ACCEL_TMP_SUM_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_ACCEL_X_SUM_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_ACCEL_Y_SUM_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_ACCEL_Z_SUM_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:3]NLW_Sample_Rate_Div0_carry__2_CO_UNCONNECTED;

  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_TMP_SUM[0]_i_2 
       (.I0(\Data_Reg_reg[1] [3]),
        .I1(\ACCEL_TMP_SUM_reg_n_0_[3] ),
        .O(\ACCEL_TMP_SUM[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_TMP_SUM[0]_i_3 
       (.I0(\Data_Reg_reg[1] [2]),
        .I1(\ACCEL_TMP_SUM_reg_n_0_[2] ),
        .O(\ACCEL_TMP_SUM[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_TMP_SUM[0]_i_4 
       (.I0(\Data_Reg_reg[1] [1]),
        .I1(\ACCEL_TMP_SUM_reg_n_0_[1] ),
        .O(\ACCEL_TMP_SUM[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_TMP_SUM[0]_i_5 
       (.I0(\Data_Reg_reg[1] [0]),
        .I1(\ACCEL_TMP_SUM_reg_n_0_[0] ),
        .O(\ACCEL_TMP_SUM[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_TMP_SUM[12]_i_2 
       (.I0(Adxl_Conf_Err),
        .I1(ACCEL_TMP_SUM_reg[15]),
        .O(\ACCEL_TMP_SUM[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_TMP_SUM[12]_i_3 
       (.I0(\Data_Reg_reg_n_0_[0][6] ),
        .I1(ACCEL_TMP_SUM_reg[14]),
        .O(\ACCEL_TMP_SUM[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_TMP_SUM[12]_i_4 
       (.I0(\Data_Reg_reg_n_0_[0][5] ),
        .I1(ACCEL_TMP_SUM_reg[13]),
        .O(\ACCEL_TMP_SUM[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_TMP_SUM[12]_i_5 
       (.I0(\Data_Reg_reg_n_0_[0][4] ),
        .I1(ACCEL_TMP_SUM_reg[12]),
        .O(\ACCEL_TMP_SUM[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_TMP_SUM[4]_i_2 
       (.I0(\Data_Reg_reg[1] [7]),
        .I1(ACCEL_TMP_SUM_reg[7]),
        .O(\ACCEL_TMP_SUM[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_TMP_SUM[4]_i_3 
       (.I0(\Data_Reg_reg[1] [6]),
        .I1(ACCEL_TMP_SUM_reg[6]),
        .O(\ACCEL_TMP_SUM[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_TMP_SUM[4]_i_4 
       (.I0(\Data_Reg_reg[1] [5]),
        .I1(ACCEL_TMP_SUM_reg[5]),
        .O(\ACCEL_TMP_SUM[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_TMP_SUM[4]_i_5 
       (.I0(\Data_Reg_reg[1] [4]),
        .I1(ACCEL_TMP_SUM_reg[4]),
        .O(\ACCEL_TMP_SUM[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_TMP_SUM[8]_i_2 
       (.I0(\Data_Reg_reg_n_0_[0][3] ),
        .I1(ACCEL_TMP_SUM_reg[11]),
        .O(\ACCEL_TMP_SUM[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_TMP_SUM[8]_i_3 
       (.I0(\Data_Reg_reg_n_0_[0][2] ),
        .I1(ACCEL_TMP_SUM_reg[10]),
        .O(\ACCEL_TMP_SUM[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_TMP_SUM[8]_i_4 
       (.I0(\Data_Reg_reg_n_0_[0][1] ),
        .I1(ACCEL_TMP_SUM_reg[9]),
        .O(\ACCEL_TMP_SUM[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_TMP_SUM[8]_i_5 
       (.I0(Adxl_Data_Ready),
        .I1(ACCEL_TMP_SUM_reg[8]),
        .O(\ACCEL_TMP_SUM[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_TMP_SUM_reg[0] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_TMP_SUM_reg[0]_i_1_n_7 ),
        .Q(\ACCEL_TMP_SUM_reg_n_0_[0] ),
        .R(ACCEL_X_SUM0));
  CARRY4 \ACCEL_TMP_SUM_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\ACCEL_TMP_SUM_reg[0]_i_1_n_0 ,\ACCEL_TMP_SUM_reg[0]_i_1_n_1 ,\ACCEL_TMP_SUM_reg[0]_i_1_n_2 ,\ACCEL_TMP_SUM_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\Data_Reg_reg[1] [3:0]),
        .O({\ACCEL_TMP_SUM_reg[0]_i_1_n_4 ,\ACCEL_TMP_SUM_reg[0]_i_1_n_5 ,\ACCEL_TMP_SUM_reg[0]_i_1_n_6 ,\ACCEL_TMP_SUM_reg[0]_i_1_n_7 }),
        .S({\ACCEL_TMP_SUM[0]_i_2_n_0 ,\ACCEL_TMP_SUM[0]_i_3_n_0 ,\ACCEL_TMP_SUM[0]_i_4_n_0 ,\ACCEL_TMP_SUM[0]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_TMP_SUM_reg[10] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_TMP_SUM_reg[8]_i_1_n_5 ),
        .Q(ACCEL_TMP_SUM_reg[10]),
        .R(ACCEL_X_SUM0));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_TMP_SUM_reg[11] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_TMP_SUM_reg[8]_i_1_n_4 ),
        .Q(ACCEL_TMP_SUM_reg[11]),
        .R(ACCEL_X_SUM0));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_TMP_SUM_reg[12] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_TMP_SUM_reg[12]_i_1_n_7 ),
        .Q(ACCEL_TMP_SUM_reg[12]),
        .R(ACCEL_X_SUM0));
  CARRY4 \ACCEL_TMP_SUM_reg[12]_i_1 
       (.CI(\ACCEL_TMP_SUM_reg[8]_i_1_n_0 ),
        .CO({\NLW_ACCEL_TMP_SUM_reg[12]_i_1_CO_UNCONNECTED [3],\ACCEL_TMP_SUM_reg[12]_i_1_n_1 ,\ACCEL_TMP_SUM_reg[12]_i_1_n_2 ,\ACCEL_TMP_SUM_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\Data_Reg_reg_n_0_[0][6] ,\Data_Reg_reg_n_0_[0][5] ,\Data_Reg_reg_n_0_[0][4] }),
        .O({\ACCEL_TMP_SUM_reg[12]_i_1_n_4 ,\ACCEL_TMP_SUM_reg[12]_i_1_n_5 ,\ACCEL_TMP_SUM_reg[12]_i_1_n_6 ,\ACCEL_TMP_SUM_reg[12]_i_1_n_7 }),
        .S({\ACCEL_TMP_SUM[12]_i_2_n_0 ,\ACCEL_TMP_SUM[12]_i_3_n_0 ,\ACCEL_TMP_SUM[12]_i_4_n_0 ,\ACCEL_TMP_SUM[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_TMP_SUM_reg[13] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_TMP_SUM_reg[12]_i_1_n_6 ),
        .Q(ACCEL_TMP_SUM_reg[13]),
        .R(ACCEL_X_SUM0));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_TMP_SUM_reg[14] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_TMP_SUM_reg[12]_i_1_n_5 ),
        .Q(ACCEL_TMP_SUM_reg[14]),
        .R(ACCEL_X_SUM0));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_TMP_SUM_reg[15] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_TMP_SUM_reg[12]_i_1_n_4 ),
        .Q(ACCEL_TMP_SUM_reg[15]),
        .R(ACCEL_X_SUM0));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_TMP_SUM_reg[1] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_TMP_SUM_reg[0]_i_1_n_6 ),
        .Q(\ACCEL_TMP_SUM_reg_n_0_[1] ),
        .R(ACCEL_X_SUM0));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_TMP_SUM_reg[2] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_TMP_SUM_reg[0]_i_1_n_5 ),
        .Q(\ACCEL_TMP_SUM_reg_n_0_[2] ),
        .R(ACCEL_X_SUM0));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_TMP_SUM_reg[3] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_TMP_SUM_reg[0]_i_1_n_4 ),
        .Q(\ACCEL_TMP_SUM_reg_n_0_[3] ),
        .R(ACCEL_X_SUM0));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_TMP_SUM_reg[4] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_TMP_SUM_reg[4]_i_1_n_7 ),
        .Q(ACCEL_TMP_SUM_reg[4]),
        .R(ACCEL_X_SUM0));
  CARRY4 \ACCEL_TMP_SUM_reg[4]_i_1 
       (.CI(\ACCEL_TMP_SUM_reg[0]_i_1_n_0 ),
        .CO({\ACCEL_TMP_SUM_reg[4]_i_1_n_0 ,\ACCEL_TMP_SUM_reg[4]_i_1_n_1 ,\ACCEL_TMP_SUM_reg[4]_i_1_n_2 ,\ACCEL_TMP_SUM_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\Data_Reg_reg[1] [7:4]),
        .O({\ACCEL_TMP_SUM_reg[4]_i_1_n_4 ,\ACCEL_TMP_SUM_reg[4]_i_1_n_5 ,\ACCEL_TMP_SUM_reg[4]_i_1_n_6 ,\ACCEL_TMP_SUM_reg[4]_i_1_n_7 }),
        .S({\ACCEL_TMP_SUM[4]_i_2_n_0 ,\ACCEL_TMP_SUM[4]_i_3_n_0 ,\ACCEL_TMP_SUM[4]_i_4_n_0 ,\ACCEL_TMP_SUM[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_TMP_SUM_reg[5] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_TMP_SUM_reg[4]_i_1_n_6 ),
        .Q(ACCEL_TMP_SUM_reg[5]),
        .R(ACCEL_X_SUM0));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_TMP_SUM_reg[6] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_TMP_SUM_reg[4]_i_1_n_5 ),
        .Q(ACCEL_TMP_SUM_reg[6]),
        .R(ACCEL_X_SUM0));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_TMP_SUM_reg[7] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_TMP_SUM_reg[4]_i_1_n_4 ),
        .Q(ACCEL_TMP_SUM_reg[7]),
        .R(ACCEL_X_SUM0));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_TMP_SUM_reg[8] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_TMP_SUM_reg[8]_i_1_n_7 ),
        .Q(ACCEL_TMP_SUM_reg[8]),
        .R(ACCEL_X_SUM0));
  CARRY4 \ACCEL_TMP_SUM_reg[8]_i_1 
       (.CI(\ACCEL_TMP_SUM_reg[4]_i_1_n_0 ),
        .CO({\ACCEL_TMP_SUM_reg[8]_i_1_n_0 ,\ACCEL_TMP_SUM_reg[8]_i_1_n_1 ,\ACCEL_TMP_SUM_reg[8]_i_1_n_2 ,\ACCEL_TMP_SUM_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\Data_Reg_reg_n_0_[0][3] ,\Data_Reg_reg_n_0_[0][2] ,\Data_Reg_reg_n_0_[0][1] ,Adxl_Data_Ready}),
        .O({\ACCEL_TMP_SUM_reg[8]_i_1_n_4 ,\ACCEL_TMP_SUM_reg[8]_i_1_n_5 ,\ACCEL_TMP_SUM_reg[8]_i_1_n_6 ,\ACCEL_TMP_SUM_reg[8]_i_1_n_7 }),
        .S({\ACCEL_TMP_SUM[8]_i_2_n_0 ,\ACCEL_TMP_SUM[8]_i_3_n_0 ,\ACCEL_TMP_SUM[8]_i_4_n_0 ,\ACCEL_TMP_SUM[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_TMP_SUM_reg[9] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_TMP_SUM_reg[8]_i_1_n_6 ),
        .Q(ACCEL_TMP_SUM_reg[9]),
        .R(ACCEL_X_SUM0));
  FDRE \ACCEL_TMP_reg[0] 
       (.C(SYSCLK),
        .CE(StC_Adxl_Ctrl[3]),
        .D(ACCEL_TMP_SUM_reg[4]),
        .Q(ACCEL_TMP[0]),
        .R(RESET));
  FDRE \ACCEL_TMP_reg[10] 
       (.C(SYSCLK),
        .CE(StC_Adxl_Ctrl[3]),
        .D(ACCEL_TMP_SUM_reg[14]),
        .Q(ACCEL_TMP[10]),
        .R(RESET));
  FDRE \ACCEL_TMP_reg[11] 
       (.C(SYSCLK),
        .CE(StC_Adxl_Ctrl[3]),
        .D(ACCEL_TMP_SUM_reg[15]),
        .Q(ACCEL_TMP[11]),
        .R(RESET));
  FDRE \ACCEL_TMP_reg[1] 
       (.C(SYSCLK),
        .CE(StC_Adxl_Ctrl[3]),
        .D(ACCEL_TMP_SUM_reg[5]),
        .Q(ACCEL_TMP[1]),
        .R(RESET));
  FDRE \ACCEL_TMP_reg[2] 
       (.C(SYSCLK),
        .CE(StC_Adxl_Ctrl[3]),
        .D(ACCEL_TMP_SUM_reg[6]),
        .Q(ACCEL_TMP[2]),
        .R(RESET));
  FDRE \ACCEL_TMP_reg[3] 
       (.C(SYSCLK),
        .CE(StC_Adxl_Ctrl[3]),
        .D(ACCEL_TMP_SUM_reg[7]),
        .Q(ACCEL_TMP[3]),
        .R(RESET));
  FDRE \ACCEL_TMP_reg[4] 
       (.C(SYSCLK),
        .CE(StC_Adxl_Ctrl[3]),
        .D(ACCEL_TMP_SUM_reg[8]),
        .Q(ACCEL_TMP[4]),
        .R(RESET));
  FDRE \ACCEL_TMP_reg[5] 
       (.C(SYSCLK),
        .CE(StC_Adxl_Ctrl[3]),
        .D(ACCEL_TMP_SUM_reg[9]),
        .Q(ACCEL_TMP[5]),
        .R(RESET));
  FDRE \ACCEL_TMP_reg[6] 
       (.C(SYSCLK),
        .CE(StC_Adxl_Ctrl[3]),
        .D(ACCEL_TMP_SUM_reg[10]),
        .Q(ACCEL_TMP[6]),
        .R(RESET));
  FDRE \ACCEL_TMP_reg[7] 
       (.C(SYSCLK),
        .CE(StC_Adxl_Ctrl[3]),
        .D(ACCEL_TMP_SUM_reg[11]),
        .Q(ACCEL_TMP[7]),
        .R(RESET));
  FDRE \ACCEL_TMP_reg[8] 
       (.C(SYSCLK),
        .CE(StC_Adxl_Ctrl[3]),
        .D(ACCEL_TMP_SUM_reg[12]),
        .Q(ACCEL_TMP[8]),
        .R(RESET));
  FDRE \ACCEL_TMP_reg[9] 
       (.C(SYSCLK),
        .CE(StC_Adxl_Ctrl[3]),
        .D(ACCEL_TMP_SUM_reg[13]),
        .Q(ACCEL_TMP[9]),
        .R(RESET));
  LUT2 #(
    .INIT(4'hE)) 
    \ACCEL_X_SUM[0]_i_1 
       (.I0(RESET),
        .I1(StC_Adxl_Ctrl[3]),
        .O(ACCEL_X_SUM0));
  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_X_SUM[0]_i_3 
       (.I0(in[3]),
        .I1(\ACCEL_X_SUM_reg_n_0_[3] ),
        .O(\ACCEL_X_SUM[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_X_SUM[0]_i_4 
       (.I0(in[2]),
        .I1(\ACCEL_X_SUM_reg_n_0_[2] ),
        .O(\ACCEL_X_SUM[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_X_SUM[0]_i_5 
       (.I0(in[1]),
        .I1(\ACCEL_X_SUM_reg_n_0_[1] ),
        .O(\ACCEL_X_SUM[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_X_SUM[0]_i_6 
       (.I0(in[0]),
        .I1(\ACCEL_X_SUM_reg_n_0_[0] ),
        .O(\ACCEL_X_SUM[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_X_SUM[12]_i_2 
       (.I0(in[15]),
        .I1(ACCEL_X_SUM_reg[15]),
        .O(\ACCEL_X_SUM[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_X_SUM[12]_i_3 
       (.I0(in[14]),
        .I1(ACCEL_X_SUM_reg[14]),
        .O(\ACCEL_X_SUM[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_X_SUM[12]_i_4 
       (.I0(in[13]),
        .I1(ACCEL_X_SUM_reg[13]),
        .O(\ACCEL_X_SUM[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_X_SUM[12]_i_5 
       (.I0(in[12]),
        .I1(ACCEL_X_SUM_reg[12]),
        .O(\ACCEL_X_SUM[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_X_SUM[4]_i_2 
       (.I0(in[7]),
        .I1(ACCEL_X_SUM_reg[7]),
        .O(\ACCEL_X_SUM[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_X_SUM[4]_i_3 
       (.I0(in[6]),
        .I1(ACCEL_X_SUM_reg[6]),
        .O(\ACCEL_X_SUM[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_X_SUM[4]_i_4 
       (.I0(in[5]),
        .I1(ACCEL_X_SUM_reg[5]),
        .O(\ACCEL_X_SUM[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_X_SUM[4]_i_5 
       (.I0(in[4]),
        .I1(ACCEL_X_SUM_reg[4]),
        .O(\ACCEL_X_SUM[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_X_SUM[8]_i_2 
       (.I0(in[11]),
        .I1(ACCEL_X_SUM_reg[11]),
        .O(\ACCEL_X_SUM[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_X_SUM[8]_i_3 
       (.I0(in[10]),
        .I1(ACCEL_X_SUM_reg[10]),
        .O(\ACCEL_X_SUM[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_X_SUM[8]_i_4 
       (.I0(in[9]),
        .I1(ACCEL_X_SUM_reg[9]),
        .O(\ACCEL_X_SUM[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_X_SUM[8]_i_5 
       (.I0(in[8]),
        .I1(ACCEL_X_SUM_reg[8]),
        .O(\ACCEL_X_SUM[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_X_SUM_reg[0] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_X_SUM_reg[0]_i_2_n_7 ),
        .Q(\ACCEL_X_SUM_reg_n_0_[0] ),
        .R(ACCEL_X_SUM0));
  CARRY4 \ACCEL_X_SUM_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\ACCEL_X_SUM_reg[0]_i_2_n_0 ,\ACCEL_X_SUM_reg[0]_i_2_n_1 ,\ACCEL_X_SUM_reg[0]_i_2_n_2 ,\ACCEL_X_SUM_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(in[3:0]),
        .O({\ACCEL_X_SUM_reg[0]_i_2_n_4 ,\ACCEL_X_SUM_reg[0]_i_2_n_5 ,\ACCEL_X_SUM_reg[0]_i_2_n_6 ,\ACCEL_X_SUM_reg[0]_i_2_n_7 }),
        .S({\ACCEL_X_SUM[0]_i_3_n_0 ,\ACCEL_X_SUM[0]_i_4_n_0 ,\ACCEL_X_SUM[0]_i_5_n_0 ,\ACCEL_X_SUM[0]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_X_SUM_reg[10] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_X_SUM_reg[8]_i_1_n_5 ),
        .Q(ACCEL_X_SUM_reg[10]),
        .R(ACCEL_X_SUM0));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_X_SUM_reg[11] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_X_SUM_reg[8]_i_1_n_4 ),
        .Q(ACCEL_X_SUM_reg[11]),
        .R(ACCEL_X_SUM0));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_X_SUM_reg[12] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_X_SUM_reg[12]_i_1_n_7 ),
        .Q(ACCEL_X_SUM_reg[12]),
        .R(ACCEL_X_SUM0));
  CARRY4 \ACCEL_X_SUM_reg[12]_i_1 
       (.CI(\ACCEL_X_SUM_reg[8]_i_1_n_0 ),
        .CO({\NLW_ACCEL_X_SUM_reg[12]_i_1_CO_UNCONNECTED [3],\ACCEL_X_SUM_reg[12]_i_1_n_1 ,\ACCEL_X_SUM_reg[12]_i_1_n_2 ,\ACCEL_X_SUM_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,in[14:12]}),
        .O({\ACCEL_X_SUM_reg[12]_i_1_n_4 ,\ACCEL_X_SUM_reg[12]_i_1_n_5 ,\ACCEL_X_SUM_reg[12]_i_1_n_6 ,\ACCEL_X_SUM_reg[12]_i_1_n_7 }),
        .S({\ACCEL_X_SUM[12]_i_2_n_0 ,\ACCEL_X_SUM[12]_i_3_n_0 ,\ACCEL_X_SUM[12]_i_4_n_0 ,\ACCEL_X_SUM[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_X_SUM_reg[13] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_X_SUM_reg[12]_i_1_n_6 ),
        .Q(ACCEL_X_SUM_reg[13]),
        .R(ACCEL_X_SUM0));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_X_SUM_reg[14] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_X_SUM_reg[12]_i_1_n_5 ),
        .Q(ACCEL_X_SUM_reg[14]),
        .R(ACCEL_X_SUM0));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_X_SUM_reg[15] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_X_SUM_reg[12]_i_1_n_4 ),
        .Q(ACCEL_X_SUM_reg[15]),
        .R(ACCEL_X_SUM0));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_X_SUM_reg[1] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_X_SUM_reg[0]_i_2_n_6 ),
        .Q(\ACCEL_X_SUM_reg_n_0_[1] ),
        .R(ACCEL_X_SUM0));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_X_SUM_reg[2] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_X_SUM_reg[0]_i_2_n_5 ),
        .Q(\ACCEL_X_SUM_reg_n_0_[2] ),
        .R(ACCEL_X_SUM0));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_X_SUM_reg[3] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_X_SUM_reg[0]_i_2_n_4 ),
        .Q(\ACCEL_X_SUM_reg_n_0_[3] ),
        .R(ACCEL_X_SUM0));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_X_SUM_reg[4] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_X_SUM_reg[4]_i_1_n_7 ),
        .Q(ACCEL_X_SUM_reg[4]),
        .R(ACCEL_X_SUM0));
  CARRY4 \ACCEL_X_SUM_reg[4]_i_1 
       (.CI(\ACCEL_X_SUM_reg[0]_i_2_n_0 ),
        .CO({\ACCEL_X_SUM_reg[4]_i_1_n_0 ,\ACCEL_X_SUM_reg[4]_i_1_n_1 ,\ACCEL_X_SUM_reg[4]_i_1_n_2 ,\ACCEL_X_SUM_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[7:4]),
        .O({\ACCEL_X_SUM_reg[4]_i_1_n_4 ,\ACCEL_X_SUM_reg[4]_i_1_n_5 ,\ACCEL_X_SUM_reg[4]_i_1_n_6 ,\ACCEL_X_SUM_reg[4]_i_1_n_7 }),
        .S({\ACCEL_X_SUM[4]_i_2_n_0 ,\ACCEL_X_SUM[4]_i_3_n_0 ,\ACCEL_X_SUM[4]_i_4_n_0 ,\ACCEL_X_SUM[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_X_SUM_reg[5] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_X_SUM_reg[4]_i_1_n_6 ),
        .Q(ACCEL_X_SUM_reg[5]),
        .R(ACCEL_X_SUM0));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_X_SUM_reg[6] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_X_SUM_reg[4]_i_1_n_5 ),
        .Q(ACCEL_X_SUM_reg[6]),
        .R(ACCEL_X_SUM0));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_X_SUM_reg[7] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_X_SUM_reg[4]_i_1_n_4 ),
        .Q(ACCEL_X_SUM_reg[7]),
        .R(ACCEL_X_SUM0));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_X_SUM_reg[8] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_X_SUM_reg[8]_i_1_n_7 ),
        .Q(ACCEL_X_SUM_reg[8]),
        .R(ACCEL_X_SUM0));
  CARRY4 \ACCEL_X_SUM_reg[8]_i_1 
       (.CI(\ACCEL_X_SUM_reg[4]_i_1_n_0 ),
        .CO({\ACCEL_X_SUM_reg[8]_i_1_n_0 ,\ACCEL_X_SUM_reg[8]_i_1_n_1 ,\ACCEL_X_SUM_reg[8]_i_1_n_2 ,\ACCEL_X_SUM_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(in[11:8]),
        .O({\ACCEL_X_SUM_reg[8]_i_1_n_4 ,\ACCEL_X_SUM_reg[8]_i_1_n_5 ,\ACCEL_X_SUM_reg[8]_i_1_n_6 ,\ACCEL_X_SUM_reg[8]_i_1_n_7 }),
        .S({\ACCEL_X_SUM[8]_i_2_n_0 ,\ACCEL_X_SUM[8]_i_3_n_0 ,\ACCEL_X_SUM[8]_i_4_n_0 ,\ACCEL_X_SUM[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_X_SUM_reg[9] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_X_SUM_reg[8]_i_1_n_6 ),
        .Q(ACCEL_X_SUM_reg[9]),
        .R(ACCEL_X_SUM0));
  FDRE \ACCEL_X_reg[0] 
       (.C(SYSCLK),
        .CE(StC_Adxl_Ctrl[3]),
        .D(ACCEL_X_SUM_reg[4]),
        .Q(ACCEL_X[0]),
        .R(RESET));
  FDRE \ACCEL_X_reg[10] 
       (.C(SYSCLK),
        .CE(StC_Adxl_Ctrl[3]),
        .D(ACCEL_X_SUM_reg[14]),
        .Q(ACCEL_X[10]),
        .R(RESET));
  FDRE \ACCEL_X_reg[11] 
       (.C(SYSCLK),
        .CE(StC_Adxl_Ctrl[3]),
        .D(ACCEL_X_SUM_reg[15]),
        .Q(ACCEL_X[11]),
        .R(RESET));
  FDRE \ACCEL_X_reg[1] 
       (.C(SYSCLK),
        .CE(StC_Adxl_Ctrl[3]),
        .D(ACCEL_X_SUM_reg[5]),
        .Q(ACCEL_X[1]),
        .R(RESET));
  FDRE \ACCEL_X_reg[2] 
       (.C(SYSCLK),
        .CE(StC_Adxl_Ctrl[3]),
        .D(ACCEL_X_SUM_reg[6]),
        .Q(ACCEL_X[2]),
        .R(RESET));
  FDRE \ACCEL_X_reg[3] 
       (.C(SYSCLK),
        .CE(StC_Adxl_Ctrl[3]),
        .D(ACCEL_X_SUM_reg[7]),
        .Q(ACCEL_X[3]),
        .R(RESET));
  FDRE \ACCEL_X_reg[4] 
       (.C(SYSCLK),
        .CE(StC_Adxl_Ctrl[3]),
        .D(ACCEL_X_SUM_reg[8]),
        .Q(ACCEL_X[4]),
        .R(RESET));
  FDRE \ACCEL_X_reg[5] 
       (.C(SYSCLK),
        .CE(StC_Adxl_Ctrl[3]),
        .D(ACCEL_X_SUM_reg[9]),
        .Q(ACCEL_X[5]),
        .R(RESET));
  FDRE \ACCEL_X_reg[6] 
       (.C(SYSCLK),
        .CE(StC_Adxl_Ctrl[3]),
        .D(ACCEL_X_SUM_reg[10]),
        .Q(ACCEL_X[6]),
        .R(RESET));
  FDRE \ACCEL_X_reg[7] 
       (.C(SYSCLK),
        .CE(StC_Adxl_Ctrl[3]),
        .D(ACCEL_X_SUM_reg[11]),
        .Q(ACCEL_X[7]),
        .R(RESET));
  FDRE \ACCEL_X_reg[8] 
       (.C(SYSCLK),
        .CE(StC_Adxl_Ctrl[3]),
        .D(ACCEL_X_SUM_reg[12]),
        .Q(ACCEL_X[8]),
        .R(RESET));
  FDRE \ACCEL_X_reg[9] 
       (.C(SYSCLK),
        .CE(StC_Adxl_Ctrl[3]),
        .D(ACCEL_X_SUM_reg[13]),
        .Q(ACCEL_X[9]),
        .R(RESET));
  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_Y_SUM[0]_i_2 
       (.I0(\Data_Reg_reg[5] [3]),
        .I1(\ACCEL_Y_SUM_reg_n_0_[3] ),
        .O(\ACCEL_Y_SUM[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_Y_SUM[0]_i_3 
       (.I0(\Data_Reg_reg[5] [2]),
        .I1(\ACCEL_Y_SUM_reg_n_0_[2] ),
        .O(\ACCEL_Y_SUM[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_Y_SUM[0]_i_4 
       (.I0(\Data_Reg_reg[5] [1]),
        .I1(\ACCEL_Y_SUM_reg_n_0_[1] ),
        .O(\ACCEL_Y_SUM[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_Y_SUM[0]_i_5 
       (.I0(\Data_Reg_reg[5] [0]),
        .I1(\ACCEL_Y_SUM_reg_n_0_[0] ),
        .O(\ACCEL_Y_SUM[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_Y_SUM[12]_i_2 
       (.I0(\Data_Reg_reg[4] [7]),
        .I1(ACCEL_Y_SUM_reg[15]),
        .O(\ACCEL_Y_SUM[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_Y_SUM[12]_i_3 
       (.I0(\Data_Reg_reg[4] [6]),
        .I1(ACCEL_Y_SUM_reg[14]),
        .O(\ACCEL_Y_SUM[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_Y_SUM[12]_i_4 
       (.I0(\Data_Reg_reg[4] [5]),
        .I1(ACCEL_Y_SUM_reg[13]),
        .O(\ACCEL_Y_SUM[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_Y_SUM[12]_i_5 
       (.I0(\Data_Reg_reg[4] [4]),
        .I1(ACCEL_Y_SUM_reg[12]),
        .O(\ACCEL_Y_SUM[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_Y_SUM[4]_i_2 
       (.I0(\Data_Reg_reg[5] [7]),
        .I1(ACCEL_Y_SUM_reg[7]),
        .O(\ACCEL_Y_SUM[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_Y_SUM[4]_i_3 
       (.I0(\Data_Reg_reg[5] [6]),
        .I1(ACCEL_Y_SUM_reg[6]),
        .O(\ACCEL_Y_SUM[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_Y_SUM[4]_i_4 
       (.I0(\Data_Reg_reg[5] [5]),
        .I1(ACCEL_Y_SUM_reg[5]),
        .O(\ACCEL_Y_SUM[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_Y_SUM[4]_i_5 
       (.I0(\Data_Reg_reg[5] [4]),
        .I1(ACCEL_Y_SUM_reg[4]),
        .O(\ACCEL_Y_SUM[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_Y_SUM[8]_i_2 
       (.I0(\Data_Reg_reg[4] [3]),
        .I1(ACCEL_Y_SUM_reg[11]),
        .O(\ACCEL_Y_SUM[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_Y_SUM[8]_i_3 
       (.I0(\Data_Reg_reg[4] [2]),
        .I1(ACCEL_Y_SUM_reg[10]),
        .O(\ACCEL_Y_SUM[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_Y_SUM[8]_i_4 
       (.I0(\Data_Reg_reg[4] [1]),
        .I1(ACCEL_Y_SUM_reg[9]),
        .O(\ACCEL_Y_SUM[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_Y_SUM[8]_i_5 
       (.I0(\Data_Reg_reg[4] [0]),
        .I1(ACCEL_Y_SUM_reg[8]),
        .O(\ACCEL_Y_SUM[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_Y_SUM_reg[0] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_Y_SUM_reg[0]_i_1_n_7 ),
        .Q(\ACCEL_Y_SUM_reg_n_0_[0] ),
        .R(ACCEL_X_SUM0));
  CARRY4 \ACCEL_Y_SUM_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\ACCEL_Y_SUM_reg[0]_i_1_n_0 ,\ACCEL_Y_SUM_reg[0]_i_1_n_1 ,\ACCEL_Y_SUM_reg[0]_i_1_n_2 ,\ACCEL_Y_SUM_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\Data_Reg_reg[5] [3:0]),
        .O({\ACCEL_Y_SUM_reg[0]_i_1_n_4 ,\ACCEL_Y_SUM_reg[0]_i_1_n_5 ,\ACCEL_Y_SUM_reg[0]_i_1_n_6 ,\ACCEL_Y_SUM_reg[0]_i_1_n_7 }),
        .S({\ACCEL_Y_SUM[0]_i_2_n_0 ,\ACCEL_Y_SUM[0]_i_3_n_0 ,\ACCEL_Y_SUM[0]_i_4_n_0 ,\ACCEL_Y_SUM[0]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_Y_SUM_reg[10] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_Y_SUM_reg[8]_i_1_n_5 ),
        .Q(ACCEL_Y_SUM_reg[10]),
        .R(ACCEL_X_SUM0));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_Y_SUM_reg[11] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_Y_SUM_reg[8]_i_1_n_4 ),
        .Q(ACCEL_Y_SUM_reg[11]),
        .R(ACCEL_X_SUM0));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_Y_SUM_reg[12] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_Y_SUM_reg[12]_i_1_n_7 ),
        .Q(ACCEL_Y_SUM_reg[12]),
        .R(ACCEL_X_SUM0));
  CARRY4 \ACCEL_Y_SUM_reg[12]_i_1 
       (.CI(\ACCEL_Y_SUM_reg[8]_i_1_n_0 ),
        .CO({\NLW_ACCEL_Y_SUM_reg[12]_i_1_CO_UNCONNECTED [3],\ACCEL_Y_SUM_reg[12]_i_1_n_1 ,\ACCEL_Y_SUM_reg[12]_i_1_n_2 ,\ACCEL_Y_SUM_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\Data_Reg_reg[4] [6:4]}),
        .O({\ACCEL_Y_SUM_reg[12]_i_1_n_4 ,\ACCEL_Y_SUM_reg[12]_i_1_n_5 ,\ACCEL_Y_SUM_reg[12]_i_1_n_6 ,\ACCEL_Y_SUM_reg[12]_i_1_n_7 }),
        .S({\ACCEL_Y_SUM[12]_i_2_n_0 ,\ACCEL_Y_SUM[12]_i_3_n_0 ,\ACCEL_Y_SUM[12]_i_4_n_0 ,\ACCEL_Y_SUM[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_Y_SUM_reg[13] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_Y_SUM_reg[12]_i_1_n_6 ),
        .Q(ACCEL_Y_SUM_reg[13]),
        .R(ACCEL_X_SUM0));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_Y_SUM_reg[14] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_Y_SUM_reg[12]_i_1_n_5 ),
        .Q(ACCEL_Y_SUM_reg[14]),
        .R(ACCEL_X_SUM0));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_Y_SUM_reg[15] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_Y_SUM_reg[12]_i_1_n_4 ),
        .Q(ACCEL_Y_SUM_reg[15]),
        .R(ACCEL_X_SUM0));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_Y_SUM_reg[1] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_Y_SUM_reg[0]_i_1_n_6 ),
        .Q(\ACCEL_Y_SUM_reg_n_0_[1] ),
        .R(ACCEL_X_SUM0));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_Y_SUM_reg[2] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_Y_SUM_reg[0]_i_1_n_5 ),
        .Q(\ACCEL_Y_SUM_reg_n_0_[2] ),
        .R(ACCEL_X_SUM0));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_Y_SUM_reg[3] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_Y_SUM_reg[0]_i_1_n_4 ),
        .Q(\ACCEL_Y_SUM_reg_n_0_[3] ),
        .R(ACCEL_X_SUM0));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_Y_SUM_reg[4] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_Y_SUM_reg[4]_i_1_n_7 ),
        .Q(ACCEL_Y_SUM_reg[4]),
        .R(ACCEL_X_SUM0));
  CARRY4 \ACCEL_Y_SUM_reg[4]_i_1 
       (.CI(\ACCEL_Y_SUM_reg[0]_i_1_n_0 ),
        .CO({\ACCEL_Y_SUM_reg[4]_i_1_n_0 ,\ACCEL_Y_SUM_reg[4]_i_1_n_1 ,\ACCEL_Y_SUM_reg[4]_i_1_n_2 ,\ACCEL_Y_SUM_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\Data_Reg_reg[5] [7:4]),
        .O({\ACCEL_Y_SUM_reg[4]_i_1_n_4 ,\ACCEL_Y_SUM_reg[4]_i_1_n_5 ,\ACCEL_Y_SUM_reg[4]_i_1_n_6 ,\ACCEL_Y_SUM_reg[4]_i_1_n_7 }),
        .S({\ACCEL_Y_SUM[4]_i_2_n_0 ,\ACCEL_Y_SUM[4]_i_3_n_0 ,\ACCEL_Y_SUM[4]_i_4_n_0 ,\ACCEL_Y_SUM[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_Y_SUM_reg[5] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_Y_SUM_reg[4]_i_1_n_6 ),
        .Q(ACCEL_Y_SUM_reg[5]),
        .R(ACCEL_X_SUM0));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_Y_SUM_reg[6] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_Y_SUM_reg[4]_i_1_n_5 ),
        .Q(ACCEL_Y_SUM_reg[6]),
        .R(ACCEL_X_SUM0));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_Y_SUM_reg[7] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_Y_SUM_reg[4]_i_1_n_4 ),
        .Q(ACCEL_Y_SUM_reg[7]),
        .R(ACCEL_X_SUM0));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_Y_SUM_reg[8] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_Y_SUM_reg[8]_i_1_n_7 ),
        .Q(ACCEL_Y_SUM_reg[8]),
        .R(ACCEL_X_SUM0));
  CARRY4 \ACCEL_Y_SUM_reg[8]_i_1 
       (.CI(\ACCEL_Y_SUM_reg[4]_i_1_n_0 ),
        .CO({\ACCEL_Y_SUM_reg[8]_i_1_n_0 ,\ACCEL_Y_SUM_reg[8]_i_1_n_1 ,\ACCEL_Y_SUM_reg[8]_i_1_n_2 ,\ACCEL_Y_SUM_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\Data_Reg_reg[4] [3:0]),
        .O({\ACCEL_Y_SUM_reg[8]_i_1_n_4 ,\ACCEL_Y_SUM_reg[8]_i_1_n_5 ,\ACCEL_Y_SUM_reg[8]_i_1_n_6 ,\ACCEL_Y_SUM_reg[8]_i_1_n_7 }),
        .S({\ACCEL_Y_SUM[8]_i_2_n_0 ,\ACCEL_Y_SUM[8]_i_3_n_0 ,\ACCEL_Y_SUM[8]_i_4_n_0 ,\ACCEL_Y_SUM[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_Y_SUM_reg[9] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_Y_SUM_reg[8]_i_1_n_6 ),
        .Q(ACCEL_Y_SUM_reg[9]),
        .R(ACCEL_X_SUM0));
  FDRE \ACCEL_Y_reg[0] 
       (.C(SYSCLK),
        .CE(StC_Adxl_Ctrl[3]),
        .D(ACCEL_Y_SUM_reg[4]),
        .Q(ACCEL_Y[0]),
        .R(RESET));
  FDRE \ACCEL_Y_reg[10] 
       (.C(SYSCLK),
        .CE(StC_Adxl_Ctrl[3]),
        .D(ACCEL_Y_SUM_reg[14]),
        .Q(ACCEL_Y[10]),
        .R(RESET));
  FDRE \ACCEL_Y_reg[11] 
       (.C(SYSCLK),
        .CE(StC_Adxl_Ctrl[3]),
        .D(ACCEL_Y_SUM_reg[15]),
        .Q(ACCEL_Y[11]),
        .R(RESET));
  FDRE \ACCEL_Y_reg[1] 
       (.C(SYSCLK),
        .CE(StC_Adxl_Ctrl[3]),
        .D(ACCEL_Y_SUM_reg[5]),
        .Q(ACCEL_Y[1]),
        .R(RESET));
  FDRE \ACCEL_Y_reg[2] 
       (.C(SYSCLK),
        .CE(StC_Adxl_Ctrl[3]),
        .D(ACCEL_Y_SUM_reg[6]),
        .Q(ACCEL_Y[2]),
        .R(RESET));
  FDRE \ACCEL_Y_reg[3] 
       (.C(SYSCLK),
        .CE(StC_Adxl_Ctrl[3]),
        .D(ACCEL_Y_SUM_reg[7]),
        .Q(ACCEL_Y[3]),
        .R(RESET));
  FDRE \ACCEL_Y_reg[4] 
       (.C(SYSCLK),
        .CE(StC_Adxl_Ctrl[3]),
        .D(ACCEL_Y_SUM_reg[8]),
        .Q(ACCEL_Y[4]),
        .R(RESET));
  FDRE \ACCEL_Y_reg[5] 
       (.C(SYSCLK),
        .CE(StC_Adxl_Ctrl[3]),
        .D(ACCEL_Y_SUM_reg[9]),
        .Q(ACCEL_Y[5]),
        .R(RESET));
  FDRE \ACCEL_Y_reg[6] 
       (.C(SYSCLK),
        .CE(StC_Adxl_Ctrl[3]),
        .D(ACCEL_Y_SUM_reg[10]),
        .Q(ACCEL_Y[6]),
        .R(RESET));
  FDRE \ACCEL_Y_reg[7] 
       (.C(SYSCLK),
        .CE(StC_Adxl_Ctrl[3]),
        .D(ACCEL_Y_SUM_reg[11]),
        .Q(ACCEL_Y[7]),
        .R(RESET));
  FDRE \ACCEL_Y_reg[8] 
       (.C(SYSCLK),
        .CE(StC_Adxl_Ctrl[3]),
        .D(ACCEL_Y_SUM_reg[12]),
        .Q(ACCEL_Y[8]),
        .R(RESET));
  FDRE \ACCEL_Y_reg[9] 
       (.C(SYSCLK),
        .CE(StC_Adxl_Ctrl[3]),
        .D(ACCEL_Y_SUM_reg[13]),
        .Q(ACCEL_Y[9]),
        .R(RESET));
  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_Z_SUM[0]_i_2 
       (.I0(\Data_Reg_reg[3] [3]),
        .I1(\ACCEL_Z_SUM_reg_n_0_[3] ),
        .O(\ACCEL_Z_SUM[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_Z_SUM[0]_i_3 
       (.I0(\Data_Reg_reg[3] [2]),
        .I1(\ACCEL_Z_SUM_reg_n_0_[2] ),
        .O(\ACCEL_Z_SUM[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_Z_SUM[0]_i_4 
       (.I0(\Data_Reg_reg[3] [1]),
        .I1(\ACCEL_Z_SUM_reg_n_0_[1] ),
        .O(\ACCEL_Z_SUM[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_Z_SUM[0]_i_5 
       (.I0(\Data_Reg_reg[3] [0]),
        .I1(\ACCEL_Z_SUM_reg_n_0_[0] ),
        .O(\ACCEL_Z_SUM[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_Z_SUM[12]_i_2 
       (.I0(\Data_Reg_reg[2] [7]),
        .I1(ACCEL_Z_SUM_reg[15]),
        .O(\ACCEL_Z_SUM[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_Z_SUM[12]_i_3 
       (.I0(\Data_Reg_reg[2] [6]),
        .I1(ACCEL_Z_SUM_reg[14]),
        .O(\ACCEL_Z_SUM[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_Z_SUM[12]_i_4 
       (.I0(\Data_Reg_reg[2] [5]),
        .I1(ACCEL_Z_SUM_reg[13]),
        .O(\ACCEL_Z_SUM[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_Z_SUM[12]_i_5 
       (.I0(\Data_Reg_reg[2] [4]),
        .I1(ACCEL_Z_SUM_reg[12]),
        .O(\ACCEL_Z_SUM[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_Z_SUM[4]_i_2 
       (.I0(\Data_Reg_reg[3] [7]),
        .I1(ACCEL_Z_SUM_reg[7]),
        .O(\ACCEL_Z_SUM[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_Z_SUM[4]_i_3 
       (.I0(\Data_Reg_reg[3] [6]),
        .I1(ACCEL_Z_SUM_reg[6]),
        .O(\ACCEL_Z_SUM[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_Z_SUM[4]_i_4 
       (.I0(\Data_Reg_reg[3] [5]),
        .I1(ACCEL_Z_SUM_reg[5]),
        .O(\ACCEL_Z_SUM[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_Z_SUM[4]_i_5 
       (.I0(\Data_Reg_reg[3] [4]),
        .I1(ACCEL_Z_SUM_reg[4]),
        .O(\ACCEL_Z_SUM[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_Z_SUM[8]_i_2 
       (.I0(\Data_Reg_reg[2] [3]),
        .I1(ACCEL_Z_SUM_reg[11]),
        .O(\ACCEL_Z_SUM[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_Z_SUM[8]_i_3 
       (.I0(\Data_Reg_reg[2] [2]),
        .I1(ACCEL_Z_SUM_reg[10]),
        .O(\ACCEL_Z_SUM[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_Z_SUM[8]_i_4 
       (.I0(\Data_Reg_reg[2] [1]),
        .I1(ACCEL_Z_SUM_reg[9]),
        .O(\ACCEL_Z_SUM[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ACCEL_Z_SUM[8]_i_5 
       (.I0(\Data_Reg_reg[2] [0]),
        .I1(ACCEL_Z_SUM_reg[8]),
        .O(\ACCEL_Z_SUM[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_Z_SUM_reg[0] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_Z_SUM_reg[0]_i_1_n_7 ),
        .Q(\ACCEL_Z_SUM_reg_n_0_[0] ),
        .R(ACCEL_X_SUM0));
  CARRY4 \ACCEL_Z_SUM_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\ACCEL_Z_SUM_reg[0]_i_1_n_0 ,\ACCEL_Z_SUM_reg[0]_i_1_n_1 ,\ACCEL_Z_SUM_reg[0]_i_1_n_2 ,\ACCEL_Z_SUM_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\Data_Reg_reg[3] [3:0]),
        .O({\ACCEL_Z_SUM_reg[0]_i_1_n_4 ,\ACCEL_Z_SUM_reg[0]_i_1_n_5 ,\ACCEL_Z_SUM_reg[0]_i_1_n_6 ,\ACCEL_Z_SUM_reg[0]_i_1_n_7 }),
        .S({\ACCEL_Z_SUM[0]_i_2_n_0 ,\ACCEL_Z_SUM[0]_i_3_n_0 ,\ACCEL_Z_SUM[0]_i_4_n_0 ,\ACCEL_Z_SUM[0]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_Z_SUM_reg[10] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_Z_SUM_reg[8]_i_1_n_5 ),
        .Q(ACCEL_Z_SUM_reg[10]),
        .R(ACCEL_X_SUM0));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_Z_SUM_reg[11] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_Z_SUM_reg[8]_i_1_n_4 ),
        .Q(ACCEL_Z_SUM_reg[11]),
        .R(ACCEL_X_SUM0));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_Z_SUM_reg[12] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_Z_SUM_reg[12]_i_1_n_7 ),
        .Q(ACCEL_Z_SUM_reg[12]),
        .R(ACCEL_X_SUM0));
  CARRY4 \ACCEL_Z_SUM_reg[12]_i_1 
       (.CI(\ACCEL_Z_SUM_reg[8]_i_1_n_0 ),
        .CO({\NLW_ACCEL_Z_SUM_reg[12]_i_1_CO_UNCONNECTED [3],\ACCEL_Z_SUM_reg[12]_i_1_n_1 ,\ACCEL_Z_SUM_reg[12]_i_1_n_2 ,\ACCEL_Z_SUM_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\Data_Reg_reg[2] [6:4]}),
        .O({\ACCEL_Z_SUM_reg[12]_i_1_n_4 ,\ACCEL_Z_SUM_reg[12]_i_1_n_5 ,\ACCEL_Z_SUM_reg[12]_i_1_n_6 ,\ACCEL_Z_SUM_reg[12]_i_1_n_7 }),
        .S({\ACCEL_Z_SUM[12]_i_2_n_0 ,\ACCEL_Z_SUM[12]_i_3_n_0 ,\ACCEL_Z_SUM[12]_i_4_n_0 ,\ACCEL_Z_SUM[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_Z_SUM_reg[13] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_Z_SUM_reg[12]_i_1_n_6 ),
        .Q(ACCEL_Z_SUM_reg[13]),
        .R(ACCEL_X_SUM0));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_Z_SUM_reg[14] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_Z_SUM_reg[12]_i_1_n_5 ),
        .Q(ACCEL_Z_SUM_reg[14]),
        .R(ACCEL_X_SUM0));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_Z_SUM_reg[15] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_Z_SUM_reg[12]_i_1_n_4 ),
        .Q(ACCEL_Z_SUM_reg[15]),
        .R(ACCEL_X_SUM0));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_Z_SUM_reg[1] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_Z_SUM_reg[0]_i_1_n_6 ),
        .Q(\ACCEL_Z_SUM_reg_n_0_[1] ),
        .R(ACCEL_X_SUM0));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_Z_SUM_reg[2] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_Z_SUM_reg[0]_i_1_n_5 ),
        .Q(\ACCEL_Z_SUM_reg_n_0_[2] ),
        .R(ACCEL_X_SUM0));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_Z_SUM_reg[3] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_Z_SUM_reg[0]_i_1_n_4 ),
        .Q(\ACCEL_Z_SUM_reg_n_0_[3] ),
        .R(ACCEL_X_SUM0));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_Z_SUM_reg[4] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_Z_SUM_reg[4]_i_1_n_7 ),
        .Q(ACCEL_Z_SUM_reg[4]),
        .R(ACCEL_X_SUM0));
  CARRY4 \ACCEL_Z_SUM_reg[4]_i_1 
       (.CI(\ACCEL_Z_SUM_reg[0]_i_1_n_0 ),
        .CO({\ACCEL_Z_SUM_reg[4]_i_1_n_0 ,\ACCEL_Z_SUM_reg[4]_i_1_n_1 ,\ACCEL_Z_SUM_reg[4]_i_1_n_2 ,\ACCEL_Z_SUM_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\Data_Reg_reg[3] [7:4]),
        .O({\ACCEL_Z_SUM_reg[4]_i_1_n_4 ,\ACCEL_Z_SUM_reg[4]_i_1_n_5 ,\ACCEL_Z_SUM_reg[4]_i_1_n_6 ,\ACCEL_Z_SUM_reg[4]_i_1_n_7 }),
        .S({\ACCEL_Z_SUM[4]_i_2_n_0 ,\ACCEL_Z_SUM[4]_i_3_n_0 ,\ACCEL_Z_SUM[4]_i_4_n_0 ,\ACCEL_Z_SUM[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_Z_SUM_reg[5] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_Z_SUM_reg[4]_i_1_n_6 ),
        .Q(ACCEL_Z_SUM_reg[5]),
        .R(ACCEL_X_SUM0));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_Z_SUM_reg[6] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_Z_SUM_reg[4]_i_1_n_5 ),
        .Q(ACCEL_Z_SUM_reg[6]),
        .R(ACCEL_X_SUM0));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_Z_SUM_reg[7] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_Z_SUM_reg[4]_i_1_n_4 ),
        .Q(ACCEL_Z_SUM_reg[7]),
        .R(ACCEL_X_SUM0));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_Z_SUM_reg[8] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_Z_SUM_reg[8]_i_1_n_7 ),
        .Q(ACCEL_Z_SUM_reg[8]),
        .R(ACCEL_X_SUM0));
  CARRY4 \ACCEL_Z_SUM_reg[8]_i_1 
       (.CI(\ACCEL_Z_SUM_reg[4]_i_1_n_0 ),
        .CO({\ACCEL_Z_SUM_reg[8]_i_1_n_0 ,\ACCEL_Z_SUM_reg[8]_i_1_n_1 ,\ACCEL_Z_SUM_reg[8]_i_1_n_2 ,\ACCEL_Z_SUM_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(\Data_Reg_reg[2] [3:0]),
        .O({\ACCEL_Z_SUM_reg[8]_i_1_n_4 ,\ACCEL_Z_SUM_reg[8]_i_1_n_5 ,\ACCEL_Z_SUM_reg[8]_i_1_n_6 ,\ACCEL_Z_SUM_reg[8]_i_1_n_7 }),
        .S({\ACCEL_Z_SUM[8]_i_2_n_0 ,\ACCEL_Z_SUM[8]_i_3_n_0 ,\ACCEL_Z_SUM[8]_i_4_n_0 ,\ACCEL_Z_SUM[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \ACCEL_Z_SUM_reg[9] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\ACCEL_Z_SUM_reg[8]_i_1_n_6 ),
        .Q(ACCEL_Z_SUM_reg[9]),
        .R(ACCEL_X_SUM0));
  FDRE \ACCEL_Z_reg[0] 
       (.C(SYSCLK),
        .CE(StC_Adxl_Ctrl[3]),
        .D(ACCEL_Z_SUM_reg[4]),
        .Q(ACCEL_Z[0]),
        .R(RESET));
  FDRE \ACCEL_Z_reg[10] 
       (.C(SYSCLK),
        .CE(StC_Adxl_Ctrl[3]),
        .D(ACCEL_Z_SUM_reg[14]),
        .Q(ACCEL_Z[10]),
        .R(RESET));
  FDRE \ACCEL_Z_reg[11] 
       (.C(SYSCLK),
        .CE(StC_Adxl_Ctrl[3]),
        .D(ACCEL_Z_SUM_reg[15]),
        .Q(ACCEL_Z[11]),
        .R(RESET));
  FDRE \ACCEL_Z_reg[1] 
       (.C(SYSCLK),
        .CE(StC_Adxl_Ctrl[3]),
        .D(ACCEL_Z_SUM_reg[5]),
        .Q(ACCEL_Z[1]),
        .R(RESET));
  FDRE \ACCEL_Z_reg[2] 
       (.C(SYSCLK),
        .CE(StC_Adxl_Ctrl[3]),
        .D(ACCEL_Z_SUM_reg[6]),
        .Q(ACCEL_Z[2]),
        .R(RESET));
  FDRE \ACCEL_Z_reg[3] 
       (.C(SYSCLK),
        .CE(StC_Adxl_Ctrl[3]),
        .D(ACCEL_Z_SUM_reg[7]),
        .Q(ACCEL_Z[3]),
        .R(RESET));
  FDRE \ACCEL_Z_reg[4] 
       (.C(SYSCLK),
        .CE(StC_Adxl_Ctrl[3]),
        .D(ACCEL_Z_SUM_reg[8]),
        .Q(ACCEL_Z[4]),
        .R(RESET));
  FDRE \ACCEL_Z_reg[5] 
       (.C(SYSCLK),
        .CE(StC_Adxl_Ctrl[3]),
        .D(ACCEL_Z_SUM_reg[9]),
        .Q(ACCEL_Z[5]),
        .R(RESET));
  FDRE \ACCEL_Z_reg[6] 
       (.C(SYSCLK),
        .CE(StC_Adxl_Ctrl[3]),
        .D(ACCEL_Z_SUM_reg[10]),
        .Q(ACCEL_Z[6]),
        .R(RESET));
  FDRE \ACCEL_Z_reg[7] 
       (.C(SYSCLK),
        .CE(StC_Adxl_Ctrl[3]),
        .D(ACCEL_Z_SUM_reg[11]),
        .Q(ACCEL_Z[7]),
        .R(RESET));
  FDRE \ACCEL_Z_reg[8] 
       (.C(SYSCLK),
        .CE(StC_Adxl_Ctrl[3]),
        .D(ACCEL_Z_SUM_reg[12]),
        .Q(ACCEL_Z[8]),
        .R(RESET));
  FDRE \ACCEL_Z_reg[9] 
       (.C(SYSCLK),
        .CE(StC_Adxl_Ctrl[3]),
        .D(ACCEL_Z_SUM_reg[13]),
        .Q(ACCEL_Z[9]),
        .R(RESET));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \Cmd_Reg[0][1]_i_1 
       (.I0(\Cmd_Reg_Data_Addr_reg_n_0_[0] ),
        .O(B));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Cmd_Reg[0][2]_i_1 
       (.I0(\Cmd_Reg_Data_Addr_reg_n_0_[1] ),
        .I1(\Cmd_Reg_Data_Addr_reg_n_0_[0] ),
        .O(\Cmd_Reg[0][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \Cmd_Reg[0][4]_i_1 
       (.I0(\Cmd_Reg_Data_Addr_reg_n_0_[1] ),
        .I1(\Cmd_Reg_Data_Addr_reg_n_0_[0] ),
        .O(\Cmd_Reg[0][4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888888888B88B888)) 
    \Cmd_Reg[0][6]_i_1 
       (.I0(Shift_Cmd_Reg),
        .I1(\FSM_sequential_StC_Spi_SendRec[0]_i_2_n_0 ),
        .I2(StC_Adxl_Ctrl[1]),
        .I3(StC_Adxl_Ctrl[2]),
        .I4(StC_Adxl_Ctrl[0]),
        .I5(StC_Adxl_Ctrl[3]),
        .O(\Cmd_Reg[0][6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \Cmd_Reg[0][6]_i_2 
       (.I0(StC_Spi_Trans[2]),
        .I1(StC_Spi_Trans[1]),
        .I2(StC_Spi_Trans[0]),
        .I3(StC_Adxl_Ctrl[0]),
        .I4(StC_Adxl_Ctrl[3]),
        .I5(StC_Adxl_Ctrl[2]),
        .O(\Cmd_Reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \Cmd_Reg[0][6]_i_3 
       (.I0(\Cmd_Reg_Data_Addr_reg_n_0_[0] ),
        .I1(\Cmd_Reg_Data_Addr_reg_n_0_[1] ),
        .O(\Cmd_Reg[0][6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF02023202)) 
    \Cmd_Reg[1][0]_i_1 
       (.I0(\Cmd_Reg_reg[1] [0]),
        .I1(\Cmd_Reg[1][2]_i_2_n_0 ),
        .I2(\Cmd_Reg[1][6]_i_2_n_0 ),
        .I3(\Cmd_Reg[1][0]_i_2_n_0 ),
        .I4(\FSM_sequential_StC_Spi_SendRec[0]_i_2_n_0 ),
        .I5(\Cmd_Reg[1]0_in [2]),
        .O(\Cmd_Reg[1][0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \Cmd_Reg[1][0]_i_2 
       (.I0(\Cmd_Reg_Data_Addr_reg_n_0_[0] ),
        .I1(\Cmd_Reg_Data_Addr_reg_n_0_[1] ),
        .O(\Cmd_Reg[1][0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hA8AAABAA)) 
    \Cmd_Reg[1][1]_i_1 
       (.I0(\Cmd_Reg_reg[0] [1]),
        .I1(StC_Spi_Trans[2]),
        .I2(StC_Spi_Trans[1]),
        .I3(StC_Spi_Trans[0]),
        .I4(\Cmd_Reg_Data_Addr_reg_n_0_[1] ),
        .O(\Cmd_Reg[1][1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FECEFEFE)) 
    \Cmd_Reg[1][2]_i_1 
       (.I0(\Cmd_Reg_reg[1] [2]),
        .I1(\Cmd_Reg[1][2]_i_2_n_0 ),
        .I2(\Cmd_Reg[1][6]_i_2_n_0 ),
        .I3(\Cmd_Reg_reg[0] [2]),
        .I4(\FSM_sequential_StC_Spi_SendRec[0]_i_2_n_0 ),
        .I5(\Cmd_Reg[1]0_in [2]),
        .O(\Cmd_Reg[1][2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \Cmd_Reg[1][2]_i_2 
       (.I0(StC_Adxl_Ctrl[1]),
        .I1(StC_Adxl_Ctrl[2]),
        .I2(StC_Adxl_Ctrl[0]),
        .I3(StC_Adxl_Ctrl[3]),
        .I4(\FSM_sequential_StC_Spi_SendRec[0]_i_2_n_0 ),
        .O(\Cmd_Reg[1][2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00040000)) 
    \Cmd_Reg[1][2]_i_3 
       (.I0(\FSM_sequential_StC_Spi_SendRec[0]_i_2_n_0 ),
        .I1(StC_Adxl_Ctrl[2]),
        .I2(StC_Adxl_Ctrl[1]),
        .I3(StC_Adxl_Ctrl[3]),
        .I4(StC_Adxl_Ctrl[0]),
        .O(\Cmd_Reg[1]0_in [2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \Cmd_Reg[1][3]_i_1 
       (.I0(StC_Spi_Trans[0]),
        .I1(StC_Spi_Trans[1]),
        .I2(StC_Spi_Trans[2]),
        .O(StartSpiSendRec));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hA8AAABAA)) 
    \Cmd_Reg[1][4]_i_1 
       (.I0(\Cmd_Reg_reg[0] [4]),
        .I1(StC_Spi_Trans[2]),
        .I2(StC_Spi_Trans[1]),
        .I3(StC_Spi_Trans[0]),
        .I4(\Cmd_Reg_Data_Addr_reg_n_0_[1] ),
        .O(\Cmd_Reg[1][4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \Cmd_Reg[1][5]_i_1 
       (.I0(\Cmd_Reg_Data_Addr_reg_n_0_[1] ),
        .I1(StC_Spi_Trans[0]),
        .I2(StC_Spi_Trans[1]),
        .I3(StC_Spi_Trans[2]),
        .O(\Cmd_Reg[1][5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00001040)) 
    \Cmd_Reg[1][6]_i_1 
       (.I0(StC_Adxl_Ctrl[3]),
        .I1(StC_Adxl_Ctrl[0]),
        .I2(StC_Adxl_Ctrl[2]),
        .I3(StC_Adxl_Ctrl[1]),
        .I4(\FSM_sequential_StC_Spi_SendRec[0]_i_2_n_0 ),
        .O(\Cmd_Reg[1]0_in [7]));
  LUT5 #(
    .INIT(32'h888888B8)) 
    \Cmd_Reg[1][6]_i_2 
       (.I0(Shift_Cmd_Reg),
        .I1(\FSM_sequential_StC_Spi_SendRec[0]_i_2_n_0 ),
        .I2(StC_Adxl_Ctrl[0]),
        .I3(StC_Adxl_Ctrl[3]),
        .I4(StC_Adxl_Ctrl[2]),
        .O(\Cmd_Reg[1][6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hFD00)) 
    \Cmd_Reg[1][6]_i_3 
       (.I0(StC_Spi_Trans[0]),
        .I1(StC_Spi_Trans[1]),
        .I2(StC_Spi_Trans[2]),
        .I3(\Cmd_Reg_reg[0] [6]),
        .O(\Cmd_Reg[1][6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8A8A8A0A8A8A8)) 
    \Cmd_Reg[2][0]_i_1 
       (.I0(\Cnt_Bytes_Sent[0]_i_2_n_0 ),
        .I1(\Cmd_Reg_reg[2] [0]),
        .I2(\Cmd_Reg[1]0_in [7]),
        .I3(Shift_Cmd_Reg),
        .I4(\FSM_sequential_StC_Spi_SendRec[0]_i_2_n_0 ),
        .I5(\Cmd_Reg_reg[1] [0]),
        .O(\Cmd_Reg[2][0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00001444)) 
    \Cmd_Reg[2][6]_i_1 
       (.I0(StC_Adxl_Ctrl[3]),
        .I1(StC_Adxl_Ctrl[0]),
        .I2(StC_Adxl_Ctrl[2]),
        .I3(StC_Adxl_Ctrl[1]),
        .I4(\FSM_sequential_StC_Spi_SendRec[0]_i_2_n_0 ),
        .O(\Cmd_Reg[2] ));
  LUT6 #(
    .INIT(64'h0404040404040004)) 
    \Cmd_Reg[2][6]_i_2 
       (.I0(StC_Spi_SendRec[2]),
        .I1(StC_Spi_SendRec[0]),
        .I2(StC_Spi_SendRec[1]),
        .I3(StC_Spi_Trans[0]),
        .I4(StC_Spi_Trans[1]),
        .I5(StC_Spi_Trans[2]),
        .O(\Cmd_Reg[2]_1 ));
  LUT6 #(
    .INIT(64'h0606060006060606)) 
    \Cmd_Reg_Data_Addr[0]_i_1 
       (.I0(\Cmd_Reg_Data_Addr_reg_n_0_[0] ),
        .I1(Advance_Cmd_Reg_Addr),
        .I2(RESET),
        .I3(StC_Adxl_Ctrl[2]),
        .I4(StC_Adxl_Ctrl[1]),
        .I5(\Cmd_Reg_Data_Addr[0]_i_2_n_0 ),
        .O(\Cmd_Reg_Data_Addr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \Cmd_Reg_Data_Addr[0]_i_2 
       (.I0(StC_Adxl_Ctrl[0]),
        .I1(StC_Adxl_Ctrl[3]),
        .O(\Cmd_Reg_Data_Addr[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h0000006A)) 
    \Cmd_Reg_Data_Addr[1]_i_1 
       (.I0(\Cmd_Reg_Data_Addr_reg_n_0_[1] ),
        .I1(Advance_Cmd_Reg_Addr),
        .I2(\Cmd_Reg_Data_Addr_reg_n_0_[0] ),
        .I3(RESET),
        .I4(Reset_Cnt_Bytes),
        .O(\Cmd_Reg_Data_Addr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h004C00C0)) 
    \Cmd_Reg_Data_Addr[1]_i_2 
       (.I0(StC_Adxl_Ctrl[2]),
        .I1(\FSM_sequential_StC_Adxl_Ctrl[3]_i_5_n_0 ),
        .I2(StC_Adxl_Ctrl[0]),
        .I3(StC_Adxl_Ctrl[3]),
        .I4(StC_Adxl_Ctrl[1]),
        .O(Advance_Cmd_Reg_Addr));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \Cmd_Reg_Data_Addr[1]_i_3 
       (.I0(StC_Adxl_Ctrl[2]),
        .I1(StC_Adxl_Ctrl[1]),
        .I2(StC_Adxl_Ctrl[3]),
        .I3(StC_Adxl_Ctrl[0]),
        .O(Reset_Cnt_Bytes));
  FDRE #(
    .INIT(1'b0)) 
    \Cmd_Reg_Data_Addr_reg[0] 
       (.C(SYSCLK),
        .CE(1'b1),
        .D(\Cmd_Reg_Data_Addr[0]_i_1_n_0 ),
        .Q(\Cmd_Reg_Data_Addr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Cmd_Reg_Data_Addr_reg[1] 
       (.C(SYSCLK),
        .CE(1'b1),
        .D(\Cmd_Reg_Data_Addr[1]_i_1_n_0 ),
        .Q(\Cmd_Reg_Data_Addr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Cmd_Reg_reg[0][1] 
       (.C(SYSCLK),
        .CE(\Cmd_Reg[0]_0 ),
        .D(B),
        .Q(\Cmd_Reg_reg[0] [1]),
        .R(\Cmd_Reg[0][6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Cmd_Reg_reg[0][2] 
       (.C(SYSCLK),
        .CE(\Cmd_Reg[0]_0 ),
        .D(\Cmd_Reg[0][2]_i_1_n_0 ),
        .Q(\Cmd_Reg_reg[0] [2]),
        .R(\Cmd_Reg[0][6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Cmd_Reg_reg[0][4] 
       (.C(SYSCLK),
        .CE(\Cmd_Reg[0]_0 ),
        .D(\Cmd_Reg[0][4]_i_1_n_0 ),
        .Q(\Cmd_Reg_reg[0] [4]),
        .R(\Cmd_Reg[0][6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Cmd_Reg_reg[0][6] 
       (.C(SYSCLK),
        .CE(\Cmd_Reg[0]_0 ),
        .D(\Cmd_Reg[0][6]_i_3_n_0 ),
        .Q(\Cmd_Reg_reg[0] [6]),
        .R(\Cmd_Reg[0][6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Cmd_Reg_reg[1][0] 
       (.C(SYSCLK),
        .CE(1'b1),
        .D(\Cmd_Reg[1][0]_i_1_n_0 ),
        .Q(\Cmd_Reg_reg[1] [0]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \Cmd_Reg_reg[1][1] 
       (.C(SYSCLK),
        .CE(\Cmd_Reg[1][6]_i_2_n_0 ),
        .D(\Cmd_Reg[1][1]_i_1_n_0 ),
        .Q(\Cmd_Reg_reg[1] [1]),
        .S(\Cmd_Reg[1]0_in [7]));
  FDRE #(
    .INIT(1'b0)) 
    \Cmd_Reg_reg[1][2] 
       (.C(SYSCLK),
        .CE(1'b1),
        .D(\Cmd_Reg[1][2]_i_1_n_0 ),
        .Q(\Cmd_Reg_reg[1] [2]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b0)) 
    \Cmd_Reg_reg[1][3] 
       (.C(SYSCLK),
        .CE(\Cmd_Reg[1][6]_i_2_n_0 ),
        .D(StartSpiSendRec),
        .Q(\Cmd_Reg_reg[1] [3]),
        .S(\Cmd_Reg[1]0_in [7]));
  FDRE #(
    .INIT(1'b0)) 
    \Cmd_Reg_reg[1][4] 
       (.C(SYSCLK),
        .CE(\Cmd_Reg[1][6]_i_2_n_0 ),
        .D(\Cmd_Reg[1][4]_i_1_n_0 ),
        .Q(\Cmd_Reg_reg[1] [4]),
        .R(\Cmd_Reg[1]0_in [7]));
  FDRE #(
    .INIT(1'b0)) 
    \Cmd_Reg_reg[1][5] 
       (.C(SYSCLK),
        .CE(\Cmd_Reg[1][6]_i_2_n_0 ),
        .D(\Cmd_Reg[1][5]_i_1_n_0 ),
        .Q(\Cmd_Reg_reg[1] [5]),
        .R(\Cmd_Reg[1]0_in [7]));
  FDRE #(
    .INIT(1'b0)) 
    \Cmd_Reg_reg[1][6] 
       (.C(SYSCLK),
        .CE(\Cmd_Reg[1][6]_i_2_n_0 ),
        .D(\Cmd_Reg[1][6]_i_3_n_0 ),
        .Q(\Cmd_Reg_reg[1] [6]),
        .R(\Cmd_Reg[1]0_in [7]));
  FDRE #(
    .INIT(1'b0)) 
    \Cmd_Reg_reg[2][0] 
       (.C(SYSCLK),
        .CE(1'b1),
        .D(\Cmd_Reg[2][0]_i_1_n_0 ),
        .Q(\Cmd_Reg_reg[2] [0]),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    \Cmd_Reg_reg[2][1] 
       (.C(SYSCLK),
        .CE(\Cmd_Reg[2]_1 ),
        .D(\Cmd_Reg_reg[1] [1]),
        .Q(\Cmd_Reg_reg[2] [1]),
        .S(\Cmd_Reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \Cmd_Reg_reg[2][2] 
       (.C(SYSCLK),
        .CE(\Cmd_Reg[2]_1 ),
        .D(\Cmd_Reg_reg[1] [2]),
        .Q(\Cmd_Reg_reg[2] [2]),
        .R(\Cmd_Reg[2] ));
  FDSE #(
    .INIT(1'b1)) 
    \Cmd_Reg_reg[2][3] 
       (.C(SYSCLK),
        .CE(\Cmd_Reg[2]_1 ),
        .D(\Cmd_Reg_reg[1] [3]),
        .Q(\Cmd_Reg_reg[2] [3]),
        .S(\Cmd_Reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \Cmd_Reg_reg[2][4] 
       (.C(SYSCLK),
        .CE(\Cmd_Reg[2]_1 ),
        .D(\Cmd_Reg_reg[1] [4]),
        .Q(\Cmd_Reg_reg[2] [4]),
        .R(\Cmd_Reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \Cmd_Reg_reg[2][5] 
       (.C(SYSCLK),
        .CE(\Cmd_Reg[2]_1 ),
        .D(\Cmd_Reg_reg[1] [5]),
        .Q(\Cmd_Reg_reg[2] [5]),
        .R(\Cmd_Reg[2] ));
  FDRE #(
    .INIT(1'b0)) 
    \Cmd_Reg_reg[2][6] 
       (.C(SYSCLK),
        .CE(\Cmd_Reg[2]_1 ),
        .D(\Cmd_Reg_reg[1] [6]),
        .Q(\Cmd_Reg_reg[2] [6]),
        .R(\Cmd_Reg[2] ));
  LUT6 #(
    .INIT(64'h00000000FBFBFB08)) 
    \Cnt_Bytes_Rec[0]_i_1 
       (.I0(\Cnt_Bytes_Rec_reg_n_0_[0] ),
        .I1(\FSM_sequential_StC_Spi_SendRec[0]_i_2_n_0 ),
        .I2(Shift_Data_Reg),
        .I3(\Cmd_Reg[1][2]_i_2_n_0 ),
        .I4(\Cnt_Bytes_Rec[0]_i_2_n_0 ),
        .I5(\Cnt_Bytes_Rec[2]_i_2_n_0 ),
        .O(\Cnt_Bytes_Rec[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h5454545454540054)) 
    \Cnt_Bytes_Rec[0]_i_2 
       (.I0(\Cnt_Bytes_Rec_reg_n_0_[0] ),
        .I1(\Cnt_Bytes_Rec_reg_n_0_[1] ),
        .I2(\Cnt_Bytes_Rec_reg_n_0_[2] ),
        .I3(StC_Spi_Trans[0]),
        .I4(StC_Spi_Trans[1]),
        .I5(StC_Spi_Trans[2]),
        .O(\Cnt_Bytes_Rec[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAA8AAA2AAA8)) 
    \Cnt_Bytes_Rec[1]_i_1 
       (.I0(\Cnt_Bytes_Rec[1]_i_2_n_0 ),
        .I1(StC_Adxl_Ctrl[2]),
        .I2(StC_Adxl_Ctrl[1]),
        .I3(StC_Adxl_Ctrl[3]),
        .I4(StC_Adxl_Ctrl[0]),
        .I5(\FSM_sequential_StC_Spi_SendRec[0]_i_2_n_0 ),
        .O(\Cnt_Bytes_Rec[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFAAAA0C00AAAA)) 
    \Cnt_Bytes_Rec[1]_i_2 
       (.I0(\Cnt_Bytes_Rec[1]_i_3_n_0 ),
        .I1(\Cnt_Bytes_Rec_reg_n_0_[2] ),
        .I2(\Cnt_Bytes_Rec_reg_n_0_[0] ),
        .I3(Shift_Data_Reg),
        .I4(\FSM_sequential_StC_Spi_SendRec[0]_i_2_n_0 ),
        .I5(\Cnt_Bytes_Rec_reg_n_0_[1] ),
        .O(\Cnt_Bytes_Rec[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \Cnt_Bytes_Rec[1]_i_3 
       (.I0(StC_Adxl_Ctrl[3]),
        .I1(StC_Adxl_Ctrl[0]),
        .I2(StC_Adxl_Ctrl[2]),
        .I3(StC_Adxl_Ctrl[1]),
        .O(\Cnt_Bytes_Rec[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FB88FB08)) 
    \Cnt_Bytes_Rec[2]_i_1 
       (.I0(\Cnt_Bytes_Rec_reg_n_0_[2] ),
        .I1(\FSM_sequential_StC_Spi_SendRec[0]_i_2_n_0 ),
        .I2(Shift_Data_Reg),
        .I3(\Cmd_Reg[1][2]_i_2_n_0 ),
        .I4(\FSM_sequential_StC_Spi_SendRec[1]_i_3_n_0 ),
        .I5(\Cnt_Bytes_Rec[2]_i_2_n_0 ),
        .O(\Cnt_Bytes_Rec[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h00040003)) 
    \Cnt_Bytes_Rec[2]_i_2 
       (.I0(\FSM_sequential_StC_Spi_SendRec[0]_i_2_n_0 ),
        .I1(StC_Adxl_Ctrl[0]),
        .I2(StC_Adxl_Ctrl[3]),
        .I3(StC_Adxl_Ctrl[1]),
        .I4(StC_Adxl_Ctrl[2]),
        .O(\Cnt_Bytes_Rec[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Cnt_Bytes_Rec_reg[0] 
       (.C(SYSCLK),
        .CE(1'b1),
        .D(\Cnt_Bytes_Rec[0]_i_1_n_0 ),
        .Q(\Cnt_Bytes_Rec_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Cnt_Bytes_Rec_reg[1] 
       (.C(SYSCLK),
        .CE(1'b1),
        .D(\Cnt_Bytes_Rec[1]_i_1_n_0 ),
        .Q(\Cnt_Bytes_Rec_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Cnt_Bytes_Rec_reg[2] 
       (.C(SYSCLK),
        .CE(1'b1),
        .D(\Cnt_Bytes_Rec[2]_i_1_n_0 ),
        .Q(\Cnt_Bytes_Rec_reg_n_0_[2] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000048FB08FB)) 
    \Cnt_Bytes_Sent[0]_i_1 
       (.I0(\Cnt_Bytes_Sent_reg_n_0_[0] ),
        .I1(\FSM_sequential_StC_Spi_SendRec[0]_i_2_n_0 ),
        .I2(Shift_Cmd_Reg),
        .I3(\Cnt_Bytes_Sent[0]_i_2_n_0 ),
        .I4(\Cnt_Bytes_Sent_reg_n_0_[1] ),
        .I5(Reset_Cnt_Bytes),
        .O(\Cnt_Bytes_Sent[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFFF)) 
    \Cnt_Bytes_Sent[0]_i_2 
       (.I0(StC_Adxl_Ctrl[2]),
        .I1(StC_Adxl_Ctrl[3]),
        .I2(StC_Adxl_Ctrl[0]),
        .I3(StC_Spi_Trans[0]),
        .I4(StC_Spi_Trans[1]),
        .I5(StC_Spi_Trans[2]),
        .O(\Cnt_Bytes_Sent[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FB88FB08)) 
    \Cnt_Bytes_Sent[1]_i_1 
       (.I0(\Cnt_Bytes_Sent_reg_n_0_[1] ),
        .I1(\FSM_sequential_StC_Spi_SendRec[0]_i_2_n_0 ),
        .I2(Shift_Cmd_Reg),
        .I3(\Cmd_Reg[2] ),
        .I4(\Cnt_Bytes_Sent_reg_n_0_[0] ),
        .I5(Reset_Cnt_Bytes),
        .O(\Cnt_Bytes_Sent[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Cnt_Bytes_Sent_reg[0] 
       (.C(SYSCLK),
        .CE(1'b1),
        .D(\Cnt_Bytes_Sent[0]_i_1_n_0 ),
        .Q(\Cnt_Bytes_Sent_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Cnt_Bytes_Sent_reg[1] 
       (.C(SYSCLK),
        .CE(1'b1),
        .D(\Cnt_Bytes_Sent[1]_i_1_n_0 ),
        .Q(\Cnt_Bytes_Sent_reg_n_0_[1] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h80FF)) 
    \Cnt_Num_Reads[0]_i_1 
       (.I0(Cnt_Num_Reads[2]),
        .I1(Cnt_Num_Reads[3]),
        .I2(Cnt_Num_Reads[1]),
        .I3(Cnt_Num_Reads[0]),
        .O(\Cnt_Num_Reads[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hD5AA)) 
    \Cnt_Num_Reads[1]_i_1 
       (.I0(Cnt_Num_Reads[0]),
        .I1(Cnt_Num_Reads[2]),
        .I2(Cnt_Num_Reads[3]),
        .I3(Cnt_Num_Reads[1]),
        .O(\Cnt_Num_Reads[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hEA6A)) 
    \Cnt_Num_Reads[2]_i_1 
       (.I0(Cnt_Num_Reads[2]),
        .I1(Cnt_Num_Reads[0]),
        .I2(Cnt_Num_Reads[1]),
        .I3(Cnt_Num_Reads[3]),
        .O(\Cnt_Num_Reads[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \Cnt_Num_Reads[3]_i_1 
       (.I0(StC_Adxl_Ctrl[3]),
        .I1(StC_Adxl_Ctrl[0]),
        .I2(StC_Adxl_Ctrl[1]),
        .O(Reset_Cnt_Num_Reads));
  LUT4 #(
    .INIT(16'h2000)) 
    \Cnt_Num_Reads[3]_i_2 
       (.I0(StC_Adxl_Ctrl[0]),
        .I1(StC_Adxl_Ctrl[3]),
        .I2(StC_Adxl_Ctrl[2]),
        .I3(StC_Adxl_Ctrl[1]),
        .O(sel));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    \Cnt_Num_Reads[3]_i_3 
       (.I0(Cnt_Num_Reads[0]),
        .I1(Cnt_Num_Reads[1]),
        .I2(Cnt_Num_Reads[2]),
        .I3(Cnt_Num_Reads[3]),
        .O(\Cnt_Num_Reads[3]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Cnt_Num_Reads_reg[0] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\Cnt_Num_Reads[0]_i_1_n_0 ),
        .Q(Cnt_Num_Reads[0]),
        .R(Reset_Cnt_Num_Reads));
  FDRE #(
    .INIT(1'b0)) 
    \Cnt_Num_Reads_reg[1] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\Cnt_Num_Reads[1]_i_1_n_0 ),
        .Q(Cnt_Num_Reads[1]),
        .R(Reset_Cnt_Num_Reads));
  FDRE #(
    .INIT(1'b0)) 
    \Cnt_Num_Reads_reg[2] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\Cnt_Num_Reads[2]_i_1_n_0 ),
        .Q(Cnt_Num_Reads[2]),
        .R(Reset_Cnt_Num_Reads));
  FDRE #(
    .INIT(1'b0)) 
    \Cnt_Num_Reads_reg[3] 
       (.C(SYSCLK),
        .CE(sel),
        .D(\Cnt_Num_Reads[3]_i_3_n_0 ),
        .Q(Cnt_Num_Reads[3]),
        .R(Reset_Cnt_Num_Reads));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFD)) 
    \Cnt_SS_Inactive[0]_i_1 
       (.I0(Cnt_SS_Inactive[6]),
        .I1(Cnt_SS_Inactive[5]),
        .I2(Cnt_SS_Inactive[8]),
        .I3(Cnt_SS_Inactive[7]),
        .I4(\Cnt_SS_Inactive[0]_i_2_n_0 ),
        .I5(Cnt_SS_Inactive[0]),
        .O(Cnt_SS_Inactive_2[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFF7FFFFFF)) 
    \Cnt_SS_Inactive[0]_i_2 
       (.I0(Cnt_SS_Inactive[1]),
        .I1(Cnt_SS_Inactive[2]),
        .I2(Cnt_SS_Inactive[9]),
        .I3(Cnt_SS_Inactive[10]),
        .I4(Cnt_SS_Inactive[4]),
        .I5(Cnt_SS_Inactive[3]),
        .O(\Cnt_SS_Inactive[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFF04)) 
    \Cnt_SS_Inactive[10]_i_1 
       (.I0(StC_Spi_Trans[0]),
        .I1(StC_Spi_Trans[1]),
        .I2(StC_Spi_Trans[2]),
        .I3(RESET),
        .O(Cnt_SS_Inactive0));
  LUT6 #(
    .INIT(64'hCC6CCCCCCCCCCCCC)) 
    \Cnt_SS_Inactive[10]_i_2 
       (.I0(Cnt_SS_Inactive[9]),
        .I1(Cnt_SS_Inactive[10]),
        .I2(Cnt_SS_Inactive[7]),
        .I3(\Cnt_SS_Inactive[10]_i_3_n_0 ),
        .I4(Cnt_SS_Inactive[6]),
        .I5(Cnt_SS_Inactive[8]),
        .O(Cnt_SS_Inactive_2[10]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \Cnt_SS_Inactive[10]_i_3 
       (.I0(Cnt_SS_Inactive[4]),
        .I1(Cnt_SS_Inactive[0]),
        .I2(Cnt_SS_Inactive[1]),
        .I3(Cnt_SS_Inactive[2]),
        .I4(Cnt_SS_Inactive[3]),
        .I5(Cnt_SS_Inactive[5]),
        .O(\Cnt_SS_Inactive[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6666666666666F66)) 
    \Cnt_SS_Inactive[1]_i_1 
       (.I0(Cnt_SS_Inactive[1]),
        .I1(Cnt_SS_Inactive[0]),
        .I2(\Cnt_SS_Inactive[1]_i_2_n_0 ),
        .I3(Cnt_SS_Inactive[6]),
        .I4(Cnt_SS_Inactive[3]),
        .I5(Cnt_SS_Inactive[9]),
        .O(Cnt_SS_Inactive_2[1]));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    \Cnt_SS_Inactive[1]_i_2 
       (.I0(Cnt_SS_Inactive[0]),
        .I1(Cnt_SS_Inactive[5]),
        .I2(\Cnt_SS_Inactive[1]_i_3_n_0 ),
        .I3(\Cnt_SS_Inactive[6]_i_2_n_0 ),
        .I4(Cnt_SS_Inactive[10]),
        .I5(Cnt_SS_Inactive[4]),
        .O(\Cnt_SS_Inactive[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \Cnt_SS_Inactive[1]_i_3 
       (.I0(Cnt_SS_Inactive[7]),
        .I1(Cnt_SS_Inactive[8]),
        .O(\Cnt_SS_Inactive[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \Cnt_SS_Inactive[2]_i_1 
       (.I0(Cnt_SS_Inactive[1]),
        .I1(Cnt_SS_Inactive[0]),
        .I2(Cnt_SS_Inactive[2]),
        .O(Cnt_SS_Inactive_2[2]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \Cnt_SS_Inactive[3]_i_1 
       (.I0(Cnt_SS_Inactive[0]),
        .I1(Cnt_SS_Inactive[1]),
        .I2(Cnt_SS_Inactive[2]),
        .I3(Cnt_SS_Inactive[3]),
        .O(Cnt_SS_Inactive_2[3]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \Cnt_SS_Inactive[4]_i_1 
       (.I0(Cnt_SS_Inactive[3]),
        .I1(Cnt_SS_Inactive[2]),
        .I2(Cnt_SS_Inactive[1]),
        .I3(Cnt_SS_Inactive[0]),
        .I4(Cnt_SS_Inactive[4]),
        .O(Cnt_SS_Inactive_2[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \Cnt_SS_Inactive[5]_i_1 
       (.I0(Cnt_SS_Inactive[4]),
        .I1(Cnt_SS_Inactive[0]),
        .I2(Cnt_SS_Inactive[1]),
        .I3(Cnt_SS_Inactive[2]),
        .I4(Cnt_SS_Inactive[3]),
        .I5(Cnt_SS_Inactive[5]),
        .O(Cnt_SS_Inactive_2[5]));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \Cnt_SS_Inactive[6]_i_1 
       (.I0(Cnt_SS_Inactive[5]),
        .I1(Cnt_SS_Inactive[3]),
        .I2(\Cnt_SS_Inactive[6]_i_2_n_0 ),
        .I3(Cnt_SS_Inactive[0]),
        .I4(Cnt_SS_Inactive[4]),
        .I5(Cnt_SS_Inactive[6]),
        .O(Cnt_SS_Inactive_2[6]));
  LUT2 #(
    .INIT(4'h7)) 
    \Cnt_SS_Inactive[6]_i_2 
       (.I0(Cnt_SS_Inactive[1]),
        .I1(Cnt_SS_Inactive[2]),
        .O(\Cnt_SS_Inactive[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \Cnt_SS_Inactive[7]_i_1 
       (.I0(Cnt_SS_Inactive[6]),
        .I1(\Cnt_SS_Inactive[10]_i_3_n_0 ),
        .I2(Cnt_SS_Inactive[7]),
        .O(Cnt_SS_Inactive_2[7]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \Cnt_SS_Inactive[8]_i_1 
       (.I0(Cnt_SS_Inactive[7]),
        .I1(\Cnt_SS_Inactive[10]_i_3_n_0 ),
        .I2(Cnt_SS_Inactive[6]),
        .I3(Cnt_SS_Inactive[8]),
        .O(Cnt_SS_Inactive_2[8]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \Cnt_SS_Inactive[9]_i_1 
       (.I0(Cnt_SS_Inactive[8]),
        .I1(Cnt_SS_Inactive[6]),
        .I2(\Cnt_SS_Inactive[10]_i_3_n_0 ),
        .I3(Cnt_SS_Inactive[7]),
        .I4(Cnt_SS_Inactive[9]),
        .O(Cnt_SS_Inactive_2[9]));
  FDRE #(
    .INIT(1'b0)) 
    \Cnt_SS_Inactive_reg[0] 
       (.C(SYSCLK),
        .CE(1'b1),
        .D(Cnt_SS_Inactive_2[0]),
        .Q(Cnt_SS_Inactive[0]),
        .R(Cnt_SS_Inactive0));
  FDRE #(
    .INIT(1'b0)) 
    \Cnt_SS_Inactive_reg[10] 
       (.C(SYSCLK),
        .CE(1'b1),
        .D(Cnt_SS_Inactive_2[10]),
        .Q(Cnt_SS_Inactive[10]),
        .R(Cnt_SS_Inactive0));
  FDRE #(
    .INIT(1'b0)) 
    \Cnt_SS_Inactive_reg[1] 
       (.C(SYSCLK),
        .CE(1'b1),
        .D(Cnt_SS_Inactive_2[1]),
        .Q(Cnt_SS_Inactive[1]),
        .R(Cnt_SS_Inactive0));
  FDRE #(
    .INIT(1'b0)) 
    \Cnt_SS_Inactive_reg[2] 
       (.C(SYSCLK),
        .CE(1'b1),
        .D(Cnt_SS_Inactive_2[2]),
        .Q(Cnt_SS_Inactive[2]),
        .R(Cnt_SS_Inactive0));
  FDRE #(
    .INIT(1'b0)) 
    \Cnt_SS_Inactive_reg[3] 
       (.C(SYSCLK),
        .CE(1'b1),
        .D(Cnt_SS_Inactive_2[3]),
        .Q(Cnt_SS_Inactive[3]),
        .R(Cnt_SS_Inactive0));
  FDRE #(
    .INIT(1'b0)) 
    \Cnt_SS_Inactive_reg[4] 
       (.C(SYSCLK),
        .CE(1'b1),
        .D(Cnt_SS_Inactive_2[4]),
        .Q(Cnt_SS_Inactive[4]),
        .R(Cnt_SS_Inactive0));
  FDRE #(
    .INIT(1'b0)) 
    \Cnt_SS_Inactive_reg[5] 
       (.C(SYSCLK),
        .CE(1'b1),
        .D(Cnt_SS_Inactive_2[5]),
        .Q(Cnt_SS_Inactive[5]),
        .R(Cnt_SS_Inactive0));
  FDRE #(
    .INIT(1'b0)) 
    \Cnt_SS_Inactive_reg[6] 
       (.C(SYSCLK),
        .CE(1'b1),
        .D(Cnt_SS_Inactive_2[6]),
        .Q(Cnt_SS_Inactive[6]),
        .R(Cnt_SS_Inactive0));
  FDRE #(
    .INIT(1'b0)) 
    \Cnt_SS_Inactive_reg[7] 
       (.C(SYSCLK),
        .CE(1'b1),
        .D(Cnt_SS_Inactive_2[7]),
        .Q(Cnt_SS_Inactive[7]),
        .R(Cnt_SS_Inactive0));
  FDRE #(
    .INIT(1'b0)) 
    \Cnt_SS_Inactive_reg[8] 
       (.C(SYSCLK),
        .CE(1'b1),
        .D(Cnt_SS_Inactive_2[8]),
        .Q(Cnt_SS_Inactive[8]),
        .R(Cnt_SS_Inactive0));
  FDRE #(
    .INIT(1'b0)) 
    \Cnt_SS_Inactive_reg[9] 
       (.C(SYSCLK),
        .CE(1'b1),
        .D(Cnt_SS_Inactive_2[9]),
        .Q(Cnt_SS_Inactive[9]),
        .R(Cnt_SS_Inactive0));
  LUT3 #(
    .INIT(8'h04)) 
    \D_Send[6]_i_1 
       (.I0(StC_Spi_SendRec[1]),
        .I1(StC_Spi_SendRec[0]),
        .I2(StC_Spi_SendRec[2]),
        .O(Shift_Cmd_Reg));
  FDRE #(
    .INIT(1'b0)) 
    \D_Send_reg[0] 
       (.C(SYSCLK),
        .CE(Shift_Cmd_Reg),
        .D(\Cmd_Reg_reg[2] [0]),
        .Q(D_Send[0]),
        .R(RESET));
  FDRE #(
    .INIT(1'b0)) 
    \D_Send_reg[1] 
       (.C(SYSCLK),
        .CE(Shift_Cmd_Reg),
        .D(\Cmd_Reg_reg[2] [1]),
        .Q(D_Send[1]),
        .R(RESET));
  FDRE #(
    .INIT(1'b0)) 
    \D_Send_reg[2] 
       (.C(SYSCLK),
        .CE(Shift_Cmd_Reg),
        .D(\Cmd_Reg_reg[2] [2]),
        .Q(D_Send[2]),
        .R(RESET));
  FDRE #(
    .INIT(1'b0)) 
    \D_Send_reg[3] 
       (.C(SYSCLK),
        .CE(Shift_Cmd_Reg),
        .D(\Cmd_Reg_reg[2] [3]),
        .Q(D_Send[3]),
        .R(RESET));
  FDRE #(
    .INIT(1'b0)) 
    \D_Send_reg[4] 
       (.C(SYSCLK),
        .CE(Shift_Cmd_Reg),
        .D(\Cmd_Reg_reg[2] [4]),
        .Q(D_Send[4]),
        .R(RESET));
  FDRE #(
    .INIT(1'b0)) 
    \D_Send_reg[5] 
       (.C(SYSCLK),
        .CE(Shift_Cmd_Reg),
        .D(\Cmd_Reg_reg[2] [5]),
        .Q(D_Send[5]),
        .R(RESET));
  FDRE #(
    .INIT(1'b0)) 
    \D_Send_reg[6] 
       (.C(SYSCLK),
        .CE(Shift_Cmd_Reg),
        .D(\Cmd_Reg_reg[2] [6]),
        .Q(D_Send[6]),
        .R(RESET));
  LUT2 #(
    .INIT(4'h2)) 
    Data_Ready_i_1
       (.I0(StC_Adxl_Ctrl[3]),
        .I1(RESET),
        .O(Data_Ready_i_1_n_0));
  FDRE Data_Ready_reg
       (.C(SYSCLK),
        .CE(1'b1),
        .D(Data_Ready_i_1_n_0),
        .Q(Data_Ready),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[0][0] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(Dout[0]),
        .Q(Adxl_Data_Ready),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[0][1] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(Dout[1]),
        .Q(\Data_Reg_reg_n_0_[0][1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[0][2] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(Dout[2]),
        .Q(\Data_Reg_reg_n_0_[0][2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[0][3] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(Dout[3]),
        .Q(\Data_Reg_reg_n_0_[0][3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[0][4] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(Dout[4]),
        .Q(\Data_Reg_reg_n_0_[0][4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[0][5] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(Dout[5]),
        .Q(\Data_Reg_reg_n_0_[0][5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[0][6] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(Dout[6]),
        .Q(\Data_Reg_reg_n_0_[0][6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[0][7] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(Dout[7]),
        .Q(Adxl_Conf_Err),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[1][0] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(Adxl_Data_Ready),
        .Q(\Data_Reg_reg[1] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[1][1] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(\Data_Reg_reg_n_0_[0][1] ),
        .Q(\Data_Reg_reg[1] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[1][2] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(\Data_Reg_reg_n_0_[0][2] ),
        .Q(\Data_Reg_reg[1] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[1][3] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(\Data_Reg_reg_n_0_[0][3] ),
        .Q(\Data_Reg_reg[1] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[1][4] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(\Data_Reg_reg_n_0_[0][4] ),
        .Q(\Data_Reg_reg[1] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[1][5] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(\Data_Reg_reg_n_0_[0][5] ),
        .Q(\Data_Reg_reg[1] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[1][6] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(\Data_Reg_reg_n_0_[0][6] ),
        .Q(\Data_Reg_reg[1] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[1][7] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(Adxl_Conf_Err),
        .Q(\Data_Reg_reg[1] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[2][0] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(\Data_Reg_reg[1] [0]),
        .Q(\Data_Reg_reg[2] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[2][1] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(\Data_Reg_reg[1] [1]),
        .Q(\Data_Reg_reg[2] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[2][2] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(\Data_Reg_reg[1] [2]),
        .Q(\Data_Reg_reg[2] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[2][3] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(\Data_Reg_reg[1] [3]),
        .Q(\Data_Reg_reg[2] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[2][4] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(\Data_Reg_reg[1] [4]),
        .Q(\Data_Reg_reg[2] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[2][5] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(\Data_Reg_reg[1] [5]),
        .Q(\Data_Reg_reg[2] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[2][6] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(\Data_Reg_reg[1] [6]),
        .Q(\Data_Reg_reg[2] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[2][7] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(\Data_Reg_reg[1] [7]),
        .Q(\Data_Reg_reg[2] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[3][0] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(\Data_Reg_reg[2] [0]),
        .Q(\Data_Reg_reg[3] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[3][1] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(\Data_Reg_reg[2] [1]),
        .Q(\Data_Reg_reg[3] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[3][2] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(\Data_Reg_reg[2] [2]),
        .Q(\Data_Reg_reg[3] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[3][3] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(\Data_Reg_reg[2] [3]),
        .Q(\Data_Reg_reg[3] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[3][4] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(\Data_Reg_reg[2] [4]),
        .Q(\Data_Reg_reg[3] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[3][5] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(\Data_Reg_reg[2] [5]),
        .Q(\Data_Reg_reg[3] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[3][6] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(\Data_Reg_reg[2] [6]),
        .Q(\Data_Reg_reg[3] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[3][7] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(\Data_Reg_reg[2] [7]),
        .Q(\Data_Reg_reg[3] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[4][0] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(\Data_Reg_reg[3] [0]),
        .Q(\Data_Reg_reg[4] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[4][1] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(\Data_Reg_reg[3] [1]),
        .Q(\Data_Reg_reg[4] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[4][2] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(\Data_Reg_reg[3] [2]),
        .Q(\Data_Reg_reg[4] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[4][3] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(\Data_Reg_reg[3] [3]),
        .Q(\Data_Reg_reg[4] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[4][4] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(\Data_Reg_reg[3] [4]),
        .Q(\Data_Reg_reg[4] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[4][5] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(\Data_Reg_reg[3] [5]),
        .Q(\Data_Reg_reg[4] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[4][6] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(\Data_Reg_reg[3] [6]),
        .Q(\Data_Reg_reg[4] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[4][7] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(\Data_Reg_reg[3] [7]),
        .Q(\Data_Reg_reg[4] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[5][0] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(\Data_Reg_reg[4] [0]),
        .Q(\Data_Reg_reg[5] [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[5][1] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(\Data_Reg_reg[4] [1]),
        .Q(\Data_Reg_reg[5] [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[5][2] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(\Data_Reg_reg[4] [2]),
        .Q(\Data_Reg_reg[5] [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[5][3] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(\Data_Reg_reg[4] [3]),
        .Q(\Data_Reg_reg[5] [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[5][4] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(\Data_Reg_reg[4] [4]),
        .Q(\Data_Reg_reg[5] [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[5][5] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(\Data_Reg_reg[4] [5]),
        .Q(\Data_Reg_reg[5] [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[5][6] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(\Data_Reg_reg[4] [6]),
        .Q(\Data_Reg_reg[5] [6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[5][7] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(\Data_Reg_reg[4] [7]),
        .Q(\Data_Reg_reg[5] [7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[6][0] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(\Data_Reg_reg[5] [0]),
        .Q(in[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[6][1] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(\Data_Reg_reg[5] [1]),
        .Q(in[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[6][2] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(\Data_Reg_reg[5] [2]),
        .Q(in[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[6][3] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(\Data_Reg_reg[5] [3]),
        .Q(in[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[6][4] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(\Data_Reg_reg[5] [4]),
        .Q(in[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[6][5] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(\Data_Reg_reg[5] [5]),
        .Q(in[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[6][6] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(\Data_Reg_reg[5] [6]),
        .Q(in[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[6][7] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(\Data_Reg_reg[5] [7]),
        .Q(in[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[7][0] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(in[8]),
        .Q(in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[7][1] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(in[9]),
        .Q(in[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[7][2] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(in[10]),
        .Q(in[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[7][3] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(in[11]),
        .Q(in[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[7][4] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(in[12]),
        .Q(in[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[7][5] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(in[13]),
        .Q(in[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[7][6] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(in[14]),
        .Q(in[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Data_Reg_reg[7][7] 
       (.C(SYSCLK),
        .CE(Shift_Data_Reg),
        .D(in[15]),
        .Q(in[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h000000F70000FFFF)) 
    \FSM_sequential_StC_Adxl_Ctrl[0]_i_1 
       (.I0(Cnt_Num_Reads[3]),
        .I1(Cnt_Num_Reads[2]),
        .I2(\FSM_sequential_StC_Adxl_Ctrl[0]_i_2_n_0 ),
        .I3(\FSM_sequential_StC_Adxl_Ctrl[3]_i_4_n_0 ),
        .I4(StC_Adxl_Ctrl[3]),
        .I5(StC_Adxl_Ctrl[0]),
        .O(StN_Adxl_Ctrl__0[0]));
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_StC_Adxl_Ctrl[0]_i_2 
       (.I0(Cnt_Num_Reads[0]),
        .I1(Cnt_Num_Reads[1]),
        .O(\FSM_sequential_StC_Adxl_Ctrl[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h000007F0)) 
    \FSM_sequential_StC_Adxl_Ctrl[1]_i_1 
       (.I0(Adxl_Conf_Err),
        .I1(StC_Adxl_Ctrl[2]),
        .I2(StC_Adxl_Ctrl[1]),
        .I3(StC_Adxl_Ctrl[0]),
        .I4(StC_Adxl_Ctrl[3]),
        .O(StN_Adxl_Ctrl__0[1]));
  LUT6 #(
    .INIT(64'h0A1C0E1C021C061C)) 
    \FSM_sequential_StC_Adxl_Ctrl[2]_i_1 
       (.I0(StC_Adxl_Ctrl[1]),
        .I1(StC_Adxl_Ctrl[2]),
        .I2(StC_Adxl_Ctrl[3]),
        .I3(StC_Adxl_Ctrl[0]),
        .I4(Adxl_Conf_Err),
        .I5(\FSM_sequential_StC_Adxl_Ctrl[2]_i_2_n_0 ),
        .O(StN_Adxl_Ctrl__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \FSM_sequential_StC_Adxl_Ctrl[2]_i_2 
       (.I0(Cnt_Num_Reads[3]),
        .I1(Cnt_Num_Reads[2]),
        .I2(Cnt_Num_Reads[1]),
        .I3(Cnt_Num_Reads[0]),
        .O(\FSM_sequential_StC_Adxl_Ctrl[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAFAAAEABAFABAE)) 
    \FSM_sequential_StC_Adxl_Ctrl[3]_i_1 
       (.I0(\FSM_sequential_StC_Adxl_Ctrl[3]_i_3_n_0 ),
        .I1(StC_Adxl_Ctrl[0]),
        .I2(StC_Adxl_Ctrl[3]),
        .I3(\FSM_sequential_StC_Adxl_Ctrl[3]_i_4_n_0 ),
        .I4(\FSM_sequential_StC_Adxl_Ctrl[3]_i_5_n_0 ),
        .I5(\FSM_sequential_StC_Adxl_Ctrl[3]_i_6_n_0 ),
        .O(\FSM_sequential_StC_Adxl_Ctrl[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \FSM_sequential_StC_Adxl_Ctrl[3]_i_10 
       (.I0(Sample_Rate_Div[4]),
        .I1(Sample_Rate_Div[3]),
        .I2(Sample_Rate_Div[6]),
        .I3(Sample_Rate_Div[5]),
        .O(\FSM_sequential_StC_Adxl_Ctrl[3]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \FSM_sequential_StC_Adxl_Ctrl[3]_i_11 
       (.I0(Sample_Rate_Div[0]),
        .I1(Sample_Rate_Div[15]),
        .I2(Sample_Rate_Div[16]),
        .I3(Sample_Rate_Div[2]),
        .I4(Sample_Rate_Div[1]),
        .O(\FSM_sequential_StC_Adxl_Ctrl[3]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \FSM_sequential_StC_Adxl_Ctrl[3]_i_12 
       (.I0(Sample_Rate_Div[12]),
        .I1(Sample_Rate_Div[11]),
        .I2(Sample_Rate_Div[13]),
        .I3(Sample_Rate_Div[14]),
        .O(\FSM_sequential_StC_Adxl_Ctrl[3]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \FSM_sequential_StC_Adxl_Ctrl[3]_i_13 
       (.I0(Sample_Rate_Div[8]),
        .I1(Sample_Rate_Div[7]),
        .I2(Sample_Rate_Div[10]),
        .I3(Sample_Rate_Div[9]),
        .O(\FSM_sequential_StC_Adxl_Ctrl[3]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \FSM_sequential_StC_Adxl_Ctrl[3]_i_2 
       (.I0(sel),
        .I1(Cnt_Num_Reads[0]),
        .I2(Cnt_Num_Reads[1]),
        .I3(Cnt_Num_Reads[2]),
        .I4(Cnt_Num_Reads[3]),
        .O(StN_Adxl_Ctrl__0[3]));
  LUT6 #(
    .INIT(64'hEAEAEAFAEAFAEAFA)) 
    \FSM_sequential_StC_Adxl_Ctrl[3]_i_3 
       (.I0(\FSM_sequential_StC_Adxl_Ctrl[3]_i_7_n_0 ),
        .I1(\FSM_sequential_StC_Adxl_Ctrl[3]_i_8_n_0 ),
        .I2(\FSM_sequential_StC_Adxl_Ctrl[3]_i_5_n_0 ),
        .I3(\FSM_sequential_StC_Adxl_Ctrl[3]_i_9_n_0 ),
        .I4(\Cmd_Reg[1][0]_i_2_n_0 ),
        .I5(StC_Adxl_Ctrl[1]),
        .O(\FSM_sequential_StC_Adxl_Ctrl[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_StC_Adxl_Ctrl[3]_i_4 
       (.I0(StC_Adxl_Ctrl[1]),
        .I1(StC_Adxl_Ctrl[2]),
        .O(\FSM_sequential_StC_Adxl_Ctrl[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \FSM_sequential_StC_Adxl_Ctrl[3]_i_5 
       (.I0(StC_Spi_Trans[1]),
        .I1(StC_Spi_Trans[0]),
        .I2(StC_Spi_Trans[2]),
        .O(\FSM_sequential_StC_Adxl_Ctrl[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_StC_Adxl_Ctrl[3]_i_6 
       (.I0(\FSM_sequential_StC_Adxl_Ctrl[3]_i_10_n_0 ),
        .I1(\FSM_sequential_StC_Adxl_Ctrl[3]_i_11_n_0 ),
        .I2(\FSM_sequential_StC_Adxl_Ctrl[3]_i_12_n_0 ),
        .I3(\FSM_sequential_StC_Adxl_Ctrl[3]_i_13_n_0 ),
        .O(\FSM_sequential_StC_Adxl_Ctrl[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \FSM_sequential_StC_Adxl_Ctrl[3]_i_7 
       (.I0(StC_Adxl_Ctrl[0]),
        .I1(StC_Adxl_Ctrl[3]),
        .I2(StC_Adxl_Ctrl[2]),
        .I3(StC_Adxl_Ctrl[1]),
        .O(\FSM_sequential_StC_Adxl_Ctrl[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h40404000)) 
    \FSM_sequential_StC_Adxl_Ctrl[3]_i_8 
       (.I0(StC_Adxl_Ctrl[3]),
        .I1(StC_Adxl_Ctrl[0]),
        .I2(StC_Adxl_Ctrl[2]),
        .I3(Adxl_Conf_Err),
        .I4(Adxl_Data_Ready),
        .O(\FSM_sequential_StC_Adxl_Ctrl[3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \FSM_sequential_StC_Adxl_Ctrl[3]_i_9 
       (.I0(StC_Adxl_Ctrl[0]),
        .I1(StC_Adxl_Ctrl[3]),
        .I2(StC_Adxl_Ctrl[2]),
        .O(\FSM_sequential_StC_Adxl_Ctrl[3]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "stadxlread_data:0110,stadxlformatandsum:0111,stadxlsendresetcmd:0001,stadxlread_status:0101,stadxlwaitsampleratetick:0100,stadxlwaitresetdone:0010,stadxlread_done:1000,stadxlctrlidle:0000,stadxlconf_remaining:0011" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_StC_Adxl_Ctrl_reg[0] 
       (.C(SYSCLK),
        .CE(\FSM_sequential_StC_Adxl_Ctrl[3]_i_1_n_0 ),
        .D(StN_Adxl_Ctrl__0[0]),
        .Q(StC_Adxl_Ctrl[0]),
        .R(RESET));
  (* FSM_ENCODED_STATES = "stadxlread_data:0110,stadxlformatandsum:0111,stadxlsendresetcmd:0001,stadxlread_status:0101,stadxlwaitsampleratetick:0100,stadxlwaitresetdone:0010,stadxlread_done:1000,stadxlctrlidle:0000,stadxlconf_remaining:0011" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_StC_Adxl_Ctrl_reg[1] 
       (.C(SYSCLK),
        .CE(\FSM_sequential_StC_Adxl_Ctrl[3]_i_1_n_0 ),
        .D(StN_Adxl_Ctrl__0[1]),
        .Q(StC_Adxl_Ctrl[1]),
        .R(RESET));
  (* FSM_ENCODED_STATES = "stadxlread_data:0110,stadxlformatandsum:0111,stadxlsendresetcmd:0001,stadxlread_status:0101,stadxlwaitsampleratetick:0100,stadxlwaitresetdone:0010,stadxlread_done:1000,stadxlctrlidle:0000,stadxlconf_remaining:0011" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_StC_Adxl_Ctrl_reg[2] 
       (.C(SYSCLK),
        .CE(\FSM_sequential_StC_Adxl_Ctrl[3]_i_1_n_0 ),
        .D(StN_Adxl_Ctrl__0[2]),
        .Q(StC_Adxl_Ctrl[2]),
        .R(RESET));
  (* FSM_ENCODED_STATES = "stadxlread_data:0110,stadxlformatandsum:0111,stadxlsendresetcmd:0001,stadxlread_status:0101,stadxlwaitsampleratetick:0100,stadxlwaitresetdone:0010,stadxlread_done:1000,stadxlctrlidle:0000,stadxlconf_remaining:0011" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_StC_Adxl_Ctrl_reg[3] 
       (.C(SYSCLK),
        .CE(\FSM_sequential_StC_Adxl_Ctrl[3]_i_1_n_0 ),
        .D(StN_Adxl_Ctrl__0[3]),
        .Q(StC_Adxl_Ctrl[3]),
        .R(RESET));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \FSM_sequential_StC_Spi_SendRec[0]_i_2 
       (.I0(StC_Spi_Trans[2]),
        .I1(StC_Spi_Trans[1]),
        .I2(StC_Spi_Trans[0]),
        .O(\FSM_sequential_StC_Spi_SendRec[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_StC_Spi_SendRec[1]_i_3 
       (.I0(\Cnt_Bytes_Rec_reg_n_0_[0] ),
        .I1(\Cnt_Bytes_Rec_reg_n_0_[1] ),
        .O(\FSM_sequential_StC_Spi_SendRec[1]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "stspisendrecidle:000,stspisendstartw:010,stspiwaitondonew:011,stspiwaitondoner:101,stspipreparecmd:001,stspisendstartr:100,stspisendrecdone:110" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_StC_Spi_SendRec_reg[0] 
       (.C(SYSCLK),
        .CE(1'b1),
        .D(SPI_Interface_n_1),
        .Q(StC_Spi_SendRec[0]),
        .R(RESET));
  (* FSM_ENCODED_STATES = "stspisendrecidle:000,stspisendstartw:010,stspiwaitondonew:011,stspiwaitondoner:101,stspipreparecmd:001,stspisendstartr:100,stspisendrecdone:110" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_StC_Spi_SendRec_reg[1] 
       (.C(SYSCLK),
        .CE(1'b1),
        .D(SPI_Interface_n_0),
        .Q(StC_Spi_SendRec[1]),
        .R(RESET));
  (* FSM_ENCODED_STATES = "stspisendrecidle:000,stspisendstartw:010,stspiwaitondonew:011,stspiwaitondoner:101,stspipreparecmd:001,stspisendstartr:100,stspisendrecdone:110" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_StC_Spi_SendRec_reg[2] 
       (.C(SYSCLK),
        .CE(1'b1),
        .D(SPI_Interface_n_2),
        .Q(StC_Spi_SendRec[2]),
        .R(RESET));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h34)) 
    \FSM_sequential_StC_Spi_Trans[0]_i_1 
       (.I0(StC_Spi_Trans[2]),
        .I1(\FSM_sequential_StC_Spi_Trans[2]_i_2_n_0 ),
        .I2(StC_Spi_Trans[0]),
        .O(\FSM_sequential_StC_Spi_Trans[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h1F20)) 
    \FSM_sequential_StC_Spi_Trans[1]_i_1 
       (.I0(StC_Spi_Trans[0]),
        .I1(StC_Spi_Trans[2]),
        .I2(\FSM_sequential_StC_Spi_Trans[2]_i_2_n_0 ),
        .I3(StC_Spi_Trans[1]),
        .O(\FSM_sequential_StC_Spi_Trans[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0F80)) 
    \FSM_sequential_StC_Spi_Trans[2]_i_1 
       (.I0(StC_Spi_Trans[1]),
        .I1(StC_Spi_Trans[0]),
        .I2(\FSM_sequential_StC_Spi_Trans[2]_i_2_n_0 ),
        .I3(StC_Spi_Trans[2]),
        .O(\FSM_sequential_StC_Spi_Trans[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFAAAE)) 
    \FSM_sequential_StC_Spi_Trans[2]_i_2 
       (.I0(\FSM_sequential_StC_Spi_Trans[2]_i_3_n_0 ),
        .I1(\FSM_sequential_StC_Spi_Trans[2]_i_4_n_0 ),
        .I2(\FSM_sequential_StC_Spi_Trans[2]_i_5_n_0 ),
        .I3(\Cnt_SS_Inactive[0]_i_2_n_0 ),
        .I4(\FSM_sequential_StC_Spi_Trans[2]_i_6_n_0 ),
        .O(\FSM_sequential_StC_Spi_Trans[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000004000FFFF00)) 
    \FSM_sequential_StC_Spi_Trans[2]_i_3 
       (.I0(StC_Spi_SendRec[0]),
        .I1(StC_Spi_SendRec[2]),
        .I2(StC_Spi_SendRec[1]),
        .I3(StC_Spi_Trans[2]),
        .I4(StC_Spi_Trans[0]),
        .I5(StC_Spi_Trans[1]),
        .O(\FSM_sequential_StC_Spi_Trans[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_sequential_StC_Spi_Trans[2]_i_4 
       (.I0(StC_Spi_Trans[2]),
        .I1(StC_Spi_Trans[0]),
        .I2(Cnt_SS_Inactive[0]),
        .O(\FSM_sequential_StC_Spi_Trans[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \FSM_sequential_StC_Spi_Trans[2]_i_5 
       (.I0(Cnt_SS_Inactive[6]),
        .I1(Cnt_SS_Inactive[5]),
        .I2(Cnt_SS_Inactive[8]),
        .I3(Cnt_SS_Inactive[7]),
        .O(\FSM_sequential_StC_Spi_Trans[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001444)) 
    \FSM_sequential_StC_Spi_Trans[2]_i_6 
       (.I0(StC_Adxl_Ctrl[3]),
        .I1(StC_Adxl_Ctrl[0]),
        .I2(StC_Adxl_Ctrl[2]),
        .I3(StC_Adxl_Ctrl[1]),
        .I4(StC_Spi_Trans[2]),
        .I5(StC_Spi_Trans[1]),
        .O(\FSM_sequential_StC_Spi_Trans[2]_i_6_n_0 ));
  (* FSM_ENCODED_STATES = "stspitransidle:000,stspiprepandsendcmd:001,stspiwaitondonesr:010,stspiwaitforssinact:011,stspitransdone:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_StC_Spi_Trans_reg[0] 
       (.C(SYSCLK),
        .CE(1'b1),
        .D(\FSM_sequential_StC_Spi_Trans[0]_i_1_n_0 ),
        .Q(StC_Spi_Trans[0]),
        .R(RESET));
  (* FSM_ENCODED_STATES = "stspitransidle:000,stspiprepandsendcmd:001,stspiwaitondonesr:010,stspiwaitforssinact:011,stspitransdone:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_StC_Spi_Trans_reg[1] 
       (.C(SYSCLK),
        .CE(1'b1),
        .D(\FSM_sequential_StC_Spi_Trans[1]_i_1_n_0 ),
        .Q(StC_Spi_Trans[1]),
        .R(RESET));
  (* FSM_ENCODED_STATES = "stspitransidle:000,stspiprepandsendcmd:001,stspiwaitondonesr:010,stspiwaitforssinact:011,stspitransdone:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_StC_Spi_Trans_reg[2] 
       (.C(SYSCLK),
        .CE(1'b1),
        .D(\FSM_sequential_StC_Spi_Trans[2]_i_1_n_0 ),
        .Q(StC_Spi_Trans[2]),
        .R(RESET));
  ADXL362Control_0_SPI_If SPI_Interface
       (.\Cnt_Bytes_Rec_reg[2] (SPI_Interface_n_0),
        .Done_reg_0(SPI_Interface_n_1),
        .Done_reg_1(SPI_Interface_n_2),
        .\Dout_reg[7]_0 (Dout),
        .\FSM_sequential_StC_Spi_SendRec_reg[0] (\FSM_sequential_StC_Spi_SendRec[0]_i_2_n_0 ),
        .\FSM_sequential_StC_Spi_SendRec_reg[1] (\FSM_sequential_StC_Spi_SendRec[1]_i_3_n_0 ),
        .\FSM_sequential_StC_Spi_SendRec_reg[1]_0 (\Cnt_Bytes_Rec_reg_n_0_[2] ),
        .\FSM_sequential_StC_Spi_SendRec_reg[2] (\Cnt_Bytes_Sent_reg_n_0_[1] ),
        .\FSM_sequential_StC_Spi_SendRec_reg[2]_0 (\Cnt_Bytes_Sent_reg_n_0_[0] ),
        .MISO(MISO),
        .MOSI(MOSI),
        .Q(D_Send),
        .RESET(RESET),
        .SCLK(SCLK),
        .SPI_RnW(SPI_RnW),
        .SS(SS),
        .SYSCLK(SYSCLK),
        .Shift_Data_Reg(Shift_Data_Reg),
        .StC_Spi_SendRec(StC_Spi_SendRec),
        .StC_Spi_Trans(StC_Spi_Trans));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0048)) 
    SPI_RnW_i_1
       (.I0(StC_Adxl_Ctrl[1]),
        .I1(StC_Adxl_Ctrl[2]),
        .I2(StC_Adxl_Ctrl[0]),
        .I3(StC_Adxl_Ctrl[3]),
        .O(Cnt_Bytes_Sent1));
  FDRE #(
    .INIT(1'b0)) 
    SPI_RnW_reg
       (.C(SYSCLK),
        .CE(1'b1),
        .D(Cnt_Bytes_Sent1),
        .Q(SPI_RnW),
        .R(1'b0));
  CARRY4 Sample_Rate_Div0_carry
       (.CI(1'b0),
        .CO({Sample_Rate_Div0_carry_n_0,Sample_Rate_Div0_carry_n_1,Sample_Rate_Div0_carry_n_2,Sample_Rate_Div0_carry_n_3}),
        .CYINIT(Sample_Rate_Div[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(Sample_Rate_Div[4:1]));
  CARRY4 Sample_Rate_Div0_carry__0
       (.CI(Sample_Rate_Div0_carry_n_0),
        .CO({Sample_Rate_Div0_carry__0_n_0,Sample_Rate_Div0_carry__0_n_1,Sample_Rate_Div0_carry__0_n_2,Sample_Rate_Div0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(Sample_Rate_Div[8:5]));
  CARRY4 Sample_Rate_Div0_carry__1
       (.CI(Sample_Rate_Div0_carry__0_n_0),
        .CO({Sample_Rate_Div0_carry__1_n_0,Sample_Rate_Div0_carry__1_n_1,Sample_Rate_Div0_carry__1_n_2,Sample_Rate_Div0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(Sample_Rate_Div[12:9]));
  CARRY4 Sample_Rate_Div0_carry__2
       (.CI(Sample_Rate_Div0_carry__1_n_0),
        .CO({NLW_Sample_Rate_Div0_carry__2_CO_UNCONNECTED[3],Sample_Rate_Div0_carry__2_n_1,Sample_Rate_Div0_carry__2_n_2,Sample_Rate_Div0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(Sample_Rate_Div[16:13]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \Sample_Rate_Div[0]_i_1 
       (.I0(Sample_Rate_Div[0]),
        .O(Sample_Rate_Div_3[0]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Sample_Rate_Div[10]_i_1 
       (.I0(\FSM_sequential_StC_Adxl_Ctrl[3]_i_6_n_0 ),
        .I1(data0[10]),
        .O(Sample_Rate_Div_3[10]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Sample_Rate_Div[11]_i_1 
       (.I0(\FSM_sequential_StC_Adxl_Ctrl[3]_i_6_n_0 ),
        .I1(data0[11]),
        .O(Sample_Rate_Div_3[11]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Sample_Rate_Div[12]_i_1 
       (.I0(\FSM_sequential_StC_Adxl_Ctrl[3]_i_6_n_0 ),
        .I1(data0[12]),
        .O(Sample_Rate_Div_3[12]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Sample_Rate_Div[13]_i_1 
       (.I0(\FSM_sequential_StC_Adxl_Ctrl[3]_i_6_n_0 ),
        .I1(data0[13]),
        .O(Sample_Rate_Div_3[13]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Sample_Rate_Div[14]_i_1 
       (.I0(\FSM_sequential_StC_Adxl_Ctrl[3]_i_6_n_0 ),
        .I1(data0[14]),
        .O(Sample_Rate_Div_3[14]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Sample_Rate_Div[15]_i_1 
       (.I0(\FSM_sequential_StC_Adxl_Ctrl[3]_i_6_n_0 ),
        .I1(data0[15]),
        .O(Sample_Rate_Div_3[15]));
  LUT4 #(
    .INIT(16'hFF2A)) 
    \Sample_Rate_Div[16]_i_1 
       (.I0(StC_Adxl_Ctrl[0]),
        .I1(StC_Adxl_Ctrl[1]),
        .I2(StC_Adxl_Ctrl[2]),
        .I3(StC_Adxl_Ctrl[3]),
        .O(Reset_Sample_Rate_Div));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Sample_Rate_Div[16]_i_2 
       (.I0(\FSM_sequential_StC_Adxl_Ctrl[3]_i_6_n_0 ),
        .I1(data0[16]),
        .O(Sample_Rate_Div_3[16]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Sample_Rate_Div[1]_i_1 
       (.I0(\FSM_sequential_StC_Adxl_Ctrl[3]_i_6_n_0 ),
        .I1(data0[1]),
        .O(Sample_Rate_Div_3[1]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Sample_Rate_Div[2]_i_1 
       (.I0(\FSM_sequential_StC_Adxl_Ctrl[3]_i_6_n_0 ),
        .I1(data0[2]),
        .O(Sample_Rate_Div_3[2]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Sample_Rate_Div[3]_i_1 
       (.I0(\FSM_sequential_StC_Adxl_Ctrl[3]_i_6_n_0 ),
        .I1(data0[3]),
        .O(Sample_Rate_Div_3[3]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Sample_Rate_Div[4]_i_1 
       (.I0(\FSM_sequential_StC_Adxl_Ctrl[3]_i_6_n_0 ),
        .I1(data0[4]),
        .O(Sample_Rate_Div_3[4]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Sample_Rate_Div[5]_i_1 
       (.I0(\FSM_sequential_StC_Adxl_Ctrl[3]_i_6_n_0 ),
        .I1(data0[5]),
        .O(Sample_Rate_Div_3[5]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Sample_Rate_Div[6]_i_1 
       (.I0(\FSM_sequential_StC_Adxl_Ctrl[3]_i_6_n_0 ),
        .I1(data0[6]),
        .O(Sample_Rate_Div_3[6]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Sample_Rate_Div[7]_i_1 
       (.I0(\FSM_sequential_StC_Adxl_Ctrl[3]_i_6_n_0 ),
        .I1(data0[7]),
        .O(Sample_Rate_Div_3[7]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Sample_Rate_Div[8]_i_1 
       (.I0(\FSM_sequential_StC_Adxl_Ctrl[3]_i_6_n_0 ),
        .I1(data0[8]),
        .O(Sample_Rate_Div_3[8]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \Sample_Rate_Div[9]_i_1 
       (.I0(\FSM_sequential_StC_Adxl_Ctrl[3]_i_6_n_0 ),
        .I1(data0[9]),
        .O(Sample_Rate_Div_3[9]));
  FDRE #(
    .INIT(1'b0)) 
    \Sample_Rate_Div_reg[0] 
       (.C(SYSCLK),
        .CE(1'b1),
        .D(Sample_Rate_Div_3[0]),
        .Q(Sample_Rate_Div[0]),
        .R(Reset_Sample_Rate_Div));
  FDRE #(
    .INIT(1'b0)) 
    \Sample_Rate_Div_reg[10] 
       (.C(SYSCLK),
        .CE(1'b1),
        .D(Sample_Rate_Div_3[10]),
        .Q(Sample_Rate_Div[10]),
        .R(Reset_Sample_Rate_Div));
  FDRE #(
    .INIT(1'b0)) 
    \Sample_Rate_Div_reg[11] 
       (.C(SYSCLK),
        .CE(1'b1),
        .D(Sample_Rate_Div_3[11]),
        .Q(Sample_Rate_Div[11]),
        .R(Reset_Sample_Rate_Div));
  FDRE #(
    .INIT(1'b0)) 
    \Sample_Rate_Div_reg[12] 
       (.C(SYSCLK),
        .CE(1'b1),
        .D(Sample_Rate_Div_3[12]),
        .Q(Sample_Rate_Div[12]),
        .R(Reset_Sample_Rate_Div));
  FDRE #(
    .INIT(1'b0)) 
    \Sample_Rate_Div_reg[13] 
       (.C(SYSCLK),
        .CE(1'b1),
        .D(Sample_Rate_Div_3[13]),
        .Q(Sample_Rate_Div[13]),
        .R(Reset_Sample_Rate_Div));
  FDRE #(
    .INIT(1'b0)) 
    \Sample_Rate_Div_reg[14] 
       (.C(SYSCLK),
        .CE(1'b1),
        .D(Sample_Rate_Div_3[14]),
        .Q(Sample_Rate_Div[14]),
        .R(Reset_Sample_Rate_Div));
  FDRE #(
    .INIT(1'b0)) 
    \Sample_Rate_Div_reg[15] 
       (.C(SYSCLK),
        .CE(1'b1),
        .D(Sample_Rate_Div_3[15]),
        .Q(Sample_Rate_Div[15]),
        .R(Reset_Sample_Rate_Div));
  FDRE #(
    .INIT(1'b0)) 
    \Sample_Rate_Div_reg[16] 
       (.C(SYSCLK),
        .CE(1'b1),
        .D(Sample_Rate_Div_3[16]),
        .Q(Sample_Rate_Div[16]),
        .R(Reset_Sample_Rate_Div));
  FDRE #(
    .INIT(1'b0)) 
    \Sample_Rate_Div_reg[1] 
       (.C(SYSCLK),
        .CE(1'b1),
        .D(Sample_Rate_Div_3[1]),
        .Q(Sample_Rate_Div[1]),
        .R(Reset_Sample_Rate_Div));
  FDRE #(
    .INIT(1'b0)) 
    \Sample_Rate_Div_reg[2] 
       (.C(SYSCLK),
        .CE(1'b1),
        .D(Sample_Rate_Div_3[2]),
        .Q(Sample_Rate_Div[2]),
        .R(Reset_Sample_Rate_Div));
  FDRE #(
    .INIT(1'b0)) 
    \Sample_Rate_Div_reg[3] 
       (.C(SYSCLK),
        .CE(1'b1),
        .D(Sample_Rate_Div_3[3]),
        .Q(Sample_Rate_Div[3]),
        .R(Reset_Sample_Rate_Div));
  FDRE #(
    .INIT(1'b0)) 
    \Sample_Rate_Div_reg[4] 
       (.C(SYSCLK),
        .CE(1'b1),
        .D(Sample_Rate_Div_3[4]),
        .Q(Sample_Rate_Div[4]),
        .R(Reset_Sample_Rate_Div));
  FDRE #(
    .INIT(1'b0)) 
    \Sample_Rate_Div_reg[5] 
       (.C(SYSCLK),
        .CE(1'b1),
        .D(Sample_Rate_Div_3[5]),
        .Q(Sample_Rate_Div[5]),
        .R(Reset_Sample_Rate_Div));
  FDRE #(
    .INIT(1'b0)) 
    \Sample_Rate_Div_reg[6] 
       (.C(SYSCLK),
        .CE(1'b1),
        .D(Sample_Rate_Div_3[6]),
        .Q(Sample_Rate_Div[6]),
        .R(Reset_Sample_Rate_Div));
  FDRE #(
    .INIT(1'b0)) 
    \Sample_Rate_Div_reg[7] 
       (.C(SYSCLK),
        .CE(1'b1),
        .D(Sample_Rate_Div_3[7]),
        .Q(Sample_Rate_Div[7]),
        .R(Reset_Sample_Rate_Div));
  FDRE #(
    .INIT(1'b0)) 
    \Sample_Rate_Div_reg[8] 
       (.C(SYSCLK),
        .CE(1'b1),
        .D(Sample_Rate_Div_3[8]),
        .Q(Sample_Rate_Div[8]),
        .R(Reset_Sample_Rate_Div));
  FDRE #(
    .INIT(1'b0)) 
    \Sample_Rate_Div_reg[9] 
       (.C(SYSCLK),
        .CE(1'b1),
        .D(Sample_Rate_Div_3[9]),
        .Q(Sample_Rate_Div[9]),
        .R(Reset_Sample_Rate_Div));
endmodule

(* ORIG_REF_NAME = "SPI_If" *) 
module ADXL362Control_0_SPI_If
   (\Cnt_Bytes_Rec_reg[2] ,
    Done_reg_0,
    Done_reg_1,
    SS,
    SCLK,
    Shift_Data_Reg,
    MOSI,
    \Dout_reg[7]_0 ,
    SYSCLK,
    \FSM_sequential_StC_Spi_SendRec_reg[1] ,
    \FSM_sequential_StC_Spi_SendRec_reg[1]_0 ,
    StC_Spi_SendRec,
    \FSM_sequential_StC_Spi_SendRec_reg[0] ,
    StC_Spi_Trans,
    RESET,
    SPI_RnW,
    \FSM_sequential_StC_Spi_SendRec_reg[2] ,
    \FSM_sequential_StC_Spi_SendRec_reg[2]_0 ,
    Q,
    MISO);
  output \Cnt_Bytes_Rec_reg[2] ;
  output Done_reg_0;
  output Done_reg_1;
  output SS;
  output SCLK;
  output Shift_Data_Reg;
  output MOSI;
  output [7:0]\Dout_reg[7]_0 ;
  input SYSCLK;
  input \FSM_sequential_StC_Spi_SendRec_reg[1] ;
  input \FSM_sequential_StC_Spi_SendRec_reg[1]_0 ;
  input [2:0]StC_Spi_SendRec;
  input \FSM_sequential_StC_Spi_SendRec_reg[0] ;
  input [2:0]StC_Spi_Trans;
  input RESET;
  input SPI_RnW;
  input \FSM_sequential_StC_Spi_SendRec_reg[2] ;
  input \FSM_sequential_StC_Spi_SendRec_reg[2]_0 ;
  input [6:0]Q;
  input MISO;

  wire [2:0]CntBits;
  wire \CntBits[0]_i_1_n_0 ;
  wire \CntBits[1]_i_1_n_0 ;
  wire \CntBits[2]_i_1_n_0 ;
  wire \CntBits[2]_i_2_n_0 ;
  wire \Cnt_Bytes_Rec_reg[2] ;
  wire DONE_1;
  wire DONE_1_i_1_n_0;
  wire Done;
  wire Done_reg_0;
  wire Done_reg_1;
  wire [7:0]\Dout_reg[7]_0 ;
  wire \FSM_sequential_StC[0]_i_1_n_0 ;
  wire \FSM_sequential_StC[1]_i_1_n_0 ;
  wire \FSM_sequential_StC[1]_i_2_n_0 ;
  wire \FSM_sequential_StC[1]_i_3_n_0 ;
  wire \FSM_sequential_StC[1]_i_4_n_0 ;
  wire \FSM_sequential_StC[1]_i_5_n_0 ;
  wire \FSM_sequential_StC_Spi_SendRec[1]_i_2_n_0 ;
  wire \FSM_sequential_StC_Spi_SendRec[1]_i_4_n_0 ;
  wire \FSM_sequential_StC_Spi_SendRec[1]_i_5_n_0 ;
  wire \FSM_sequential_StC_Spi_SendRec[2]_i_2_n_0 ;
  wire \FSM_sequential_StC_Spi_SendRec_reg[0] ;
  wire \FSM_sequential_StC_Spi_SendRec_reg[1] ;
  wire \FSM_sequential_StC_Spi_SendRec_reg[1]_0 ;
  wire \FSM_sequential_StC_Spi_SendRec_reg[2] ;
  wire \FSM_sequential_StC_Spi_SendRec_reg[2]_0 ;
  wire MISO;
  wire [7:0]MISO_REG;
  wire MOSI;
  wire [6:0]MOSI_REG;
  wire \MOSI_REG[7]_i_1_n_0 ;
  wire [6:0]Q;
  wire RESET;
  wire SCLK;
  wire SCLK_2X_DIV0;
  wire [5:0]SCLK_2X_DIV_reg;
  wire SCLK_2X_TICK;
  wire SCLK_INT;
  wire SCLK_INT_i_1_n_0;
  wire SHIFT_TICK_IN;
  wire SPI_RnW;
  wire SS;
  wire SYSCLK;
  wire Shift_Data_Reg;
  wire [1:0]StC;
  wire [2:0]StC_Spi_SendRec;
  wire [2:0]StC_Spi_Trans;
  wire [5:0]p_0_in;
  wire [7:0]p_1_in;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hAA6AAA00)) 
    \CntBits[0]_i_1 
       (.I0(CntBits[0]),
        .I1(SCLK_INT),
        .I2(SCLK_2X_TICK),
        .I3(StC[0]),
        .I4(StC[1]),
        .O(\CntBits[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAA6AAA00)) 
    \CntBits[1]_i_1 
       (.I0(CntBits[1]),
        .I1(\CntBits[2]_i_2_n_0 ),
        .I2(CntBits[0]),
        .I3(StC[0]),
        .I4(StC[1]),
        .O(\CntBits[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA6AAAAAAA0000)) 
    \CntBits[2]_i_1 
       (.I0(CntBits[2]),
        .I1(\CntBits[2]_i_2_n_0 ),
        .I2(CntBits[0]),
        .I3(CntBits[1]),
        .I4(StC[0]),
        .I5(StC[1]),
        .O(\CntBits[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \CntBits[2]_i_2 
       (.I0(SCLK_2X_TICK),
        .I1(SCLK_INT),
        .O(\CntBits[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \CntBits_reg[0] 
       (.C(SYSCLK),
        .CE(1'b1),
        .D(\CntBits[0]_i_1_n_0 ),
        .Q(CntBits[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CntBits_reg[1] 
       (.C(SYSCLK),
        .CE(1'b1),
        .D(\CntBits[1]_i_1_n_0 ),
        .Q(CntBits[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \CntBits_reg[2] 
       (.C(SYSCLK),
        .CE(1'b1),
        .D(\CntBits[2]_i_1_n_0 ),
        .Q(CntBits[2]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    DONE_1_i_1
       (.I0(StC[0]),
        .I1(StC[1]),
        .O(DONE_1_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    DONE_1_reg
       (.C(SYSCLK),
        .CE(1'b1),
        .D(DONE_1_i_1_n_0),
        .Q(DONE_1),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \Data_Reg[0][7]_i_1 
       (.I0(Done),
        .I1(StC_Spi_SendRec[0]),
        .I2(StC_Spi_SendRec[1]),
        .I3(StC_Spi_SendRec[2]),
        .O(Shift_Data_Reg));
  FDRE Done_reg
       (.C(SYSCLK),
        .CE(1'b1),
        .D(DONE_1),
        .Q(Done),
        .R(1'b0));
  FDRE \Dout_reg[0] 
       (.C(SYSCLK),
        .CE(DONE_1_i_1_n_0),
        .D(MISO_REG[0]),
        .Q(\Dout_reg[7]_0 [0]),
        .R(1'b0));
  FDRE \Dout_reg[1] 
       (.C(SYSCLK),
        .CE(DONE_1_i_1_n_0),
        .D(MISO_REG[1]),
        .Q(\Dout_reg[7]_0 [1]),
        .R(1'b0));
  FDRE \Dout_reg[2] 
       (.C(SYSCLK),
        .CE(DONE_1_i_1_n_0),
        .D(MISO_REG[2]),
        .Q(\Dout_reg[7]_0 [2]),
        .R(1'b0));
  FDRE \Dout_reg[3] 
       (.C(SYSCLK),
        .CE(DONE_1_i_1_n_0),
        .D(MISO_REG[3]),
        .Q(\Dout_reg[7]_0 [3]),
        .R(1'b0));
  FDRE \Dout_reg[4] 
       (.C(SYSCLK),
        .CE(DONE_1_i_1_n_0),
        .D(MISO_REG[4]),
        .Q(\Dout_reg[7]_0 [4]),
        .R(1'b0));
  FDRE \Dout_reg[5] 
       (.C(SYSCLK),
        .CE(DONE_1_i_1_n_0),
        .D(MISO_REG[5]),
        .Q(\Dout_reg[7]_0 [5]),
        .R(1'b0));
  FDRE \Dout_reg[6] 
       (.C(SYSCLK),
        .CE(DONE_1_i_1_n_0),
        .D(MISO_REG[6]),
        .Q(\Dout_reg[7]_0 [6]),
        .R(1'b0));
  FDRE \Dout_reg[7] 
       (.C(SYSCLK),
        .CE(DONE_1_i_1_n_0),
        .D(MISO_REG[7]),
        .Q(\Dout_reg[7]_0 [7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \FSM_sequential_StC[0]_i_1 
       (.I0(StC[0]),
        .I1(\FSM_sequential_StC[1]_i_2_n_0 ),
        .I2(RESET),
        .O(\FSM_sequential_StC[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \FSM_sequential_StC[1]_i_1 
       (.I0(StC[1]),
        .I1(\FSM_sequential_StC[1]_i_2_n_0 ),
        .I2(StC[0]),
        .I3(RESET),
        .O(\FSM_sequential_StC[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFAAAEAAA)) 
    \FSM_sequential_StC[1]_i_2 
       (.I0(\FSM_sequential_StC[1]_i_3_n_0 ),
        .I1(StC[0]),
        .I2(SCLK_2X_TICK),
        .I3(SCLK_INT),
        .I4(\FSM_sequential_StC[1]_i_4_n_0 ),
        .I5(\FSM_sequential_StC[1]_i_5_n_0 ),
        .O(\FSM_sequential_StC[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00010100)) 
    \FSM_sequential_StC[1]_i_3 
       (.I0(StC_Spi_SendRec[0]),
        .I1(StC[0]),
        .I2(StC[1]),
        .I3(StC_Spi_SendRec[1]),
        .I4(StC_Spi_SendRec[2]),
        .O(\FSM_sequential_StC[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_sequential_StC[1]_i_4 
       (.I0(CntBits[2]),
        .I1(StC[1]),
        .I2(CntBits[1]),
        .I3(CntBits[0]),
        .O(\FSM_sequential_StC[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h88888CC8)) 
    \FSM_sequential_StC[1]_i_5 
       (.I0(StC[1]),
        .I1(StC[0]),
        .I2(StC_Spi_Trans[0]),
        .I3(StC_Spi_Trans[1]),
        .I4(StC_Spi_Trans[2]),
        .O(\FSM_sequential_StC[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFAF00FF0F00FF33)) 
    \FSM_sequential_StC_Spi_SendRec[0]_i_1 
       (.I0(\FSM_sequential_StC_Spi_SendRec[2]_i_2_n_0 ),
        .I1(\FSM_sequential_StC_Spi_SendRec_reg[0] ),
        .I2(Done),
        .I3(StC_Spi_SendRec[2]),
        .I4(StC_Spi_SendRec[0]),
        .I5(StC_Spi_SendRec[1]),
        .O(Done_reg_0));
  LUT6 #(
    .INIT(64'hFF02FFFFFF020000)) 
    \FSM_sequential_StC_Spi_SendRec[1]_i_1 
       (.I0(\FSM_sequential_StC_Spi_SendRec[1]_i_2_n_0 ),
        .I1(\FSM_sequential_StC_Spi_SendRec_reg[1] ),
        .I2(\FSM_sequential_StC_Spi_SendRec_reg[1]_0 ),
        .I3(\FSM_sequential_StC_Spi_SendRec[1]_i_4_n_0 ),
        .I4(\FSM_sequential_StC_Spi_SendRec[1]_i_5_n_0 ),
        .I5(StC_Spi_SendRec[1]),
        .O(\Cnt_Bytes_Rec_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \FSM_sequential_StC_Spi_SendRec[1]_i_2 
       (.I0(StC_Spi_SendRec[1]),
        .I1(StC_Spi_SendRec[0]),
        .I2(Done),
        .O(\FSM_sequential_StC_Spi_SendRec[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h05070A0A)) 
    \FSM_sequential_StC_Spi_SendRec[1]_i_4 
       (.I0(StC_Spi_SendRec[1]),
        .I1(\FSM_sequential_StC_Spi_SendRec[2]_i_2_n_0 ),
        .I2(StC_Spi_SendRec[2]),
        .I3(SPI_RnW),
        .I4(StC_Spi_SendRec[0]),
        .O(\FSM_sequential_StC_Spi_SendRec[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h0CFFCFF5)) 
    \FSM_sequential_StC_Spi_SendRec[1]_i_5 
       (.I0(\FSM_sequential_StC_Spi_SendRec_reg[0] ),
        .I1(Done),
        .I2(StC_Spi_SendRec[2]),
        .I3(StC_Spi_SendRec[0]),
        .I4(StC_Spi_SendRec[1]),
        .O(\FSM_sequential_StC_Spi_SendRec[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hF400F0F0)) 
    \FSM_sequential_StC_Spi_SendRec[2]_i_1 
       (.I0(\FSM_sequential_StC_Spi_SendRec[2]_i_2_n_0 ),
        .I1(Done),
        .I2(StC_Spi_SendRec[2]),
        .I3(StC_Spi_SendRec[0]),
        .I4(StC_Spi_SendRec[1]),
        .O(Done_reg_1));
  LUT3 #(
    .INIT(8'hFD)) 
    \FSM_sequential_StC_Spi_SendRec[2]_i_2 
       (.I0(Done),
        .I1(\FSM_sequential_StC_Spi_SendRec_reg[2] ),
        .I2(\FSM_sequential_StC_Spi_SendRec_reg[2]_0 ),
        .O(\FSM_sequential_StC_Spi_SendRec[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "stidle:00,stprepare:01,stshift:10,stdone:11," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_StC_reg[0] 
       (.C(SYSCLK),
        .CE(1'b1),
        .D(\FSM_sequential_StC[0]_i_1_n_0 ),
        .Q(StC[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "stidle:00,stprepare:01,stshift:10,stdone:11," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_StC_reg[1] 
       (.C(SYSCLK),
        .CE(1'b1),
        .D(\FSM_sequential_StC[1]_i_1_n_0 ),
        .Q(StC[1]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0400)) 
    \MISO_REG[7]_i_1 
       (.I0(SCLK_INT),
        .I1(StC[1]),
        .I2(StC[0]),
        .I3(SCLK_2X_TICK),
        .O(SHIFT_TICK_IN));
  FDRE #(
    .INIT(1'b0)) 
    \MISO_REG_reg[0] 
       (.C(SYSCLK),
        .CE(SHIFT_TICK_IN),
        .D(MISO),
        .Q(MISO_REG[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MISO_REG_reg[1] 
       (.C(SYSCLK),
        .CE(SHIFT_TICK_IN),
        .D(MISO_REG[0]),
        .Q(MISO_REG[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MISO_REG_reg[2] 
       (.C(SYSCLK),
        .CE(SHIFT_TICK_IN),
        .D(MISO_REG[1]),
        .Q(MISO_REG[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MISO_REG_reg[3] 
       (.C(SYSCLK),
        .CE(SHIFT_TICK_IN),
        .D(MISO_REG[2]),
        .Q(MISO_REG[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MISO_REG_reg[4] 
       (.C(SYSCLK),
        .CE(SHIFT_TICK_IN),
        .D(MISO_REG[3]),
        .Q(MISO_REG[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MISO_REG_reg[5] 
       (.C(SYSCLK),
        .CE(SHIFT_TICK_IN),
        .D(MISO_REG[4]),
        .Q(MISO_REG[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MISO_REG_reg[6] 
       (.C(SYSCLK),
        .CE(SHIFT_TICK_IN),
        .D(MISO_REG[5]),
        .Q(MISO_REG[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MISO_REG_reg[7] 
       (.C(SYSCLK),
        .CE(SHIFT_TICK_IN),
        .D(MISO_REG[6]),
        .Q(MISO_REG[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MOSI_REG[0]_i_1 
       (.I0(Q[0]),
        .I1(StC[1]),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MOSI_REG[1]_i_1 
       (.I0(MOSI_REG[0]),
        .I1(StC[1]),
        .I2(Q[1]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MOSI_REG[2]_i_1 
       (.I0(MOSI_REG[1]),
        .I1(StC[1]),
        .I2(Q[2]),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MOSI_REG[3]_i_1 
       (.I0(MOSI_REG[2]),
        .I1(StC[1]),
        .I2(Q[3]),
        .O(p_1_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MOSI_REG[4]_i_1 
       (.I0(MOSI_REG[3]),
        .I1(StC[1]),
        .I2(Q[4]),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MOSI_REG[5]_i_1 
       (.I0(MOSI_REG[4]),
        .I1(StC[1]),
        .I2(Q[5]),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \MOSI_REG[6]_i_1 
       (.I0(MOSI_REG[5]),
        .I1(StC[1]),
        .I2(Q[6]),
        .O(p_1_in[6]));
  LUT4 #(
    .INIT(16'h008F)) 
    \MOSI_REG[7]_i_1 
       (.I0(SCLK_2X_TICK),
        .I1(SCLK_INT),
        .I2(StC[1]),
        .I3(StC[0]),
        .O(\MOSI_REG[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \MOSI_REG[7]_i_2 
       (.I0(StC[1]),
        .I1(MOSI_REG[6]),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    \MOSI_REG[7]_i_3 
       (.I0(SCLK_2X_DIV_reg[3]),
        .I1(SCLK_2X_DIV_reg[5]),
        .I2(SCLK_2X_DIV_reg[1]),
        .I3(SCLK_2X_DIV_reg[4]),
        .I4(SCLK_2X_DIV_reg[0]),
        .I5(SCLK_2X_DIV_reg[2]),
        .O(SCLK_2X_TICK));
  FDRE #(
    .INIT(1'b0)) 
    \MOSI_REG_reg[0] 
       (.C(SYSCLK),
        .CE(\MOSI_REG[7]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(MOSI_REG[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MOSI_REG_reg[1] 
       (.C(SYSCLK),
        .CE(\MOSI_REG[7]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(MOSI_REG[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MOSI_REG_reg[2] 
       (.C(SYSCLK),
        .CE(\MOSI_REG[7]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(MOSI_REG[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MOSI_REG_reg[3] 
       (.C(SYSCLK),
        .CE(\MOSI_REG[7]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(MOSI_REG[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MOSI_REG_reg[4] 
       (.C(SYSCLK),
        .CE(\MOSI_REG[7]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(MOSI_REG[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MOSI_REG_reg[5] 
       (.C(SYSCLK),
        .CE(\MOSI_REG[7]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(MOSI_REG[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MOSI_REG_reg[6] 
       (.C(SYSCLK),
        .CE(\MOSI_REG[7]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(MOSI_REG[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MOSI_REG_reg[7] 
       (.C(SYSCLK),
        .CE(\MOSI_REG[7]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(MOSI),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \SCLK_2X_DIV[0]_i_1 
       (.I0(SCLK_2X_DIV_reg[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \SCLK_2X_DIV[1]_i_1 
       (.I0(SCLK_2X_DIV_reg[0]),
        .I1(SCLK_2X_DIV_reg[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \SCLK_2X_DIV[2]_i_1 
       (.I0(SCLK_2X_DIV_reg[1]),
        .I1(SCLK_2X_DIV_reg[0]),
        .I2(SCLK_2X_DIV_reg[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \SCLK_2X_DIV[3]_i_1 
       (.I0(SCLK_2X_DIV_reg[1]),
        .I1(SCLK_2X_DIV_reg[0]),
        .I2(SCLK_2X_DIV_reg[2]),
        .I3(SCLK_2X_DIV_reg[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \SCLK_2X_DIV[4]_i_1 
       (.I0(SCLK_2X_DIV_reg[3]),
        .I1(SCLK_2X_DIV_reg[2]),
        .I2(SCLK_2X_DIV_reg[0]),
        .I3(SCLK_2X_DIV_reg[1]),
        .I4(SCLK_2X_DIV_reg[4]),
        .O(p_0_in[4]));
  LUT3 #(
    .INIT(8'hAB)) 
    \SCLK_2X_DIV[5]_i_1 
       (.I0(SCLK_2X_TICK),
        .I1(StC[1]),
        .I2(StC[0]),
        .O(SCLK_2X_DIV0));
  LUT6 #(
    .INIT(64'h6CCCCCCCCCCCCCCC)) 
    \SCLK_2X_DIV[5]_i_2 
       (.I0(SCLK_2X_DIV_reg[1]),
        .I1(SCLK_2X_DIV_reg[5]),
        .I2(SCLK_2X_DIV_reg[4]),
        .I3(SCLK_2X_DIV_reg[0]),
        .I4(SCLK_2X_DIV_reg[2]),
        .I5(SCLK_2X_DIV_reg[3]),
        .O(p_0_in[5]));
  FDRE #(
    .INIT(1'b0)) 
    \SCLK_2X_DIV_reg[0] 
       (.C(SYSCLK),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(SCLK_2X_DIV_reg[0]),
        .R(SCLK_2X_DIV0));
  FDRE #(
    .INIT(1'b0)) 
    \SCLK_2X_DIV_reg[1] 
       (.C(SYSCLK),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(SCLK_2X_DIV_reg[1]),
        .R(SCLK_2X_DIV0));
  FDRE #(
    .INIT(1'b0)) 
    \SCLK_2X_DIV_reg[2] 
       (.C(SYSCLK),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(SCLK_2X_DIV_reg[2]),
        .R(SCLK_2X_DIV0));
  FDRE #(
    .INIT(1'b0)) 
    \SCLK_2X_DIV_reg[3] 
       (.C(SYSCLK),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(SCLK_2X_DIV_reg[3]),
        .R(SCLK_2X_DIV0));
  FDRE #(
    .INIT(1'b0)) 
    \SCLK_2X_DIV_reg[4] 
       (.C(SYSCLK),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(SCLK_2X_DIV_reg[4]),
        .R(SCLK_2X_DIV0));
  FDRE #(
    .INIT(1'b0)) 
    \SCLK_2X_DIV_reg[5] 
       (.C(SYSCLK),
        .CE(1'b1),
        .D(p_0_in[5]),
        .Q(SCLK_2X_DIV_reg[5]),
        .R(SCLK_2X_DIV0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h40)) 
    SCLK_INST_0
       (.I0(StC[0]),
        .I1(StC[1]),
        .I2(SCLK_INT),
        .O(SCLK));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6660)) 
    SCLK_INT_i_1
       (.I0(SCLK_INT),
        .I1(SCLK_2X_TICK),
        .I2(StC[0]),
        .I3(StC[1]),
        .O(SCLK_INT_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    SCLK_INT_reg
       (.C(SYSCLK),
        .CE(1'b1),
        .D(SCLK_INT_i_1_n_0),
        .Q(SCLK_INT),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF0F0F0F0F0F0FFF9)) 
    SS_INST_0
       (.I0(StC_Spi_Trans[1]),
        .I1(StC_Spi_Trans[0]),
        .I2(RESET),
        .I3(StC_Spi_Trans[2]),
        .I4(StC[1]),
        .I5(StC[0]),
        .O(SS));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
