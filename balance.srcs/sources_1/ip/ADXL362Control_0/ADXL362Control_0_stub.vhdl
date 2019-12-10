-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Fri Dec  6 14:29:49 2019
-- Host        : DESKTOP-T1S8RDD running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/14832/Documents/study/CS/moshu/labs/lab10/balance/balance.srcs/sources_1/ip/ADXL362Control_0/ADXL362Control_0_stub.vhdl
-- Design      : ADXL362Control_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ADXL362Control_0 is
  Port ( 
    SYSCLK : in STD_LOGIC;
    RESET : in STD_LOGIC;
    ACCEL_X : out STD_LOGIC_VECTOR ( 11 downto 0 );
    ACCEL_Y : out STD_LOGIC_VECTOR ( 11 downto 0 );
    ACCEL_Z : out STD_LOGIC_VECTOR ( 11 downto 0 );
    ACCEL_TMP : out STD_LOGIC_VECTOR ( 11 downto 0 );
    Data_Ready : out STD_LOGIC;
    SCLK : out STD_LOGIC;
    MOSI : out STD_LOGIC;
    MISO : in STD_LOGIC;
    SS : out STD_LOGIC
  );

end ADXL362Control_0;

architecture stub of ADXL362Control_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "SYSCLK,RESET,ACCEL_X[11:0],ACCEL_Y[11:0],ACCEL_Z[11:0],ACCEL_TMP[11:0],Data_Ready,SCLK,MOSI,MISO,SS";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "ADXL362Ctrl,Vivado 2019.1";
begin
end;
