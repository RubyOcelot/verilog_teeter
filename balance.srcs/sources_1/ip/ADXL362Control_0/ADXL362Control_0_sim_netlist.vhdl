-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (win64) Build 2552052 Fri May 24 14:49:42 MDT 2019
-- Date        : Fri Dec  6 14:29:50 2019
-- Host        : DESKTOP-T1S8RDD running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/14832/Documents/study/CS/moshu/labs/lab10/balance/balance.srcs/sources_1/ip/ADXL362Control_0/ADXL362Control_0_sim_netlist.vhdl
-- Design      : ADXL362Control_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ADXL362Control_0_SPI_If is
  port (
    \Cnt_Bytes_Rec_reg[2]\ : out STD_LOGIC;
    Done_reg_0 : out STD_LOGIC;
    Done_reg_1 : out STD_LOGIC;
    SS : out STD_LOGIC;
    SCLK : out STD_LOGIC;
    Shift_Data_Reg : out STD_LOGIC;
    MOSI : out STD_LOGIC;
    \Dout_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SYSCLK : in STD_LOGIC;
    \FSM_sequential_StC_Spi_SendRec_reg[1]\ : in STD_LOGIC;
    \FSM_sequential_StC_Spi_SendRec_reg[1]_0\ : in STD_LOGIC;
    StC_Spi_SendRec : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \FSM_sequential_StC_Spi_SendRec_reg[0]\ : in STD_LOGIC;
    StC_Spi_Trans : in STD_LOGIC_VECTOR ( 2 downto 0 );
    RESET : in STD_LOGIC;
    SPI_RnW : in STD_LOGIC;
    \FSM_sequential_StC_Spi_SendRec_reg[2]\ : in STD_LOGIC;
    \FSM_sequential_StC_Spi_SendRec_reg[2]_0\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    MISO : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ADXL362Control_0_SPI_If : entity is "SPI_If";
end ADXL362Control_0_SPI_If;

architecture STRUCTURE of ADXL362Control_0_SPI_If is
  signal CntBits : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \CntBits[0]_i_1_n_0\ : STD_LOGIC;
  signal \CntBits[1]_i_1_n_0\ : STD_LOGIC;
  signal \CntBits[2]_i_1_n_0\ : STD_LOGIC;
  signal \CntBits[2]_i_2_n_0\ : STD_LOGIC;
  signal DONE_1 : STD_LOGIC;
  signal DONE_1_i_1_n_0 : STD_LOGIC;
  signal Done : STD_LOGIC;
  signal \FSM_sequential_StC[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_StC[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_StC[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_StC[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_StC[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_StC[1]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_StC_Spi_SendRec[1]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_StC_Spi_SendRec[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_StC_Spi_SendRec[1]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_StC_Spi_SendRec[2]_i_2_n_0\ : STD_LOGIC;
  signal MISO_REG : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal MOSI_REG : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \MOSI_REG[7]_i_1_n_0\ : STD_LOGIC;
  signal SCLK_2X_DIV0 : STD_LOGIC;
  signal SCLK_2X_DIV_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal SCLK_2X_TICK : STD_LOGIC;
  signal SCLK_INT : STD_LOGIC;
  signal SCLK_INT_i_1_n_0 : STD_LOGIC;
  signal SHIFT_TICK_IN : STD_LOGIC;
  signal StC : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \CntBits[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \Data_Reg[0][7]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_StC[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_sequential_StC[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_sequential_StC[1]_i_4\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_sequential_StC_Spi_SendRec[1]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_sequential_StC_Spi_SendRec[1]_i_5\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_sequential_StC_Spi_SendRec[2]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_StC_reg[0]\ : label is "stidle:00,stprepare:01,stshift:10,stdone:11,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_StC_reg[1]\ : label is "stidle:00,stprepare:01,stshift:10,stdone:11,";
  attribute SOFT_HLUTNM of \MOSI_REG[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \MOSI_REG[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \MOSI_REG[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \MOSI_REG[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \MOSI_REG[4]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \MOSI_REG[5]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \MOSI_REG[6]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \MOSI_REG[7]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \SCLK_2X_DIV[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \SCLK_2X_DIV[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \SCLK_2X_DIV[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \SCLK_2X_DIV[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of SCLK_INST_0 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of SCLK_INT_i_1 : label is "soft_lutpair2";
begin
\CntBits[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA6AAA00"
    )
        port map (
      I0 => CntBits(0),
      I1 => SCLK_INT,
      I2 => SCLK_2X_TICK,
      I3 => StC(0),
      I4 => StC(1),
      O => \CntBits[0]_i_1_n_0\
    );
\CntBits[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA6AAA00"
    )
        port map (
      I0 => CntBits(1),
      I1 => \CntBits[2]_i_2_n_0\,
      I2 => CntBits(0),
      I3 => StC(0),
      I4 => StC(1),
      O => \CntBits[1]_i_1_n_0\
    );
\CntBits[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA6AAAAAAA0000"
    )
        port map (
      I0 => CntBits(2),
      I1 => \CntBits[2]_i_2_n_0\,
      I2 => CntBits(0),
      I3 => CntBits(1),
      I4 => StC(0),
      I5 => StC(1),
      O => \CntBits[2]_i_1_n_0\
    );
\CntBits[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => SCLK_2X_TICK,
      I1 => SCLK_INT,
      O => \CntBits[2]_i_2_n_0\
    );
\CntBits_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => '1',
      D => \CntBits[0]_i_1_n_0\,
      Q => CntBits(0),
      R => '0'
    );
\CntBits_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => '1',
      D => \CntBits[1]_i_1_n_0\,
      Q => CntBits(1),
      R => '0'
    );
\CntBits_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => '1',
      D => \CntBits[2]_i_1_n_0\,
      Q => CntBits(2),
      R => '0'
    );
DONE_1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => StC(0),
      I1 => StC(1),
      O => DONE_1_i_1_n_0
    );
DONE_1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => '1',
      D => DONE_1_i_1_n_0,
      Q => DONE_1,
      R => '0'
    );
\Data_Reg[0][7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => Done,
      I1 => StC_Spi_SendRec(0),
      I2 => StC_Spi_SendRec(1),
      I3 => StC_Spi_SendRec(2),
      O => Shift_Data_Reg
    );
Done_reg: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK,
      CE => '1',
      D => DONE_1,
      Q => Done,
      R => '0'
    );
\Dout_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK,
      CE => DONE_1_i_1_n_0,
      D => MISO_REG(0),
      Q => \Dout_reg[7]_0\(0),
      R => '0'
    );
\Dout_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK,
      CE => DONE_1_i_1_n_0,
      D => MISO_REG(1),
      Q => \Dout_reg[7]_0\(1),
      R => '0'
    );
\Dout_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK,
      CE => DONE_1_i_1_n_0,
      D => MISO_REG(2),
      Q => \Dout_reg[7]_0\(2),
      R => '0'
    );
\Dout_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK,
      CE => DONE_1_i_1_n_0,
      D => MISO_REG(3),
      Q => \Dout_reg[7]_0\(3),
      R => '0'
    );
\Dout_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK,
      CE => DONE_1_i_1_n_0,
      D => MISO_REG(4),
      Q => \Dout_reg[7]_0\(4),
      R => '0'
    );
\Dout_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK,
      CE => DONE_1_i_1_n_0,
      D => MISO_REG(5),
      Q => \Dout_reg[7]_0\(5),
      R => '0'
    );
\Dout_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK,
      CE => DONE_1_i_1_n_0,
      D => MISO_REG(6),
      Q => \Dout_reg[7]_0\(6),
      R => '0'
    );
\Dout_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK,
      CE => DONE_1_i_1_n_0,
      D => MISO_REG(7),
      Q => \Dout_reg[7]_0\(7),
      R => '0'
    );
\FSM_sequential_StC[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => StC(0),
      I1 => \FSM_sequential_StC[1]_i_2_n_0\,
      I2 => RESET,
      O => \FSM_sequential_StC[0]_i_1_n_0\
    );
\FSM_sequential_StC[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"006A"
    )
        port map (
      I0 => StC(1),
      I1 => \FSM_sequential_StC[1]_i_2_n_0\,
      I2 => StC(0),
      I3 => RESET,
      O => \FSM_sequential_StC[1]_i_1_n_0\
    );
\FSM_sequential_StC[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFAAAEAAA"
    )
        port map (
      I0 => \FSM_sequential_StC[1]_i_3_n_0\,
      I1 => StC(0),
      I2 => SCLK_2X_TICK,
      I3 => SCLK_INT,
      I4 => \FSM_sequential_StC[1]_i_4_n_0\,
      I5 => \FSM_sequential_StC[1]_i_5_n_0\,
      O => \FSM_sequential_StC[1]_i_2_n_0\
    );
\FSM_sequential_StC[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010100"
    )
        port map (
      I0 => StC_Spi_SendRec(0),
      I1 => StC(0),
      I2 => StC(1),
      I3 => StC_Spi_SendRec(1),
      I4 => StC_Spi_SendRec(2),
      O => \FSM_sequential_StC[1]_i_3_n_0\
    );
\FSM_sequential_StC[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => CntBits(2),
      I1 => StC(1),
      I2 => CntBits(1),
      I3 => CntBits(0),
      O => \FSM_sequential_StC[1]_i_4_n_0\
    );
\FSM_sequential_StC[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88888CC8"
    )
        port map (
      I0 => StC(1),
      I1 => StC(0),
      I2 => StC_Spi_Trans(0),
      I3 => StC_Spi_Trans(1),
      I4 => StC_Spi_Trans(2),
      O => \FSM_sequential_StC[1]_i_5_n_0\
    );
\FSM_sequential_StC_Spi_SendRec[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAF00FF0F00FF33"
    )
        port map (
      I0 => \FSM_sequential_StC_Spi_SendRec[2]_i_2_n_0\,
      I1 => \FSM_sequential_StC_Spi_SendRec_reg[0]\,
      I2 => Done,
      I3 => StC_Spi_SendRec(2),
      I4 => StC_Spi_SendRec(0),
      I5 => StC_Spi_SendRec(1),
      O => Done_reg_0
    );
\FSM_sequential_StC_Spi_SendRec[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF02FFFFFF020000"
    )
        port map (
      I0 => \FSM_sequential_StC_Spi_SendRec[1]_i_2_n_0\,
      I1 => \FSM_sequential_StC_Spi_SendRec_reg[1]\,
      I2 => \FSM_sequential_StC_Spi_SendRec_reg[1]_0\,
      I3 => \FSM_sequential_StC_Spi_SendRec[1]_i_4_n_0\,
      I4 => \FSM_sequential_StC_Spi_SendRec[1]_i_5_n_0\,
      I5 => StC_Spi_SendRec(1),
      O => \Cnt_Bytes_Rec_reg[2]\
    );
\FSM_sequential_StC_Spi_SendRec[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => StC_Spi_SendRec(1),
      I1 => StC_Spi_SendRec(0),
      I2 => Done,
      O => \FSM_sequential_StC_Spi_SendRec[1]_i_2_n_0\
    );
\FSM_sequential_StC_Spi_SendRec[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"05070A0A"
    )
        port map (
      I0 => StC_Spi_SendRec(1),
      I1 => \FSM_sequential_StC_Spi_SendRec[2]_i_2_n_0\,
      I2 => StC_Spi_SendRec(2),
      I3 => SPI_RnW,
      I4 => StC_Spi_SendRec(0),
      O => \FSM_sequential_StC_Spi_SendRec[1]_i_4_n_0\
    );
\FSM_sequential_StC_Spi_SendRec[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CFFCFF5"
    )
        port map (
      I0 => \FSM_sequential_StC_Spi_SendRec_reg[0]\,
      I1 => Done,
      I2 => StC_Spi_SendRec(2),
      I3 => StC_Spi_SendRec(0),
      I4 => StC_Spi_SendRec(1),
      O => \FSM_sequential_StC_Spi_SendRec[1]_i_5_n_0\
    );
\FSM_sequential_StC_Spi_SendRec[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F400F0F0"
    )
        port map (
      I0 => \FSM_sequential_StC_Spi_SendRec[2]_i_2_n_0\,
      I1 => Done,
      I2 => StC_Spi_SendRec(2),
      I3 => StC_Spi_SendRec(0),
      I4 => StC_Spi_SendRec(1),
      O => Done_reg_1
    );
\FSM_sequential_StC_Spi_SendRec[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => Done,
      I1 => \FSM_sequential_StC_Spi_SendRec_reg[2]\,
      I2 => \FSM_sequential_StC_Spi_SendRec_reg[2]_0\,
      O => \FSM_sequential_StC_Spi_SendRec[2]_i_2_n_0\
    );
\FSM_sequential_StC_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => '1',
      D => \FSM_sequential_StC[0]_i_1_n_0\,
      Q => StC(0),
      R => '0'
    );
\FSM_sequential_StC_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => '1',
      D => \FSM_sequential_StC[1]_i_1_n_0\,
      Q => StC(1),
      R => '0'
    );
\MISO_REG[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => SCLK_INT,
      I1 => StC(1),
      I2 => StC(0),
      I3 => SCLK_2X_TICK,
      O => SHIFT_TICK_IN
    );
\MISO_REG_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => SHIFT_TICK_IN,
      D => MISO,
      Q => MISO_REG(0),
      R => '0'
    );
\MISO_REG_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => SHIFT_TICK_IN,
      D => MISO_REG(0),
      Q => MISO_REG(1),
      R => '0'
    );
\MISO_REG_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => SHIFT_TICK_IN,
      D => MISO_REG(1),
      Q => MISO_REG(2),
      R => '0'
    );
\MISO_REG_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => SHIFT_TICK_IN,
      D => MISO_REG(2),
      Q => MISO_REG(3),
      R => '0'
    );
\MISO_REG_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => SHIFT_TICK_IN,
      D => MISO_REG(3),
      Q => MISO_REG(4),
      R => '0'
    );
\MISO_REG_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => SHIFT_TICK_IN,
      D => MISO_REG(4),
      Q => MISO_REG(5),
      R => '0'
    );
\MISO_REG_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => SHIFT_TICK_IN,
      D => MISO_REG(5),
      Q => MISO_REG(6),
      R => '0'
    );
\MISO_REG_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => SHIFT_TICK_IN,
      D => MISO_REG(6),
      Q => MISO_REG(7),
      R => '0'
    );
\MOSI_REG[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(0),
      I1 => StC(1),
      O => p_1_in(0)
    );
\MOSI_REG[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => MOSI_REG(0),
      I1 => StC(1),
      I2 => Q(1),
      O => p_1_in(1)
    );
\MOSI_REG[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => MOSI_REG(1),
      I1 => StC(1),
      I2 => Q(2),
      O => p_1_in(2)
    );
\MOSI_REG[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => MOSI_REG(2),
      I1 => StC(1),
      I2 => Q(3),
      O => p_1_in(3)
    );
\MOSI_REG[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => MOSI_REG(3),
      I1 => StC(1),
      I2 => Q(4),
      O => p_1_in(4)
    );
\MOSI_REG[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => MOSI_REG(4),
      I1 => StC(1),
      I2 => Q(5),
      O => p_1_in(5)
    );
\MOSI_REG[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => MOSI_REG(5),
      I1 => StC(1),
      I2 => Q(6),
      O => p_1_in(6)
    );
\MOSI_REG[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"008F"
    )
        port map (
      I0 => SCLK_2X_TICK,
      I1 => SCLK_INT,
      I2 => StC(1),
      I3 => StC(0),
      O => \MOSI_REG[7]_i_1_n_0\
    );
\MOSI_REG[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => StC(1),
      I1 => MOSI_REG(6),
      O => p_1_in(7)
    );
\MOSI_REG[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000000000"
    )
        port map (
      I0 => SCLK_2X_DIV_reg(3),
      I1 => SCLK_2X_DIV_reg(5),
      I2 => SCLK_2X_DIV_reg(1),
      I3 => SCLK_2X_DIV_reg(4),
      I4 => SCLK_2X_DIV_reg(0),
      I5 => SCLK_2X_DIV_reg(2),
      O => SCLK_2X_TICK
    );
\MOSI_REG_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => \MOSI_REG[7]_i_1_n_0\,
      D => p_1_in(0),
      Q => MOSI_REG(0),
      R => '0'
    );
\MOSI_REG_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => \MOSI_REG[7]_i_1_n_0\,
      D => p_1_in(1),
      Q => MOSI_REG(1),
      R => '0'
    );
\MOSI_REG_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => \MOSI_REG[7]_i_1_n_0\,
      D => p_1_in(2),
      Q => MOSI_REG(2),
      R => '0'
    );
\MOSI_REG_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => \MOSI_REG[7]_i_1_n_0\,
      D => p_1_in(3),
      Q => MOSI_REG(3),
      R => '0'
    );
\MOSI_REG_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => \MOSI_REG[7]_i_1_n_0\,
      D => p_1_in(4),
      Q => MOSI_REG(4),
      R => '0'
    );
\MOSI_REG_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => \MOSI_REG[7]_i_1_n_0\,
      D => p_1_in(5),
      Q => MOSI_REG(5),
      R => '0'
    );
\MOSI_REG_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => \MOSI_REG[7]_i_1_n_0\,
      D => p_1_in(6),
      Q => MOSI_REG(6),
      R => '0'
    );
\MOSI_REG_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => \MOSI_REG[7]_i_1_n_0\,
      D => p_1_in(7),
      Q => MOSI,
      R => '0'
    );
\SCLK_2X_DIV[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => SCLK_2X_DIV_reg(0),
      O => p_0_in(0)
    );
\SCLK_2X_DIV[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => SCLK_2X_DIV_reg(0),
      I1 => SCLK_2X_DIV_reg(1),
      O => p_0_in(1)
    );
\SCLK_2X_DIV[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => SCLK_2X_DIV_reg(1),
      I1 => SCLK_2X_DIV_reg(0),
      I2 => SCLK_2X_DIV_reg(2),
      O => p_0_in(2)
    );
\SCLK_2X_DIV[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => SCLK_2X_DIV_reg(1),
      I1 => SCLK_2X_DIV_reg(0),
      I2 => SCLK_2X_DIV_reg(2),
      I3 => SCLK_2X_DIV_reg(3),
      O => p_0_in(3)
    );
\SCLK_2X_DIV[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => SCLK_2X_DIV_reg(3),
      I1 => SCLK_2X_DIV_reg(2),
      I2 => SCLK_2X_DIV_reg(0),
      I3 => SCLK_2X_DIV_reg(1),
      I4 => SCLK_2X_DIV_reg(4),
      O => p_0_in(4)
    );
\SCLK_2X_DIV[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
        port map (
      I0 => SCLK_2X_TICK,
      I1 => StC(1),
      I2 => StC(0),
      O => SCLK_2X_DIV0
    );
\SCLK_2X_DIV[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6CCCCCCCCCCCCCCC"
    )
        port map (
      I0 => SCLK_2X_DIV_reg(1),
      I1 => SCLK_2X_DIV_reg(5),
      I2 => SCLK_2X_DIV_reg(4),
      I3 => SCLK_2X_DIV_reg(0),
      I4 => SCLK_2X_DIV_reg(2),
      I5 => SCLK_2X_DIV_reg(3),
      O => p_0_in(5)
    );
\SCLK_2X_DIV_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => '1',
      D => p_0_in(0),
      Q => SCLK_2X_DIV_reg(0),
      R => SCLK_2X_DIV0
    );
\SCLK_2X_DIV_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => '1',
      D => p_0_in(1),
      Q => SCLK_2X_DIV_reg(1),
      R => SCLK_2X_DIV0
    );
\SCLK_2X_DIV_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => '1',
      D => p_0_in(2),
      Q => SCLK_2X_DIV_reg(2),
      R => SCLK_2X_DIV0
    );
\SCLK_2X_DIV_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => '1',
      D => p_0_in(3),
      Q => SCLK_2X_DIV_reg(3),
      R => SCLK_2X_DIV0
    );
\SCLK_2X_DIV_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => '1',
      D => p_0_in(4),
      Q => SCLK_2X_DIV_reg(4),
      R => SCLK_2X_DIV0
    );
\SCLK_2X_DIV_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => '1',
      D => p_0_in(5),
      Q => SCLK_2X_DIV_reg(5),
      R => SCLK_2X_DIV0
    );
SCLK_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => StC(0),
      I1 => StC(1),
      I2 => SCLK_INT,
      O => SCLK
    );
SCLK_INT_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6660"
    )
        port map (
      I0 => SCLK_INT,
      I1 => SCLK_2X_TICK,
      I2 => StC(0),
      I3 => StC(1),
      O => SCLK_INT_i_1_n_0
    );
SCLK_INT_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => '1',
      D => SCLK_INT_i_1_n_0,
      Q => SCLK_INT,
      R => '0'
    );
SS_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0F0F0FFF9"
    )
        port map (
      I0 => StC_Spi_Trans(1),
      I1 => StC_Spi_Trans(0),
      I2 => RESET,
      I3 => StC_Spi_Trans(2),
      I4 => StC(1),
      I5 => StC(0),
      O => SS
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ADXL362Control_0_ADXL362Ctrl is
  port (
    MOSI : out STD_LOGIC;
    ACCEL_X : out STD_LOGIC_VECTOR ( 11 downto 0 );
    ACCEL_Y : out STD_LOGIC_VECTOR ( 11 downto 0 );
    ACCEL_Z : out STD_LOGIC_VECTOR ( 11 downto 0 );
    ACCEL_TMP : out STD_LOGIC_VECTOR ( 11 downto 0 );
    SS : out STD_LOGIC;
    SCLK : out STD_LOGIC;
    Data_Ready : out STD_LOGIC;
    RESET : in STD_LOGIC;
    SYSCLK : in STD_LOGIC;
    MISO : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ADXL362Control_0_ADXL362Ctrl : entity is "ADXL362Ctrl";
end ADXL362Control_0_ADXL362Ctrl;

architecture STRUCTURE of ADXL362Control_0_ADXL362Ctrl is
  signal \ACCEL_TMP_SUM[0]_i_2_n_0\ : STD_LOGIC;
  signal \ACCEL_TMP_SUM[0]_i_3_n_0\ : STD_LOGIC;
  signal \ACCEL_TMP_SUM[0]_i_4_n_0\ : STD_LOGIC;
  signal \ACCEL_TMP_SUM[0]_i_5_n_0\ : STD_LOGIC;
  signal \ACCEL_TMP_SUM[12]_i_2_n_0\ : STD_LOGIC;
  signal \ACCEL_TMP_SUM[12]_i_3_n_0\ : STD_LOGIC;
  signal \ACCEL_TMP_SUM[12]_i_4_n_0\ : STD_LOGIC;
  signal \ACCEL_TMP_SUM[12]_i_5_n_0\ : STD_LOGIC;
  signal \ACCEL_TMP_SUM[4]_i_2_n_0\ : STD_LOGIC;
  signal \ACCEL_TMP_SUM[4]_i_3_n_0\ : STD_LOGIC;
  signal \ACCEL_TMP_SUM[4]_i_4_n_0\ : STD_LOGIC;
  signal \ACCEL_TMP_SUM[4]_i_5_n_0\ : STD_LOGIC;
  signal \ACCEL_TMP_SUM[8]_i_2_n_0\ : STD_LOGIC;
  signal \ACCEL_TMP_SUM[8]_i_3_n_0\ : STD_LOGIC;
  signal \ACCEL_TMP_SUM[8]_i_4_n_0\ : STD_LOGIC;
  signal \ACCEL_TMP_SUM[8]_i_5_n_0\ : STD_LOGIC;
  signal ACCEL_TMP_SUM_reg : STD_LOGIC_VECTOR ( 15 downto 4 );
  signal \ACCEL_TMP_SUM_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \ACCEL_TMP_SUM_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \ACCEL_TMP_SUM_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \ACCEL_TMP_SUM_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \ACCEL_TMP_SUM_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \ACCEL_TMP_SUM_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \ACCEL_TMP_SUM_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \ACCEL_TMP_SUM_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \ACCEL_TMP_SUM_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \ACCEL_TMP_SUM_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \ACCEL_TMP_SUM_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \ACCEL_TMP_SUM_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \ACCEL_TMP_SUM_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \ACCEL_TMP_SUM_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \ACCEL_TMP_SUM_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \ACCEL_TMP_SUM_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \ACCEL_TMP_SUM_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \ACCEL_TMP_SUM_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \ACCEL_TMP_SUM_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \ACCEL_TMP_SUM_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \ACCEL_TMP_SUM_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \ACCEL_TMP_SUM_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \ACCEL_TMP_SUM_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \ACCEL_TMP_SUM_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \ACCEL_TMP_SUM_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \ACCEL_TMP_SUM_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \ACCEL_TMP_SUM_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \ACCEL_TMP_SUM_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \ACCEL_TMP_SUM_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \ACCEL_TMP_SUM_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \ACCEL_TMP_SUM_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \ACCEL_TMP_SUM_reg_n_0_[0]\ : STD_LOGIC;
  signal \ACCEL_TMP_SUM_reg_n_0_[1]\ : STD_LOGIC;
  signal \ACCEL_TMP_SUM_reg_n_0_[2]\ : STD_LOGIC;
  signal \ACCEL_TMP_SUM_reg_n_0_[3]\ : STD_LOGIC;
  signal ACCEL_X_SUM0 : STD_LOGIC;
  signal \ACCEL_X_SUM[0]_i_3_n_0\ : STD_LOGIC;
  signal \ACCEL_X_SUM[0]_i_4_n_0\ : STD_LOGIC;
  signal \ACCEL_X_SUM[0]_i_5_n_0\ : STD_LOGIC;
  signal \ACCEL_X_SUM[0]_i_6_n_0\ : STD_LOGIC;
  signal \ACCEL_X_SUM[12]_i_2_n_0\ : STD_LOGIC;
  signal \ACCEL_X_SUM[12]_i_3_n_0\ : STD_LOGIC;
  signal \ACCEL_X_SUM[12]_i_4_n_0\ : STD_LOGIC;
  signal \ACCEL_X_SUM[12]_i_5_n_0\ : STD_LOGIC;
  signal \ACCEL_X_SUM[4]_i_2_n_0\ : STD_LOGIC;
  signal \ACCEL_X_SUM[4]_i_3_n_0\ : STD_LOGIC;
  signal \ACCEL_X_SUM[4]_i_4_n_0\ : STD_LOGIC;
  signal \ACCEL_X_SUM[4]_i_5_n_0\ : STD_LOGIC;
  signal \ACCEL_X_SUM[8]_i_2_n_0\ : STD_LOGIC;
  signal \ACCEL_X_SUM[8]_i_3_n_0\ : STD_LOGIC;
  signal \ACCEL_X_SUM[8]_i_4_n_0\ : STD_LOGIC;
  signal \ACCEL_X_SUM[8]_i_5_n_0\ : STD_LOGIC;
  signal ACCEL_X_SUM_reg : STD_LOGIC_VECTOR ( 15 downto 4 );
  signal \ACCEL_X_SUM_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \ACCEL_X_SUM_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \ACCEL_X_SUM_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \ACCEL_X_SUM_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \ACCEL_X_SUM_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \ACCEL_X_SUM_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \ACCEL_X_SUM_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \ACCEL_X_SUM_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \ACCEL_X_SUM_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \ACCEL_X_SUM_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \ACCEL_X_SUM_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \ACCEL_X_SUM_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \ACCEL_X_SUM_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \ACCEL_X_SUM_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \ACCEL_X_SUM_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \ACCEL_X_SUM_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \ACCEL_X_SUM_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \ACCEL_X_SUM_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \ACCEL_X_SUM_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \ACCEL_X_SUM_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \ACCEL_X_SUM_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \ACCEL_X_SUM_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \ACCEL_X_SUM_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \ACCEL_X_SUM_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \ACCEL_X_SUM_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \ACCEL_X_SUM_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \ACCEL_X_SUM_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \ACCEL_X_SUM_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \ACCEL_X_SUM_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \ACCEL_X_SUM_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \ACCEL_X_SUM_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \ACCEL_X_SUM_reg_n_0_[0]\ : STD_LOGIC;
  signal \ACCEL_X_SUM_reg_n_0_[1]\ : STD_LOGIC;
  signal \ACCEL_X_SUM_reg_n_0_[2]\ : STD_LOGIC;
  signal \ACCEL_X_SUM_reg_n_0_[3]\ : STD_LOGIC;
  signal \ACCEL_Y_SUM[0]_i_2_n_0\ : STD_LOGIC;
  signal \ACCEL_Y_SUM[0]_i_3_n_0\ : STD_LOGIC;
  signal \ACCEL_Y_SUM[0]_i_4_n_0\ : STD_LOGIC;
  signal \ACCEL_Y_SUM[0]_i_5_n_0\ : STD_LOGIC;
  signal \ACCEL_Y_SUM[12]_i_2_n_0\ : STD_LOGIC;
  signal \ACCEL_Y_SUM[12]_i_3_n_0\ : STD_LOGIC;
  signal \ACCEL_Y_SUM[12]_i_4_n_0\ : STD_LOGIC;
  signal \ACCEL_Y_SUM[12]_i_5_n_0\ : STD_LOGIC;
  signal \ACCEL_Y_SUM[4]_i_2_n_0\ : STD_LOGIC;
  signal \ACCEL_Y_SUM[4]_i_3_n_0\ : STD_LOGIC;
  signal \ACCEL_Y_SUM[4]_i_4_n_0\ : STD_LOGIC;
  signal \ACCEL_Y_SUM[4]_i_5_n_0\ : STD_LOGIC;
  signal \ACCEL_Y_SUM[8]_i_2_n_0\ : STD_LOGIC;
  signal \ACCEL_Y_SUM[8]_i_3_n_0\ : STD_LOGIC;
  signal \ACCEL_Y_SUM[8]_i_4_n_0\ : STD_LOGIC;
  signal \ACCEL_Y_SUM[8]_i_5_n_0\ : STD_LOGIC;
  signal ACCEL_Y_SUM_reg : STD_LOGIC_VECTOR ( 15 downto 4 );
  signal \ACCEL_Y_SUM_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \ACCEL_Y_SUM_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \ACCEL_Y_SUM_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \ACCEL_Y_SUM_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \ACCEL_Y_SUM_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \ACCEL_Y_SUM_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \ACCEL_Y_SUM_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \ACCEL_Y_SUM_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \ACCEL_Y_SUM_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \ACCEL_Y_SUM_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \ACCEL_Y_SUM_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \ACCEL_Y_SUM_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \ACCEL_Y_SUM_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \ACCEL_Y_SUM_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \ACCEL_Y_SUM_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \ACCEL_Y_SUM_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \ACCEL_Y_SUM_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \ACCEL_Y_SUM_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \ACCEL_Y_SUM_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \ACCEL_Y_SUM_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \ACCEL_Y_SUM_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \ACCEL_Y_SUM_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \ACCEL_Y_SUM_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \ACCEL_Y_SUM_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \ACCEL_Y_SUM_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \ACCEL_Y_SUM_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \ACCEL_Y_SUM_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \ACCEL_Y_SUM_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \ACCEL_Y_SUM_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \ACCEL_Y_SUM_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \ACCEL_Y_SUM_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \ACCEL_Y_SUM_reg_n_0_[0]\ : STD_LOGIC;
  signal \ACCEL_Y_SUM_reg_n_0_[1]\ : STD_LOGIC;
  signal \ACCEL_Y_SUM_reg_n_0_[2]\ : STD_LOGIC;
  signal \ACCEL_Y_SUM_reg_n_0_[3]\ : STD_LOGIC;
  signal \ACCEL_Z_SUM[0]_i_2_n_0\ : STD_LOGIC;
  signal \ACCEL_Z_SUM[0]_i_3_n_0\ : STD_LOGIC;
  signal \ACCEL_Z_SUM[0]_i_4_n_0\ : STD_LOGIC;
  signal \ACCEL_Z_SUM[0]_i_5_n_0\ : STD_LOGIC;
  signal \ACCEL_Z_SUM[12]_i_2_n_0\ : STD_LOGIC;
  signal \ACCEL_Z_SUM[12]_i_3_n_0\ : STD_LOGIC;
  signal \ACCEL_Z_SUM[12]_i_4_n_0\ : STD_LOGIC;
  signal \ACCEL_Z_SUM[12]_i_5_n_0\ : STD_LOGIC;
  signal \ACCEL_Z_SUM[4]_i_2_n_0\ : STD_LOGIC;
  signal \ACCEL_Z_SUM[4]_i_3_n_0\ : STD_LOGIC;
  signal \ACCEL_Z_SUM[4]_i_4_n_0\ : STD_LOGIC;
  signal \ACCEL_Z_SUM[4]_i_5_n_0\ : STD_LOGIC;
  signal \ACCEL_Z_SUM[8]_i_2_n_0\ : STD_LOGIC;
  signal \ACCEL_Z_SUM[8]_i_3_n_0\ : STD_LOGIC;
  signal \ACCEL_Z_SUM[8]_i_4_n_0\ : STD_LOGIC;
  signal \ACCEL_Z_SUM[8]_i_5_n_0\ : STD_LOGIC;
  signal ACCEL_Z_SUM_reg : STD_LOGIC_VECTOR ( 15 downto 4 );
  signal \ACCEL_Z_SUM_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \ACCEL_Z_SUM_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \ACCEL_Z_SUM_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \ACCEL_Z_SUM_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \ACCEL_Z_SUM_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \ACCEL_Z_SUM_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \ACCEL_Z_SUM_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \ACCEL_Z_SUM_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \ACCEL_Z_SUM_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \ACCEL_Z_SUM_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \ACCEL_Z_SUM_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \ACCEL_Z_SUM_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \ACCEL_Z_SUM_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \ACCEL_Z_SUM_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \ACCEL_Z_SUM_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \ACCEL_Z_SUM_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \ACCEL_Z_SUM_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \ACCEL_Z_SUM_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \ACCEL_Z_SUM_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \ACCEL_Z_SUM_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \ACCEL_Z_SUM_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \ACCEL_Z_SUM_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \ACCEL_Z_SUM_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \ACCEL_Z_SUM_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \ACCEL_Z_SUM_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \ACCEL_Z_SUM_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \ACCEL_Z_SUM_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \ACCEL_Z_SUM_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \ACCEL_Z_SUM_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \ACCEL_Z_SUM_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \ACCEL_Z_SUM_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \ACCEL_Z_SUM_reg_n_0_[0]\ : STD_LOGIC;
  signal \ACCEL_Z_SUM_reg_n_0_[1]\ : STD_LOGIC;
  signal \ACCEL_Z_SUM_reg_n_0_[2]\ : STD_LOGIC;
  signal \ACCEL_Z_SUM_reg_n_0_[3]\ : STD_LOGIC;
  signal Advance_Cmd_Reg_Addr : STD_LOGIC;
  signal Adxl_Conf_Err : STD_LOGIC;
  signal Adxl_Data_Ready : STD_LOGIC;
  signal B : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \Cmd_Reg[0][2]_i_1_n_0\ : STD_LOGIC;
  signal \Cmd_Reg[0][4]_i_1_n_0\ : STD_LOGIC;
  signal \Cmd_Reg[0][6]_i_1_n_0\ : STD_LOGIC;
  signal \Cmd_Reg[0][6]_i_3_n_0\ : STD_LOGIC;
  signal \Cmd_Reg[0]_0\ : STD_LOGIC;
  signal \Cmd_Reg[1]0_in\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \Cmd_Reg[1][0]_i_1_n_0\ : STD_LOGIC;
  signal \Cmd_Reg[1][0]_i_2_n_0\ : STD_LOGIC;
  signal \Cmd_Reg[1][1]_i_1_n_0\ : STD_LOGIC;
  signal \Cmd_Reg[1][2]_i_1_n_0\ : STD_LOGIC;
  signal \Cmd_Reg[1][2]_i_2_n_0\ : STD_LOGIC;
  signal \Cmd_Reg[1][4]_i_1_n_0\ : STD_LOGIC;
  signal \Cmd_Reg[1][5]_i_1_n_0\ : STD_LOGIC;
  signal \Cmd_Reg[1][6]_i_2_n_0\ : STD_LOGIC;
  signal \Cmd_Reg[1][6]_i_3_n_0\ : STD_LOGIC;
  signal \Cmd_Reg[2]\ : STD_LOGIC_VECTOR ( 7 to 7 );
  signal \Cmd_Reg[2][0]_i_1_n_0\ : STD_LOGIC;
  signal \Cmd_Reg[2]_1\ : STD_LOGIC;
  signal \Cmd_Reg_Data_Addr[0]_i_1_n_0\ : STD_LOGIC;
  signal \Cmd_Reg_Data_Addr[0]_i_2_n_0\ : STD_LOGIC;
  signal \Cmd_Reg_Data_Addr[1]_i_1_n_0\ : STD_LOGIC;
  signal \Cmd_Reg_Data_Addr_reg_n_0_[0]\ : STD_LOGIC;
  signal \Cmd_Reg_Data_Addr_reg_n_0_[1]\ : STD_LOGIC;
  signal \Cmd_Reg_reg[0]\ : STD_LOGIC_VECTOR ( 6 downto 1 );
  signal \Cmd_Reg_reg[1]\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \Cmd_Reg_reg[2]\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \Cnt_Bytes_Rec[0]_i_1_n_0\ : STD_LOGIC;
  signal \Cnt_Bytes_Rec[0]_i_2_n_0\ : STD_LOGIC;
  signal \Cnt_Bytes_Rec[1]_i_1_n_0\ : STD_LOGIC;
  signal \Cnt_Bytes_Rec[1]_i_2_n_0\ : STD_LOGIC;
  signal \Cnt_Bytes_Rec[1]_i_3_n_0\ : STD_LOGIC;
  signal \Cnt_Bytes_Rec[2]_i_1_n_0\ : STD_LOGIC;
  signal \Cnt_Bytes_Rec[2]_i_2_n_0\ : STD_LOGIC;
  signal \Cnt_Bytes_Rec_reg_n_0_[0]\ : STD_LOGIC;
  signal \Cnt_Bytes_Rec_reg_n_0_[1]\ : STD_LOGIC;
  signal \Cnt_Bytes_Rec_reg_n_0_[2]\ : STD_LOGIC;
  signal Cnt_Bytes_Sent1 : STD_LOGIC;
  signal \Cnt_Bytes_Sent[0]_i_1_n_0\ : STD_LOGIC;
  signal \Cnt_Bytes_Sent[0]_i_2_n_0\ : STD_LOGIC;
  signal \Cnt_Bytes_Sent[1]_i_1_n_0\ : STD_LOGIC;
  signal \Cnt_Bytes_Sent_reg_n_0_[0]\ : STD_LOGIC;
  signal \Cnt_Bytes_Sent_reg_n_0_[1]\ : STD_LOGIC;
  signal Cnt_Num_Reads : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \Cnt_Num_Reads[0]_i_1_n_0\ : STD_LOGIC;
  signal \Cnt_Num_Reads[1]_i_1_n_0\ : STD_LOGIC;
  signal \Cnt_Num_Reads[2]_i_1_n_0\ : STD_LOGIC;
  signal \Cnt_Num_Reads[3]_i_3_n_0\ : STD_LOGIC;
  signal Cnt_SS_Inactive : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal Cnt_SS_Inactive0 : STD_LOGIC;
  signal \Cnt_SS_Inactive[0]_i_2_n_0\ : STD_LOGIC;
  signal \Cnt_SS_Inactive[10]_i_3_n_0\ : STD_LOGIC;
  signal \Cnt_SS_Inactive[1]_i_2_n_0\ : STD_LOGIC;
  signal \Cnt_SS_Inactive[1]_i_3_n_0\ : STD_LOGIC;
  signal \Cnt_SS_Inactive[6]_i_2_n_0\ : STD_LOGIC;
  signal Cnt_SS_Inactive_2 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal D_Send : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal Data_Ready_i_1_n_0 : STD_LOGIC;
  signal \Data_Reg_reg[1]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \Data_Reg_reg[2]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \Data_Reg_reg[3]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \Data_Reg_reg[4]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \Data_Reg_reg[5]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \Data_Reg_reg_n_0_[0][1]\ : STD_LOGIC;
  signal \Data_Reg_reg_n_0_[0][2]\ : STD_LOGIC;
  signal \Data_Reg_reg_n_0_[0][3]\ : STD_LOGIC;
  signal \Data_Reg_reg_n_0_[0][4]\ : STD_LOGIC;
  signal \Data_Reg_reg_n_0_[0][5]\ : STD_LOGIC;
  signal \Data_Reg_reg_n_0_[0][6]\ : STD_LOGIC;
  signal Dout : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \FSM_sequential_StC_Adxl_Ctrl[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_StC_Adxl_Ctrl[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_StC_Adxl_Ctrl[3]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_StC_Adxl_Ctrl[3]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_StC_Adxl_Ctrl[3]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_sequential_StC_Adxl_Ctrl[3]_i_13_n_0\ : STD_LOGIC;
  signal \FSM_sequential_StC_Adxl_Ctrl[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_StC_Adxl_Ctrl[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_StC_Adxl_Ctrl[3]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_StC_Adxl_Ctrl[3]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_StC_Adxl_Ctrl[3]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_StC_Adxl_Ctrl[3]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_StC_Adxl_Ctrl[3]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_StC_Adxl_Ctrl[3]_i_9_n_0\ : STD_LOGIC;
  signal \FSM_sequential_StC_Spi_SendRec[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_StC_Spi_SendRec[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_StC_Spi_Trans[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_StC_Spi_Trans[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_StC_Spi_Trans[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_StC_Spi_Trans[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_StC_Spi_Trans[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_StC_Spi_Trans[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_StC_Spi_Trans[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_StC_Spi_Trans[2]_i_6_n_0\ : STD_LOGIC;
  signal Reset_Cnt_Bytes : STD_LOGIC;
  signal Reset_Cnt_Num_Reads : STD_LOGIC;
  signal Reset_Sample_Rate_Div : STD_LOGIC;
  signal SPI_Interface_n_0 : STD_LOGIC;
  signal SPI_Interface_n_1 : STD_LOGIC;
  signal SPI_Interface_n_2 : STD_LOGIC;
  signal SPI_RnW : STD_LOGIC;
  signal Sample_Rate_Div : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \Sample_Rate_Div0_carry__0_n_0\ : STD_LOGIC;
  signal \Sample_Rate_Div0_carry__0_n_1\ : STD_LOGIC;
  signal \Sample_Rate_Div0_carry__0_n_2\ : STD_LOGIC;
  signal \Sample_Rate_Div0_carry__0_n_3\ : STD_LOGIC;
  signal \Sample_Rate_Div0_carry__1_n_0\ : STD_LOGIC;
  signal \Sample_Rate_Div0_carry__1_n_1\ : STD_LOGIC;
  signal \Sample_Rate_Div0_carry__1_n_2\ : STD_LOGIC;
  signal \Sample_Rate_Div0_carry__1_n_3\ : STD_LOGIC;
  signal \Sample_Rate_Div0_carry__2_n_1\ : STD_LOGIC;
  signal \Sample_Rate_Div0_carry__2_n_2\ : STD_LOGIC;
  signal \Sample_Rate_Div0_carry__2_n_3\ : STD_LOGIC;
  signal Sample_Rate_Div0_carry_n_0 : STD_LOGIC;
  signal Sample_Rate_Div0_carry_n_1 : STD_LOGIC;
  signal Sample_Rate_Div0_carry_n_2 : STD_LOGIC;
  signal Sample_Rate_Div0_carry_n_3 : STD_LOGIC;
  signal Sample_Rate_Div_3 : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal Shift_Cmd_Reg : STD_LOGIC;
  signal Shift_Data_Reg : STD_LOGIC;
  signal StC_Adxl_Ctrl : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal StC_Spi_SendRec : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal StC_Spi_Trans : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \StN_Adxl_Ctrl__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal StartSpiSendRec : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 16 downto 1 );
  signal \in\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal sel : STD_LOGIC;
  signal \NLW_ACCEL_TMP_SUM_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_ACCEL_X_SUM_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_ACCEL_Y_SUM_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_ACCEL_Z_SUM_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_Sample_Rate_Div0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \Cmd_Reg[0][1]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \Cmd_Reg[0][2]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \Cmd_Reg[0][4]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \Cmd_Reg[0][6]_i_3\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \Cmd_Reg[1][0]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \Cmd_Reg[1][1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \Cmd_Reg[1][2]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \Cmd_Reg[1][2]_i_3\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \Cmd_Reg[1][3]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \Cmd_Reg[1][4]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \Cmd_Reg[1][5]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \Cmd_Reg[1][6]_i_3\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \Cmd_Reg_Data_Addr[0]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \Cmd_Reg_Data_Addr[1]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \Cmd_Reg_Data_Addr[1]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \Cmd_Reg_Data_Addr[1]_i_3\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \Cnt_Bytes_Rec[1]_i_3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \Cnt_Bytes_Rec[2]_i_2\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \Cnt_Num_Reads[0]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \Cnt_Num_Reads[1]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \Cnt_Num_Reads[2]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \Cnt_Num_Reads[3]_i_3\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \Cnt_SS_Inactive[1]_i_3\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \Cnt_SS_Inactive[2]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \Cnt_SS_Inactive[3]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \Cnt_SS_Inactive[4]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \Cnt_SS_Inactive[8]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \Cnt_SS_Inactive[9]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \FSM_sequential_StC_Adxl_Ctrl[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \FSM_sequential_StC_Adxl_Ctrl[2]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \FSM_sequential_StC_Adxl_Ctrl[3]_i_11\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \FSM_sequential_StC_Adxl_Ctrl[3]_i_2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \FSM_sequential_StC_Adxl_Ctrl[3]_i_5\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \FSM_sequential_StC_Adxl_Ctrl[3]_i_7\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \FSM_sequential_StC_Adxl_Ctrl[3]_i_8\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \FSM_sequential_StC_Adxl_Ctrl[3]_i_9\ : label is "soft_lutpair21";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_StC_Adxl_Ctrl_reg[0]\ : label is "stadxlread_data:0110,stadxlformatandsum:0111,stadxlsendresetcmd:0001,stadxlread_status:0101,stadxlwaitsampleratetick:0100,stadxlwaitresetdone:0010,stadxlread_done:1000,stadxlctrlidle:0000,stadxlconf_remaining:0011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_StC_Adxl_Ctrl_reg[1]\ : label is "stadxlread_data:0110,stadxlformatandsum:0111,stadxlsendresetcmd:0001,stadxlread_status:0101,stadxlwaitsampleratetick:0100,stadxlwaitresetdone:0010,stadxlread_done:1000,stadxlctrlidle:0000,stadxlconf_remaining:0011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_StC_Adxl_Ctrl_reg[2]\ : label is "stadxlread_data:0110,stadxlformatandsum:0111,stadxlsendresetcmd:0001,stadxlread_status:0101,stadxlwaitsampleratetick:0100,stadxlwaitresetdone:0010,stadxlread_done:1000,stadxlctrlidle:0000,stadxlconf_remaining:0011";
  attribute FSM_ENCODED_STATES of \FSM_sequential_StC_Adxl_Ctrl_reg[3]\ : label is "stadxlread_data:0110,stadxlformatandsum:0111,stadxlsendresetcmd:0001,stadxlread_status:0101,stadxlwaitsampleratetick:0100,stadxlwaitresetdone:0010,stadxlread_done:1000,stadxlctrlidle:0000,stadxlconf_remaining:0011";
  attribute SOFT_HLUTNM of \FSM_sequential_StC_Spi_SendRec[0]_i_2\ : label is "soft_lutpair25";
  attribute FSM_ENCODED_STATES of \FSM_sequential_StC_Spi_SendRec_reg[0]\ : label is "stspisendrecidle:000,stspisendstartw:010,stspiwaitondonew:011,stspiwaitondoner:101,stspipreparecmd:001,stspisendstartr:100,stspisendrecdone:110";
  attribute FSM_ENCODED_STATES of \FSM_sequential_StC_Spi_SendRec_reg[1]\ : label is "stspisendrecidle:000,stspisendstartw:010,stspiwaitondonew:011,stspiwaitondoner:101,stspipreparecmd:001,stspisendstartr:100,stspisendrecdone:110";
  attribute FSM_ENCODED_STATES of \FSM_sequential_StC_Spi_SendRec_reg[2]\ : label is "stspisendrecidle:000,stspisendstartw:010,stspiwaitondonew:011,stspiwaitondoner:101,stspipreparecmd:001,stspisendstartr:100,stspisendrecdone:110";
  attribute SOFT_HLUTNM of \FSM_sequential_StC_Spi_Trans[0]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \FSM_sequential_StC_Spi_Trans[1]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \FSM_sequential_StC_Spi_Trans[2]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \FSM_sequential_StC_Spi_Trans[2]_i_4\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \FSM_sequential_StC_Spi_Trans[2]_i_5\ : label is "soft_lutpair27";
  attribute FSM_ENCODED_STATES of \FSM_sequential_StC_Spi_Trans_reg[0]\ : label is "stspitransidle:000,stspiprepandsendcmd:001,stspiwaitondonesr:010,stspiwaitforssinact:011,stspitransdone:100,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_StC_Spi_Trans_reg[1]\ : label is "stspitransidle:000,stspiprepandsendcmd:001,stspiwaitondonesr:010,stspiwaitforssinact:011,stspitransdone:100,";
  attribute FSM_ENCODED_STATES of \FSM_sequential_StC_Spi_Trans_reg[2]\ : label is "stspitransidle:000,stspiprepandsendcmd:001,stspiwaitondonesr:010,stspiwaitforssinact:011,stspitransdone:100,";
  attribute SOFT_HLUTNM of SPI_RnW_i_1 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \Sample_Rate_Div[0]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \Sample_Rate_Div[10]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \Sample_Rate_Div[11]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \Sample_Rate_Div[12]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \Sample_Rate_Div[13]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \Sample_Rate_Div[14]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \Sample_Rate_Div[15]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \Sample_Rate_Div[16]_i_2\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \Sample_Rate_Div[1]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \Sample_Rate_Div[2]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \Sample_Rate_Div[3]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \Sample_Rate_Div[4]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \Sample_Rate_Div[5]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \Sample_Rate_Div[6]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \Sample_Rate_Div[7]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \Sample_Rate_Div[8]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \Sample_Rate_Div[9]_i_1\ : label is "soft_lutpair36";
begin
\ACCEL_TMP_SUM[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Data_Reg_reg[1]\(3),
      I1 => \ACCEL_TMP_SUM_reg_n_0_[3]\,
      O => \ACCEL_TMP_SUM[0]_i_2_n_0\
    );
\ACCEL_TMP_SUM[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Data_Reg_reg[1]\(2),
      I1 => \ACCEL_TMP_SUM_reg_n_0_[2]\,
      O => \ACCEL_TMP_SUM[0]_i_3_n_0\
    );
\ACCEL_TMP_SUM[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Data_Reg_reg[1]\(1),
      I1 => \ACCEL_TMP_SUM_reg_n_0_[1]\,
      O => \ACCEL_TMP_SUM[0]_i_4_n_0\
    );
\ACCEL_TMP_SUM[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Data_Reg_reg[1]\(0),
      I1 => \ACCEL_TMP_SUM_reg_n_0_[0]\,
      O => \ACCEL_TMP_SUM[0]_i_5_n_0\
    );
\ACCEL_TMP_SUM[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Adxl_Conf_Err,
      I1 => ACCEL_TMP_SUM_reg(15),
      O => \ACCEL_TMP_SUM[12]_i_2_n_0\
    );
\ACCEL_TMP_SUM[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Data_Reg_reg_n_0_[0][6]\,
      I1 => ACCEL_TMP_SUM_reg(14),
      O => \ACCEL_TMP_SUM[12]_i_3_n_0\
    );
\ACCEL_TMP_SUM[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Data_Reg_reg_n_0_[0][5]\,
      I1 => ACCEL_TMP_SUM_reg(13),
      O => \ACCEL_TMP_SUM[12]_i_4_n_0\
    );
\ACCEL_TMP_SUM[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Data_Reg_reg_n_0_[0][4]\,
      I1 => ACCEL_TMP_SUM_reg(12),
      O => \ACCEL_TMP_SUM[12]_i_5_n_0\
    );
\ACCEL_TMP_SUM[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Data_Reg_reg[1]\(7),
      I1 => ACCEL_TMP_SUM_reg(7),
      O => \ACCEL_TMP_SUM[4]_i_2_n_0\
    );
\ACCEL_TMP_SUM[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Data_Reg_reg[1]\(6),
      I1 => ACCEL_TMP_SUM_reg(6),
      O => \ACCEL_TMP_SUM[4]_i_3_n_0\
    );
\ACCEL_TMP_SUM[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Data_Reg_reg[1]\(5),
      I1 => ACCEL_TMP_SUM_reg(5),
      O => \ACCEL_TMP_SUM[4]_i_4_n_0\
    );
\ACCEL_TMP_SUM[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Data_Reg_reg[1]\(4),
      I1 => ACCEL_TMP_SUM_reg(4),
      O => \ACCEL_TMP_SUM[4]_i_5_n_0\
    );
\ACCEL_TMP_SUM[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Data_Reg_reg_n_0_[0][3]\,
      I1 => ACCEL_TMP_SUM_reg(11),
      O => \ACCEL_TMP_SUM[8]_i_2_n_0\
    );
\ACCEL_TMP_SUM[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Data_Reg_reg_n_0_[0][2]\,
      I1 => ACCEL_TMP_SUM_reg(10),
      O => \ACCEL_TMP_SUM[8]_i_3_n_0\
    );
\ACCEL_TMP_SUM[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Data_Reg_reg_n_0_[0][1]\,
      I1 => ACCEL_TMP_SUM_reg(9),
      O => \ACCEL_TMP_SUM[8]_i_4_n_0\
    );
\ACCEL_TMP_SUM[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Adxl_Data_Ready,
      I1 => ACCEL_TMP_SUM_reg(8),
      O => \ACCEL_TMP_SUM[8]_i_5_n_0\
    );
\ACCEL_TMP_SUM_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_TMP_SUM_reg[0]_i_1_n_7\,
      Q => \ACCEL_TMP_SUM_reg_n_0_[0]\,
      R => ACCEL_X_SUM0
    );
\ACCEL_TMP_SUM_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ACCEL_TMP_SUM_reg[0]_i_1_n_0\,
      CO(2) => \ACCEL_TMP_SUM_reg[0]_i_1_n_1\,
      CO(1) => \ACCEL_TMP_SUM_reg[0]_i_1_n_2\,
      CO(0) => \ACCEL_TMP_SUM_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \Data_Reg_reg[1]\(3 downto 0),
      O(3) => \ACCEL_TMP_SUM_reg[0]_i_1_n_4\,
      O(2) => \ACCEL_TMP_SUM_reg[0]_i_1_n_5\,
      O(1) => \ACCEL_TMP_SUM_reg[0]_i_1_n_6\,
      O(0) => \ACCEL_TMP_SUM_reg[0]_i_1_n_7\,
      S(3) => \ACCEL_TMP_SUM[0]_i_2_n_0\,
      S(2) => \ACCEL_TMP_SUM[0]_i_3_n_0\,
      S(1) => \ACCEL_TMP_SUM[0]_i_4_n_0\,
      S(0) => \ACCEL_TMP_SUM[0]_i_5_n_0\
    );
\ACCEL_TMP_SUM_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_TMP_SUM_reg[8]_i_1_n_5\,
      Q => ACCEL_TMP_SUM_reg(10),
      R => ACCEL_X_SUM0
    );
\ACCEL_TMP_SUM_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_TMP_SUM_reg[8]_i_1_n_4\,
      Q => ACCEL_TMP_SUM_reg(11),
      R => ACCEL_X_SUM0
    );
\ACCEL_TMP_SUM_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_TMP_SUM_reg[12]_i_1_n_7\,
      Q => ACCEL_TMP_SUM_reg(12),
      R => ACCEL_X_SUM0
    );
\ACCEL_TMP_SUM_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ACCEL_TMP_SUM_reg[8]_i_1_n_0\,
      CO(3) => \NLW_ACCEL_TMP_SUM_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \ACCEL_TMP_SUM_reg[12]_i_1_n_1\,
      CO(1) => \ACCEL_TMP_SUM_reg[12]_i_1_n_2\,
      CO(0) => \ACCEL_TMP_SUM_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \Data_Reg_reg_n_0_[0][6]\,
      DI(1) => \Data_Reg_reg_n_0_[0][5]\,
      DI(0) => \Data_Reg_reg_n_0_[0][4]\,
      O(3) => \ACCEL_TMP_SUM_reg[12]_i_1_n_4\,
      O(2) => \ACCEL_TMP_SUM_reg[12]_i_1_n_5\,
      O(1) => \ACCEL_TMP_SUM_reg[12]_i_1_n_6\,
      O(0) => \ACCEL_TMP_SUM_reg[12]_i_1_n_7\,
      S(3) => \ACCEL_TMP_SUM[12]_i_2_n_0\,
      S(2) => \ACCEL_TMP_SUM[12]_i_3_n_0\,
      S(1) => \ACCEL_TMP_SUM[12]_i_4_n_0\,
      S(0) => \ACCEL_TMP_SUM[12]_i_5_n_0\
    );
\ACCEL_TMP_SUM_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_TMP_SUM_reg[12]_i_1_n_6\,
      Q => ACCEL_TMP_SUM_reg(13),
      R => ACCEL_X_SUM0
    );
\ACCEL_TMP_SUM_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_TMP_SUM_reg[12]_i_1_n_5\,
      Q => ACCEL_TMP_SUM_reg(14),
      R => ACCEL_X_SUM0
    );
\ACCEL_TMP_SUM_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_TMP_SUM_reg[12]_i_1_n_4\,
      Q => ACCEL_TMP_SUM_reg(15),
      R => ACCEL_X_SUM0
    );
\ACCEL_TMP_SUM_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_TMP_SUM_reg[0]_i_1_n_6\,
      Q => \ACCEL_TMP_SUM_reg_n_0_[1]\,
      R => ACCEL_X_SUM0
    );
\ACCEL_TMP_SUM_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_TMP_SUM_reg[0]_i_1_n_5\,
      Q => \ACCEL_TMP_SUM_reg_n_0_[2]\,
      R => ACCEL_X_SUM0
    );
\ACCEL_TMP_SUM_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_TMP_SUM_reg[0]_i_1_n_4\,
      Q => \ACCEL_TMP_SUM_reg_n_0_[3]\,
      R => ACCEL_X_SUM0
    );
\ACCEL_TMP_SUM_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_TMP_SUM_reg[4]_i_1_n_7\,
      Q => ACCEL_TMP_SUM_reg(4),
      R => ACCEL_X_SUM0
    );
\ACCEL_TMP_SUM_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ACCEL_TMP_SUM_reg[0]_i_1_n_0\,
      CO(3) => \ACCEL_TMP_SUM_reg[4]_i_1_n_0\,
      CO(2) => \ACCEL_TMP_SUM_reg[4]_i_1_n_1\,
      CO(1) => \ACCEL_TMP_SUM_reg[4]_i_1_n_2\,
      CO(0) => \ACCEL_TMP_SUM_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \Data_Reg_reg[1]\(7 downto 4),
      O(3) => \ACCEL_TMP_SUM_reg[4]_i_1_n_4\,
      O(2) => \ACCEL_TMP_SUM_reg[4]_i_1_n_5\,
      O(1) => \ACCEL_TMP_SUM_reg[4]_i_1_n_6\,
      O(0) => \ACCEL_TMP_SUM_reg[4]_i_1_n_7\,
      S(3) => \ACCEL_TMP_SUM[4]_i_2_n_0\,
      S(2) => \ACCEL_TMP_SUM[4]_i_3_n_0\,
      S(1) => \ACCEL_TMP_SUM[4]_i_4_n_0\,
      S(0) => \ACCEL_TMP_SUM[4]_i_5_n_0\
    );
\ACCEL_TMP_SUM_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_TMP_SUM_reg[4]_i_1_n_6\,
      Q => ACCEL_TMP_SUM_reg(5),
      R => ACCEL_X_SUM0
    );
\ACCEL_TMP_SUM_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_TMP_SUM_reg[4]_i_1_n_5\,
      Q => ACCEL_TMP_SUM_reg(6),
      R => ACCEL_X_SUM0
    );
\ACCEL_TMP_SUM_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_TMP_SUM_reg[4]_i_1_n_4\,
      Q => ACCEL_TMP_SUM_reg(7),
      R => ACCEL_X_SUM0
    );
\ACCEL_TMP_SUM_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_TMP_SUM_reg[8]_i_1_n_7\,
      Q => ACCEL_TMP_SUM_reg(8),
      R => ACCEL_X_SUM0
    );
\ACCEL_TMP_SUM_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ACCEL_TMP_SUM_reg[4]_i_1_n_0\,
      CO(3) => \ACCEL_TMP_SUM_reg[8]_i_1_n_0\,
      CO(2) => \ACCEL_TMP_SUM_reg[8]_i_1_n_1\,
      CO(1) => \ACCEL_TMP_SUM_reg[8]_i_1_n_2\,
      CO(0) => \ACCEL_TMP_SUM_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \Data_Reg_reg_n_0_[0][3]\,
      DI(2) => \Data_Reg_reg_n_0_[0][2]\,
      DI(1) => \Data_Reg_reg_n_0_[0][1]\,
      DI(0) => Adxl_Data_Ready,
      O(3) => \ACCEL_TMP_SUM_reg[8]_i_1_n_4\,
      O(2) => \ACCEL_TMP_SUM_reg[8]_i_1_n_5\,
      O(1) => \ACCEL_TMP_SUM_reg[8]_i_1_n_6\,
      O(0) => \ACCEL_TMP_SUM_reg[8]_i_1_n_7\,
      S(3) => \ACCEL_TMP_SUM[8]_i_2_n_0\,
      S(2) => \ACCEL_TMP_SUM[8]_i_3_n_0\,
      S(1) => \ACCEL_TMP_SUM[8]_i_4_n_0\,
      S(0) => \ACCEL_TMP_SUM[8]_i_5_n_0\
    );
\ACCEL_TMP_SUM_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_TMP_SUM_reg[8]_i_1_n_6\,
      Q => ACCEL_TMP_SUM_reg(9),
      R => ACCEL_X_SUM0
    );
\ACCEL_TMP_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK,
      CE => StC_Adxl_Ctrl(3),
      D => ACCEL_TMP_SUM_reg(4),
      Q => ACCEL_TMP(0),
      R => RESET
    );
\ACCEL_TMP_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK,
      CE => StC_Adxl_Ctrl(3),
      D => ACCEL_TMP_SUM_reg(14),
      Q => ACCEL_TMP(10),
      R => RESET
    );
\ACCEL_TMP_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK,
      CE => StC_Adxl_Ctrl(3),
      D => ACCEL_TMP_SUM_reg(15),
      Q => ACCEL_TMP(11),
      R => RESET
    );
\ACCEL_TMP_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK,
      CE => StC_Adxl_Ctrl(3),
      D => ACCEL_TMP_SUM_reg(5),
      Q => ACCEL_TMP(1),
      R => RESET
    );
\ACCEL_TMP_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK,
      CE => StC_Adxl_Ctrl(3),
      D => ACCEL_TMP_SUM_reg(6),
      Q => ACCEL_TMP(2),
      R => RESET
    );
\ACCEL_TMP_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK,
      CE => StC_Adxl_Ctrl(3),
      D => ACCEL_TMP_SUM_reg(7),
      Q => ACCEL_TMP(3),
      R => RESET
    );
\ACCEL_TMP_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK,
      CE => StC_Adxl_Ctrl(3),
      D => ACCEL_TMP_SUM_reg(8),
      Q => ACCEL_TMP(4),
      R => RESET
    );
\ACCEL_TMP_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK,
      CE => StC_Adxl_Ctrl(3),
      D => ACCEL_TMP_SUM_reg(9),
      Q => ACCEL_TMP(5),
      R => RESET
    );
\ACCEL_TMP_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK,
      CE => StC_Adxl_Ctrl(3),
      D => ACCEL_TMP_SUM_reg(10),
      Q => ACCEL_TMP(6),
      R => RESET
    );
\ACCEL_TMP_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK,
      CE => StC_Adxl_Ctrl(3),
      D => ACCEL_TMP_SUM_reg(11),
      Q => ACCEL_TMP(7),
      R => RESET
    );
\ACCEL_TMP_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK,
      CE => StC_Adxl_Ctrl(3),
      D => ACCEL_TMP_SUM_reg(12),
      Q => ACCEL_TMP(8),
      R => RESET
    );
\ACCEL_TMP_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK,
      CE => StC_Adxl_Ctrl(3),
      D => ACCEL_TMP_SUM_reg(13),
      Q => ACCEL_TMP(9),
      R => RESET
    );
\ACCEL_X_SUM[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => RESET,
      I1 => StC_Adxl_Ctrl(3),
      O => ACCEL_X_SUM0
    );
\ACCEL_X_SUM[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(3),
      I1 => \ACCEL_X_SUM_reg_n_0_[3]\,
      O => \ACCEL_X_SUM[0]_i_3_n_0\
    );
\ACCEL_X_SUM[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(2),
      I1 => \ACCEL_X_SUM_reg_n_0_[2]\,
      O => \ACCEL_X_SUM[0]_i_4_n_0\
    );
\ACCEL_X_SUM[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(1),
      I1 => \ACCEL_X_SUM_reg_n_0_[1]\,
      O => \ACCEL_X_SUM[0]_i_5_n_0\
    );
\ACCEL_X_SUM[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(0),
      I1 => \ACCEL_X_SUM_reg_n_0_[0]\,
      O => \ACCEL_X_SUM[0]_i_6_n_0\
    );
\ACCEL_X_SUM[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(15),
      I1 => ACCEL_X_SUM_reg(15),
      O => \ACCEL_X_SUM[12]_i_2_n_0\
    );
\ACCEL_X_SUM[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(14),
      I1 => ACCEL_X_SUM_reg(14),
      O => \ACCEL_X_SUM[12]_i_3_n_0\
    );
\ACCEL_X_SUM[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(13),
      I1 => ACCEL_X_SUM_reg(13),
      O => \ACCEL_X_SUM[12]_i_4_n_0\
    );
\ACCEL_X_SUM[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(12),
      I1 => ACCEL_X_SUM_reg(12),
      O => \ACCEL_X_SUM[12]_i_5_n_0\
    );
\ACCEL_X_SUM[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(7),
      I1 => ACCEL_X_SUM_reg(7),
      O => \ACCEL_X_SUM[4]_i_2_n_0\
    );
\ACCEL_X_SUM[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(6),
      I1 => ACCEL_X_SUM_reg(6),
      O => \ACCEL_X_SUM[4]_i_3_n_0\
    );
\ACCEL_X_SUM[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(5),
      I1 => ACCEL_X_SUM_reg(5),
      O => \ACCEL_X_SUM[4]_i_4_n_0\
    );
\ACCEL_X_SUM[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(4),
      I1 => ACCEL_X_SUM_reg(4),
      O => \ACCEL_X_SUM[4]_i_5_n_0\
    );
\ACCEL_X_SUM[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(11),
      I1 => ACCEL_X_SUM_reg(11),
      O => \ACCEL_X_SUM[8]_i_2_n_0\
    );
\ACCEL_X_SUM[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(10),
      I1 => ACCEL_X_SUM_reg(10),
      O => \ACCEL_X_SUM[8]_i_3_n_0\
    );
\ACCEL_X_SUM[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(9),
      I1 => ACCEL_X_SUM_reg(9),
      O => \ACCEL_X_SUM[8]_i_4_n_0\
    );
\ACCEL_X_SUM[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \in\(8),
      I1 => ACCEL_X_SUM_reg(8),
      O => \ACCEL_X_SUM[8]_i_5_n_0\
    );
\ACCEL_X_SUM_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_X_SUM_reg[0]_i_2_n_7\,
      Q => \ACCEL_X_SUM_reg_n_0_[0]\,
      R => ACCEL_X_SUM0
    );
\ACCEL_X_SUM_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ACCEL_X_SUM_reg[0]_i_2_n_0\,
      CO(2) => \ACCEL_X_SUM_reg[0]_i_2_n_1\,
      CO(1) => \ACCEL_X_SUM_reg[0]_i_2_n_2\,
      CO(0) => \ACCEL_X_SUM_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \in\(3 downto 0),
      O(3) => \ACCEL_X_SUM_reg[0]_i_2_n_4\,
      O(2) => \ACCEL_X_SUM_reg[0]_i_2_n_5\,
      O(1) => \ACCEL_X_SUM_reg[0]_i_2_n_6\,
      O(0) => \ACCEL_X_SUM_reg[0]_i_2_n_7\,
      S(3) => \ACCEL_X_SUM[0]_i_3_n_0\,
      S(2) => \ACCEL_X_SUM[0]_i_4_n_0\,
      S(1) => \ACCEL_X_SUM[0]_i_5_n_0\,
      S(0) => \ACCEL_X_SUM[0]_i_6_n_0\
    );
\ACCEL_X_SUM_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_X_SUM_reg[8]_i_1_n_5\,
      Q => ACCEL_X_SUM_reg(10),
      R => ACCEL_X_SUM0
    );
\ACCEL_X_SUM_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_X_SUM_reg[8]_i_1_n_4\,
      Q => ACCEL_X_SUM_reg(11),
      R => ACCEL_X_SUM0
    );
\ACCEL_X_SUM_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_X_SUM_reg[12]_i_1_n_7\,
      Q => ACCEL_X_SUM_reg(12),
      R => ACCEL_X_SUM0
    );
\ACCEL_X_SUM_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ACCEL_X_SUM_reg[8]_i_1_n_0\,
      CO(3) => \NLW_ACCEL_X_SUM_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \ACCEL_X_SUM_reg[12]_i_1_n_1\,
      CO(1) => \ACCEL_X_SUM_reg[12]_i_1_n_2\,
      CO(0) => \ACCEL_X_SUM_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \in\(14 downto 12),
      O(3) => \ACCEL_X_SUM_reg[12]_i_1_n_4\,
      O(2) => \ACCEL_X_SUM_reg[12]_i_1_n_5\,
      O(1) => \ACCEL_X_SUM_reg[12]_i_1_n_6\,
      O(0) => \ACCEL_X_SUM_reg[12]_i_1_n_7\,
      S(3) => \ACCEL_X_SUM[12]_i_2_n_0\,
      S(2) => \ACCEL_X_SUM[12]_i_3_n_0\,
      S(1) => \ACCEL_X_SUM[12]_i_4_n_0\,
      S(0) => \ACCEL_X_SUM[12]_i_5_n_0\
    );
\ACCEL_X_SUM_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_X_SUM_reg[12]_i_1_n_6\,
      Q => ACCEL_X_SUM_reg(13),
      R => ACCEL_X_SUM0
    );
\ACCEL_X_SUM_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_X_SUM_reg[12]_i_1_n_5\,
      Q => ACCEL_X_SUM_reg(14),
      R => ACCEL_X_SUM0
    );
\ACCEL_X_SUM_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_X_SUM_reg[12]_i_1_n_4\,
      Q => ACCEL_X_SUM_reg(15),
      R => ACCEL_X_SUM0
    );
\ACCEL_X_SUM_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_X_SUM_reg[0]_i_2_n_6\,
      Q => \ACCEL_X_SUM_reg_n_0_[1]\,
      R => ACCEL_X_SUM0
    );
\ACCEL_X_SUM_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_X_SUM_reg[0]_i_2_n_5\,
      Q => \ACCEL_X_SUM_reg_n_0_[2]\,
      R => ACCEL_X_SUM0
    );
\ACCEL_X_SUM_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_X_SUM_reg[0]_i_2_n_4\,
      Q => \ACCEL_X_SUM_reg_n_0_[3]\,
      R => ACCEL_X_SUM0
    );
\ACCEL_X_SUM_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_X_SUM_reg[4]_i_1_n_7\,
      Q => ACCEL_X_SUM_reg(4),
      R => ACCEL_X_SUM0
    );
\ACCEL_X_SUM_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ACCEL_X_SUM_reg[0]_i_2_n_0\,
      CO(3) => \ACCEL_X_SUM_reg[4]_i_1_n_0\,
      CO(2) => \ACCEL_X_SUM_reg[4]_i_1_n_1\,
      CO(1) => \ACCEL_X_SUM_reg[4]_i_1_n_2\,
      CO(0) => \ACCEL_X_SUM_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \in\(7 downto 4),
      O(3) => \ACCEL_X_SUM_reg[4]_i_1_n_4\,
      O(2) => \ACCEL_X_SUM_reg[4]_i_1_n_5\,
      O(1) => \ACCEL_X_SUM_reg[4]_i_1_n_6\,
      O(0) => \ACCEL_X_SUM_reg[4]_i_1_n_7\,
      S(3) => \ACCEL_X_SUM[4]_i_2_n_0\,
      S(2) => \ACCEL_X_SUM[4]_i_3_n_0\,
      S(1) => \ACCEL_X_SUM[4]_i_4_n_0\,
      S(0) => \ACCEL_X_SUM[4]_i_5_n_0\
    );
\ACCEL_X_SUM_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_X_SUM_reg[4]_i_1_n_6\,
      Q => ACCEL_X_SUM_reg(5),
      R => ACCEL_X_SUM0
    );
\ACCEL_X_SUM_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_X_SUM_reg[4]_i_1_n_5\,
      Q => ACCEL_X_SUM_reg(6),
      R => ACCEL_X_SUM0
    );
\ACCEL_X_SUM_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_X_SUM_reg[4]_i_1_n_4\,
      Q => ACCEL_X_SUM_reg(7),
      R => ACCEL_X_SUM0
    );
\ACCEL_X_SUM_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_X_SUM_reg[8]_i_1_n_7\,
      Q => ACCEL_X_SUM_reg(8),
      R => ACCEL_X_SUM0
    );
\ACCEL_X_SUM_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ACCEL_X_SUM_reg[4]_i_1_n_0\,
      CO(3) => \ACCEL_X_SUM_reg[8]_i_1_n_0\,
      CO(2) => \ACCEL_X_SUM_reg[8]_i_1_n_1\,
      CO(1) => \ACCEL_X_SUM_reg[8]_i_1_n_2\,
      CO(0) => \ACCEL_X_SUM_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \in\(11 downto 8),
      O(3) => \ACCEL_X_SUM_reg[8]_i_1_n_4\,
      O(2) => \ACCEL_X_SUM_reg[8]_i_1_n_5\,
      O(1) => \ACCEL_X_SUM_reg[8]_i_1_n_6\,
      O(0) => \ACCEL_X_SUM_reg[8]_i_1_n_7\,
      S(3) => \ACCEL_X_SUM[8]_i_2_n_0\,
      S(2) => \ACCEL_X_SUM[8]_i_3_n_0\,
      S(1) => \ACCEL_X_SUM[8]_i_4_n_0\,
      S(0) => \ACCEL_X_SUM[8]_i_5_n_0\
    );
\ACCEL_X_SUM_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_X_SUM_reg[8]_i_1_n_6\,
      Q => ACCEL_X_SUM_reg(9),
      R => ACCEL_X_SUM0
    );
\ACCEL_X_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK,
      CE => StC_Adxl_Ctrl(3),
      D => ACCEL_X_SUM_reg(4),
      Q => ACCEL_X(0),
      R => RESET
    );
\ACCEL_X_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK,
      CE => StC_Adxl_Ctrl(3),
      D => ACCEL_X_SUM_reg(14),
      Q => ACCEL_X(10),
      R => RESET
    );
\ACCEL_X_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK,
      CE => StC_Adxl_Ctrl(3),
      D => ACCEL_X_SUM_reg(15),
      Q => ACCEL_X(11),
      R => RESET
    );
\ACCEL_X_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK,
      CE => StC_Adxl_Ctrl(3),
      D => ACCEL_X_SUM_reg(5),
      Q => ACCEL_X(1),
      R => RESET
    );
\ACCEL_X_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK,
      CE => StC_Adxl_Ctrl(3),
      D => ACCEL_X_SUM_reg(6),
      Q => ACCEL_X(2),
      R => RESET
    );
\ACCEL_X_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK,
      CE => StC_Adxl_Ctrl(3),
      D => ACCEL_X_SUM_reg(7),
      Q => ACCEL_X(3),
      R => RESET
    );
\ACCEL_X_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK,
      CE => StC_Adxl_Ctrl(3),
      D => ACCEL_X_SUM_reg(8),
      Q => ACCEL_X(4),
      R => RESET
    );
\ACCEL_X_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK,
      CE => StC_Adxl_Ctrl(3),
      D => ACCEL_X_SUM_reg(9),
      Q => ACCEL_X(5),
      R => RESET
    );
\ACCEL_X_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK,
      CE => StC_Adxl_Ctrl(3),
      D => ACCEL_X_SUM_reg(10),
      Q => ACCEL_X(6),
      R => RESET
    );
\ACCEL_X_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK,
      CE => StC_Adxl_Ctrl(3),
      D => ACCEL_X_SUM_reg(11),
      Q => ACCEL_X(7),
      R => RESET
    );
\ACCEL_X_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK,
      CE => StC_Adxl_Ctrl(3),
      D => ACCEL_X_SUM_reg(12),
      Q => ACCEL_X(8),
      R => RESET
    );
\ACCEL_X_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK,
      CE => StC_Adxl_Ctrl(3),
      D => ACCEL_X_SUM_reg(13),
      Q => ACCEL_X(9),
      R => RESET
    );
\ACCEL_Y_SUM[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Data_Reg_reg[5]\(3),
      I1 => \ACCEL_Y_SUM_reg_n_0_[3]\,
      O => \ACCEL_Y_SUM[0]_i_2_n_0\
    );
\ACCEL_Y_SUM[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Data_Reg_reg[5]\(2),
      I1 => \ACCEL_Y_SUM_reg_n_0_[2]\,
      O => \ACCEL_Y_SUM[0]_i_3_n_0\
    );
\ACCEL_Y_SUM[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Data_Reg_reg[5]\(1),
      I1 => \ACCEL_Y_SUM_reg_n_0_[1]\,
      O => \ACCEL_Y_SUM[0]_i_4_n_0\
    );
\ACCEL_Y_SUM[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Data_Reg_reg[5]\(0),
      I1 => \ACCEL_Y_SUM_reg_n_0_[0]\,
      O => \ACCEL_Y_SUM[0]_i_5_n_0\
    );
\ACCEL_Y_SUM[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Data_Reg_reg[4]\(7),
      I1 => ACCEL_Y_SUM_reg(15),
      O => \ACCEL_Y_SUM[12]_i_2_n_0\
    );
\ACCEL_Y_SUM[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Data_Reg_reg[4]\(6),
      I1 => ACCEL_Y_SUM_reg(14),
      O => \ACCEL_Y_SUM[12]_i_3_n_0\
    );
\ACCEL_Y_SUM[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Data_Reg_reg[4]\(5),
      I1 => ACCEL_Y_SUM_reg(13),
      O => \ACCEL_Y_SUM[12]_i_4_n_0\
    );
\ACCEL_Y_SUM[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Data_Reg_reg[4]\(4),
      I1 => ACCEL_Y_SUM_reg(12),
      O => \ACCEL_Y_SUM[12]_i_5_n_0\
    );
\ACCEL_Y_SUM[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Data_Reg_reg[5]\(7),
      I1 => ACCEL_Y_SUM_reg(7),
      O => \ACCEL_Y_SUM[4]_i_2_n_0\
    );
\ACCEL_Y_SUM[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Data_Reg_reg[5]\(6),
      I1 => ACCEL_Y_SUM_reg(6),
      O => \ACCEL_Y_SUM[4]_i_3_n_0\
    );
\ACCEL_Y_SUM[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Data_Reg_reg[5]\(5),
      I1 => ACCEL_Y_SUM_reg(5),
      O => \ACCEL_Y_SUM[4]_i_4_n_0\
    );
\ACCEL_Y_SUM[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Data_Reg_reg[5]\(4),
      I1 => ACCEL_Y_SUM_reg(4),
      O => \ACCEL_Y_SUM[4]_i_5_n_0\
    );
\ACCEL_Y_SUM[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Data_Reg_reg[4]\(3),
      I1 => ACCEL_Y_SUM_reg(11),
      O => \ACCEL_Y_SUM[8]_i_2_n_0\
    );
\ACCEL_Y_SUM[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Data_Reg_reg[4]\(2),
      I1 => ACCEL_Y_SUM_reg(10),
      O => \ACCEL_Y_SUM[8]_i_3_n_0\
    );
\ACCEL_Y_SUM[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Data_Reg_reg[4]\(1),
      I1 => ACCEL_Y_SUM_reg(9),
      O => \ACCEL_Y_SUM[8]_i_4_n_0\
    );
\ACCEL_Y_SUM[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Data_Reg_reg[4]\(0),
      I1 => ACCEL_Y_SUM_reg(8),
      O => \ACCEL_Y_SUM[8]_i_5_n_0\
    );
\ACCEL_Y_SUM_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_Y_SUM_reg[0]_i_1_n_7\,
      Q => \ACCEL_Y_SUM_reg_n_0_[0]\,
      R => ACCEL_X_SUM0
    );
\ACCEL_Y_SUM_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ACCEL_Y_SUM_reg[0]_i_1_n_0\,
      CO(2) => \ACCEL_Y_SUM_reg[0]_i_1_n_1\,
      CO(1) => \ACCEL_Y_SUM_reg[0]_i_1_n_2\,
      CO(0) => \ACCEL_Y_SUM_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \Data_Reg_reg[5]\(3 downto 0),
      O(3) => \ACCEL_Y_SUM_reg[0]_i_1_n_4\,
      O(2) => \ACCEL_Y_SUM_reg[0]_i_1_n_5\,
      O(1) => \ACCEL_Y_SUM_reg[0]_i_1_n_6\,
      O(0) => \ACCEL_Y_SUM_reg[0]_i_1_n_7\,
      S(3) => \ACCEL_Y_SUM[0]_i_2_n_0\,
      S(2) => \ACCEL_Y_SUM[0]_i_3_n_0\,
      S(1) => \ACCEL_Y_SUM[0]_i_4_n_0\,
      S(0) => \ACCEL_Y_SUM[0]_i_5_n_0\
    );
\ACCEL_Y_SUM_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_Y_SUM_reg[8]_i_1_n_5\,
      Q => ACCEL_Y_SUM_reg(10),
      R => ACCEL_X_SUM0
    );
\ACCEL_Y_SUM_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_Y_SUM_reg[8]_i_1_n_4\,
      Q => ACCEL_Y_SUM_reg(11),
      R => ACCEL_X_SUM0
    );
\ACCEL_Y_SUM_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_Y_SUM_reg[12]_i_1_n_7\,
      Q => ACCEL_Y_SUM_reg(12),
      R => ACCEL_X_SUM0
    );
\ACCEL_Y_SUM_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ACCEL_Y_SUM_reg[8]_i_1_n_0\,
      CO(3) => \NLW_ACCEL_Y_SUM_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \ACCEL_Y_SUM_reg[12]_i_1_n_1\,
      CO(1) => \ACCEL_Y_SUM_reg[12]_i_1_n_2\,
      CO(0) => \ACCEL_Y_SUM_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \Data_Reg_reg[4]\(6 downto 4),
      O(3) => \ACCEL_Y_SUM_reg[12]_i_1_n_4\,
      O(2) => \ACCEL_Y_SUM_reg[12]_i_1_n_5\,
      O(1) => \ACCEL_Y_SUM_reg[12]_i_1_n_6\,
      O(0) => \ACCEL_Y_SUM_reg[12]_i_1_n_7\,
      S(3) => \ACCEL_Y_SUM[12]_i_2_n_0\,
      S(2) => \ACCEL_Y_SUM[12]_i_3_n_0\,
      S(1) => \ACCEL_Y_SUM[12]_i_4_n_0\,
      S(0) => \ACCEL_Y_SUM[12]_i_5_n_0\
    );
\ACCEL_Y_SUM_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_Y_SUM_reg[12]_i_1_n_6\,
      Q => ACCEL_Y_SUM_reg(13),
      R => ACCEL_X_SUM0
    );
\ACCEL_Y_SUM_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_Y_SUM_reg[12]_i_1_n_5\,
      Q => ACCEL_Y_SUM_reg(14),
      R => ACCEL_X_SUM0
    );
\ACCEL_Y_SUM_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_Y_SUM_reg[12]_i_1_n_4\,
      Q => ACCEL_Y_SUM_reg(15),
      R => ACCEL_X_SUM0
    );
\ACCEL_Y_SUM_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_Y_SUM_reg[0]_i_1_n_6\,
      Q => \ACCEL_Y_SUM_reg_n_0_[1]\,
      R => ACCEL_X_SUM0
    );
\ACCEL_Y_SUM_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_Y_SUM_reg[0]_i_1_n_5\,
      Q => \ACCEL_Y_SUM_reg_n_0_[2]\,
      R => ACCEL_X_SUM0
    );
\ACCEL_Y_SUM_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_Y_SUM_reg[0]_i_1_n_4\,
      Q => \ACCEL_Y_SUM_reg_n_0_[3]\,
      R => ACCEL_X_SUM0
    );
\ACCEL_Y_SUM_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_Y_SUM_reg[4]_i_1_n_7\,
      Q => ACCEL_Y_SUM_reg(4),
      R => ACCEL_X_SUM0
    );
\ACCEL_Y_SUM_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ACCEL_Y_SUM_reg[0]_i_1_n_0\,
      CO(3) => \ACCEL_Y_SUM_reg[4]_i_1_n_0\,
      CO(2) => \ACCEL_Y_SUM_reg[4]_i_1_n_1\,
      CO(1) => \ACCEL_Y_SUM_reg[4]_i_1_n_2\,
      CO(0) => \ACCEL_Y_SUM_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \Data_Reg_reg[5]\(7 downto 4),
      O(3) => \ACCEL_Y_SUM_reg[4]_i_1_n_4\,
      O(2) => \ACCEL_Y_SUM_reg[4]_i_1_n_5\,
      O(1) => \ACCEL_Y_SUM_reg[4]_i_1_n_6\,
      O(0) => \ACCEL_Y_SUM_reg[4]_i_1_n_7\,
      S(3) => \ACCEL_Y_SUM[4]_i_2_n_0\,
      S(2) => \ACCEL_Y_SUM[4]_i_3_n_0\,
      S(1) => \ACCEL_Y_SUM[4]_i_4_n_0\,
      S(0) => \ACCEL_Y_SUM[4]_i_5_n_0\
    );
\ACCEL_Y_SUM_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_Y_SUM_reg[4]_i_1_n_6\,
      Q => ACCEL_Y_SUM_reg(5),
      R => ACCEL_X_SUM0
    );
\ACCEL_Y_SUM_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_Y_SUM_reg[4]_i_1_n_5\,
      Q => ACCEL_Y_SUM_reg(6),
      R => ACCEL_X_SUM0
    );
\ACCEL_Y_SUM_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_Y_SUM_reg[4]_i_1_n_4\,
      Q => ACCEL_Y_SUM_reg(7),
      R => ACCEL_X_SUM0
    );
\ACCEL_Y_SUM_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_Y_SUM_reg[8]_i_1_n_7\,
      Q => ACCEL_Y_SUM_reg(8),
      R => ACCEL_X_SUM0
    );
\ACCEL_Y_SUM_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ACCEL_Y_SUM_reg[4]_i_1_n_0\,
      CO(3) => \ACCEL_Y_SUM_reg[8]_i_1_n_0\,
      CO(2) => \ACCEL_Y_SUM_reg[8]_i_1_n_1\,
      CO(1) => \ACCEL_Y_SUM_reg[8]_i_1_n_2\,
      CO(0) => \ACCEL_Y_SUM_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \Data_Reg_reg[4]\(3 downto 0),
      O(3) => \ACCEL_Y_SUM_reg[8]_i_1_n_4\,
      O(2) => \ACCEL_Y_SUM_reg[8]_i_1_n_5\,
      O(1) => \ACCEL_Y_SUM_reg[8]_i_1_n_6\,
      O(0) => \ACCEL_Y_SUM_reg[8]_i_1_n_7\,
      S(3) => \ACCEL_Y_SUM[8]_i_2_n_0\,
      S(2) => \ACCEL_Y_SUM[8]_i_3_n_0\,
      S(1) => \ACCEL_Y_SUM[8]_i_4_n_0\,
      S(0) => \ACCEL_Y_SUM[8]_i_5_n_0\
    );
\ACCEL_Y_SUM_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_Y_SUM_reg[8]_i_1_n_6\,
      Q => ACCEL_Y_SUM_reg(9),
      R => ACCEL_X_SUM0
    );
\ACCEL_Y_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK,
      CE => StC_Adxl_Ctrl(3),
      D => ACCEL_Y_SUM_reg(4),
      Q => ACCEL_Y(0),
      R => RESET
    );
\ACCEL_Y_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK,
      CE => StC_Adxl_Ctrl(3),
      D => ACCEL_Y_SUM_reg(14),
      Q => ACCEL_Y(10),
      R => RESET
    );
\ACCEL_Y_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK,
      CE => StC_Adxl_Ctrl(3),
      D => ACCEL_Y_SUM_reg(15),
      Q => ACCEL_Y(11),
      R => RESET
    );
\ACCEL_Y_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK,
      CE => StC_Adxl_Ctrl(3),
      D => ACCEL_Y_SUM_reg(5),
      Q => ACCEL_Y(1),
      R => RESET
    );
\ACCEL_Y_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK,
      CE => StC_Adxl_Ctrl(3),
      D => ACCEL_Y_SUM_reg(6),
      Q => ACCEL_Y(2),
      R => RESET
    );
\ACCEL_Y_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK,
      CE => StC_Adxl_Ctrl(3),
      D => ACCEL_Y_SUM_reg(7),
      Q => ACCEL_Y(3),
      R => RESET
    );
\ACCEL_Y_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK,
      CE => StC_Adxl_Ctrl(3),
      D => ACCEL_Y_SUM_reg(8),
      Q => ACCEL_Y(4),
      R => RESET
    );
\ACCEL_Y_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK,
      CE => StC_Adxl_Ctrl(3),
      D => ACCEL_Y_SUM_reg(9),
      Q => ACCEL_Y(5),
      R => RESET
    );
\ACCEL_Y_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK,
      CE => StC_Adxl_Ctrl(3),
      D => ACCEL_Y_SUM_reg(10),
      Q => ACCEL_Y(6),
      R => RESET
    );
\ACCEL_Y_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK,
      CE => StC_Adxl_Ctrl(3),
      D => ACCEL_Y_SUM_reg(11),
      Q => ACCEL_Y(7),
      R => RESET
    );
\ACCEL_Y_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK,
      CE => StC_Adxl_Ctrl(3),
      D => ACCEL_Y_SUM_reg(12),
      Q => ACCEL_Y(8),
      R => RESET
    );
\ACCEL_Y_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK,
      CE => StC_Adxl_Ctrl(3),
      D => ACCEL_Y_SUM_reg(13),
      Q => ACCEL_Y(9),
      R => RESET
    );
\ACCEL_Z_SUM[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Data_Reg_reg[3]\(3),
      I1 => \ACCEL_Z_SUM_reg_n_0_[3]\,
      O => \ACCEL_Z_SUM[0]_i_2_n_0\
    );
\ACCEL_Z_SUM[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Data_Reg_reg[3]\(2),
      I1 => \ACCEL_Z_SUM_reg_n_0_[2]\,
      O => \ACCEL_Z_SUM[0]_i_3_n_0\
    );
\ACCEL_Z_SUM[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Data_Reg_reg[3]\(1),
      I1 => \ACCEL_Z_SUM_reg_n_0_[1]\,
      O => \ACCEL_Z_SUM[0]_i_4_n_0\
    );
\ACCEL_Z_SUM[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Data_Reg_reg[3]\(0),
      I1 => \ACCEL_Z_SUM_reg_n_0_[0]\,
      O => \ACCEL_Z_SUM[0]_i_5_n_0\
    );
\ACCEL_Z_SUM[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Data_Reg_reg[2]\(7),
      I1 => ACCEL_Z_SUM_reg(15),
      O => \ACCEL_Z_SUM[12]_i_2_n_0\
    );
\ACCEL_Z_SUM[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Data_Reg_reg[2]\(6),
      I1 => ACCEL_Z_SUM_reg(14),
      O => \ACCEL_Z_SUM[12]_i_3_n_0\
    );
\ACCEL_Z_SUM[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Data_Reg_reg[2]\(5),
      I1 => ACCEL_Z_SUM_reg(13),
      O => \ACCEL_Z_SUM[12]_i_4_n_0\
    );
\ACCEL_Z_SUM[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Data_Reg_reg[2]\(4),
      I1 => ACCEL_Z_SUM_reg(12),
      O => \ACCEL_Z_SUM[12]_i_5_n_0\
    );
\ACCEL_Z_SUM[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Data_Reg_reg[3]\(7),
      I1 => ACCEL_Z_SUM_reg(7),
      O => \ACCEL_Z_SUM[4]_i_2_n_0\
    );
\ACCEL_Z_SUM[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Data_Reg_reg[3]\(6),
      I1 => ACCEL_Z_SUM_reg(6),
      O => \ACCEL_Z_SUM[4]_i_3_n_0\
    );
\ACCEL_Z_SUM[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Data_Reg_reg[3]\(5),
      I1 => ACCEL_Z_SUM_reg(5),
      O => \ACCEL_Z_SUM[4]_i_4_n_0\
    );
\ACCEL_Z_SUM[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Data_Reg_reg[3]\(4),
      I1 => ACCEL_Z_SUM_reg(4),
      O => \ACCEL_Z_SUM[4]_i_5_n_0\
    );
\ACCEL_Z_SUM[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Data_Reg_reg[2]\(3),
      I1 => ACCEL_Z_SUM_reg(11),
      O => \ACCEL_Z_SUM[8]_i_2_n_0\
    );
\ACCEL_Z_SUM[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Data_Reg_reg[2]\(2),
      I1 => ACCEL_Z_SUM_reg(10),
      O => \ACCEL_Z_SUM[8]_i_3_n_0\
    );
\ACCEL_Z_SUM[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Data_Reg_reg[2]\(1),
      I1 => ACCEL_Z_SUM_reg(9),
      O => \ACCEL_Z_SUM[8]_i_4_n_0\
    );
\ACCEL_Z_SUM[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Data_Reg_reg[2]\(0),
      I1 => ACCEL_Z_SUM_reg(8),
      O => \ACCEL_Z_SUM[8]_i_5_n_0\
    );
\ACCEL_Z_SUM_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_Z_SUM_reg[0]_i_1_n_7\,
      Q => \ACCEL_Z_SUM_reg_n_0_[0]\,
      R => ACCEL_X_SUM0
    );
\ACCEL_Z_SUM_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \ACCEL_Z_SUM_reg[0]_i_1_n_0\,
      CO(2) => \ACCEL_Z_SUM_reg[0]_i_1_n_1\,
      CO(1) => \ACCEL_Z_SUM_reg[0]_i_1_n_2\,
      CO(0) => \ACCEL_Z_SUM_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \Data_Reg_reg[3]\(3 downto 0),
      O(3) => \ACCEL_Z_SUM_reg[0]_i_1_n_4\,
      O(2) => \ACCEL_Z_SUM_reg[0]_i_1_n_5\,
      O(1) => \ACCEL_Z_SUM_reg[0]_i_1_n_6\,
      O(0) => \ACCEL_Z_SUM_reg[0]_i_1_n_7\,
      S(3) => \ACCEL_Z_SUM[0]_i_2_n_0\,
      S(2) => \ACCEL_Z_SUM[0]_i_3_n_0\,
      S(1) => \ACCEL_Z_SUM[0]_i_4_n_0\,
      S(0) => \ACCEL_Z_SUM[0]_i_5_n_0\
    );
\ACCEL_Z_SUM_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_Z_SUM_reg[8]_i_1_n_5\,
      Q => ACCEL_Z_SUM_reg(10),
      R => ACCEL_X_SUM0
    );
\ACCEL_Z_SUM_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_Z_SUM_reg[8]_i_1_n_4\,
      Q => ACCEL_Z_SUM_reg(11),
      R => ACCEL_X_SUM0
    );
\ACCEL_Z_SUM_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_Z_SUM_reg[12]_i_1_n_7\,
      Q => ACCEL_Z_SUM_reg(12),
      R => ACCEL_X_SUM0
    );
\ACCEL_Z_SUM_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ACCEL_Z_SUM_reg[8]_i_1_n_0\,
      CO(3) => \NLW_ACCEL_Z_SUM_reg[12]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \ACCEL_Z_SUM_reg[12]_i_1_n_1\,
      CO(1) => \ACCEL_Z_SUM_reg[12]_i_1_n_2\,
      CO(0) => \ACCEL_Z_SUM_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \Data_Reg_reg[2]\(6 downto 4),
      O(3) => \ACCEL_Z_SUM_reg[12]_i_1_n_4\,
      O(2) => \ACCEL_Z_SUM_reg[12]_i_1_n_5\,
      O(1) => \ACCEL_Z_SUM_reg[12]_i_1_n_6\,
      O(0) => \ACCEL_Z_SUM_reg[12]_i_1_n_7\,
      S(3) => \ACCEL_Z_SUM[12]_i_2_n_0\,
      S(2) => \ACCEL_Z_SUM[12]_i_3_n_0\,
      S(1) => \ACCEL_Z_SUM[12]_i_4_n_0\,
      S(0) => \ACCEL_Z_SUM[12]_i_5_n_0\
    );
\ACCEL_Z_SUM_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_Z_SUM_reg[12]_i_1_n_6\,
      Q => ACCEL_Z_SUM_reg(13),
      R => ACCEL_X_SUM0
    );
\ACCEL_Z_SUM_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_Z_SUM_reg[12]_i_1_n_5\,
      Q => ACCEL_Z_SUM_reg(14),
      R => ACCEL_X_SUM0
    );
\ACCEL_Z_SUM_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_Z_SUM_reg[12]_i_1_n_4\,
      Q => ACCEL_Z_SUM_reg(15),
      R => ACCEL_X_SUM0
    );
\ACCEL_Z_SUM_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_Z_SUM_reg[0]_i_1_n_6\,
      Q => \ACCEL_Z_SUM_reg_n_0_[1]\,
      R => ACCEL_X_SUM0
    );
\ACCEL_Z_SUM_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_Z_SUM_reg[0]_i_1_n_5\,
      Q => \ACCEL_Z_SUM_reg_n_0_[2]\,
      R => ACCEL_X_SUM0
    );
\ACCEL_Z_SUM_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_Z_SUM_reg[0]_i_1_n_4\,
      Q => \ACCEL_Z_SUM_reg_n_0_[3]\,
      R => ACCEL_X_SUM0
    );
\ACCEL_Z_SUM_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_Z_SUM_reg[4]_i_1_n_7\,
      Q => ACCEL_Z_SUM_reg(4),
      R => ACCEL_X_SUM0
    );
\ACCEL_Z_SUM_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ACCEL_Z_SUM_reg[0]_i_1_n_0\,
      CO(3) => \ACCEL_Z_SUM_reg[4]_i_1_n_0\,
      CO(2) => \ACCEL_Z_SUM_reg[4]_i_1_n_1\,
      CO(1) => \ACCEL_Z_SUM_reg[4]_i_1_n_2\,
      CO(0) => \ACCEL_Z_SUM_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \Data_Reg_reg[3]\(7 downto 4),
      O(3) => \ACCEL_Z_SUM_reg[4]_i_1_n_4\,
      O(2) => \ACCEL_Z_SUM_reg[4]_i_1_n_5\,
      O(1) => \ACCEL_Z_SUM_reg[4]_i_1_n_6\,
      O(0) => \ACCEL_Z_SUM_reg[4]_i_1_n_7\,
      S(3) => \ACCEL_Z_SUM[4]_i_2_n_0\,
      S(2) => \ACCEL_Z_SUM[4]_i_3_n_0\,
      S(1) => \ACCEL_Z_SUM[4]_i_4_n_0\,
      S(0) => \ACCEL_Z_SUM[4]_i_5_n_0\
    );
\ACCEL_Z_SUM_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_Z_SUM_reg[4]_i_1_n_6\,
      Q => ACCEL_Z_SUM_reg(5),
      R => ACCEL_X_SUM0
    );
\ACCEL_Z_SUM_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_Z_SUM_reg[4]_i_1_n_5\,
      Q => ACCEL_Z_SUM_reg(6),
      R => ACCEL_X_SUM0
    );
\ACCEL_Z_SUM_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_Z_SUM_reg[4]_i_1_n_4\,
      Q => ACCEL_Z_SUM_reg(7),
      R => ACCEL_X_SUM0
    );
\ACCEL_Z_SUM_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_Z_SUM_reg[8]_i_1_n_7\,
      Q => ACCEL_Z_SUM_reg(8),
      R => ACCEL_X_SUM0
    );
\ACCEL_Z_SUM_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \ACCEL_Z_SUM_reg[4]_i_1_n_0\,
      CO(3) => \ACCEL_Z_SUM_reg[8]_i_1_n_0\,
      CO(2) => \ACCEL_Z_SUM_reg[8]_i_1_n_1\,
      CO(1) => \ACCEL_Z_SUM_reg[8]_i_1_n_2\,
      CO(0) => \ACCEL_Z_SUM_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \Data_Reg_reg[2]\(3 downto 0),
      O(3) => \ACCEL_Z_SUM_reg[8]_i_1_n_4\,
      O(2) => \ACCEL_Z_SUM_reg[8]_i_1_n_5\,
      O(1) => \ACCEL_Z_SUM_reg[8]_i_1_n_6\,
      O(0) => \ACCEL_Z_SUM_reg[8]_i_1_n_7\,
      S(3) => \ACCEL_Z_SUM[8]_i_2_n_0\,
      S(2) => \ACCEL_Z_SUM[8]_i_3_n_0\,
      S(1) => \ACCEL_Z_SUM[8]_i_4_n_0\,
      S(0) => \ACCEL_Z_SUM[8]_i_5_n_0\
    );
\ACCEL_Z_SUM_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \ACCEL_Z_SUM_reg[8]_i_1_n_6\,
      Q => ACCEL_Z_SUM_reg(9),
      R => ACCEL_X_SUM0
    );
\ACCEL_Z_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK,
      CE => StC_Adxl_Ctrl(3),
      D => ACCEL_Z_SUM_reg(4),
      Q => ACCEL_Z(0),
      R => RESET
    );
\ACCEL_Z_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK,
      CE => StC_Adxl_Ctrl(3),
      D => ACCEL_Z_SUM_reg(14),
      Q => ACCEL_Z(10),
      R => RESET
    );
\ACCEL_Z_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK,
      CE => StC_Adxl_Ctrl(3),
      D => ACCEL_Z_SUM_reg(15),
      Q => ACCEL_Z(11),
      R => RESET
    );
\ACCEL_Z_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK,
      CE => StC_Adxl_Ctrl(3),
      D => ACCEL_Z_SUM_reg(5),
      Q => ACCEL_Z(1),
      R => RESET
    );
\ACCEL_Z_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK,
      CE => StC_Adxl_Ctrl(3),
      D => ACCEL_Z_SUM_reg(6),
      Q => ACCEL_Z(2),
      R => RESET
    );
\ACCEL_Z_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK,
      CE => StC_Adxl_Ctrl(3),
      D => ACCEL_Z_SUM_reg(7),
      Q => ACCEL_Z(3),
      R => RESET
    );
\ACCEL_Z_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK,
      CE => StC_Adxl_Ctrl(3),
      D => ACCEL_Z_SUM_reg(8),
      Q => ACCEL_Z(4),
      R => RESET
    );
\ACCEL_Z_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK,
      CE => StC_Adxl_Ctrl(3),
      D => ACCEL_Z_SUM_reg(9),
      Q => ACCEL_Z(5),
      R => RESET
    );
\ACCEL_Z_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK,
      CE => StC_Adxl_Ctrl(3),
      D => ACCEL_Z_SUM_reg(10),
      Q => ACCEL_Z(6),
      R => RESET
    );
\ACCEL_Z_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK,
      CE => StC_Adxl_Ctrl(3),
      D => ACCEL_Z_SUM_reg(11),
      Q => ACCEL_Z(7),
      R => RESET
    );
\ACCEL_Z_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK,
      CE => StC_Adxl_Ctrl(3),
      D => ACCEL_Z_SUM_reg(12),
      Q => ACCEL_Z(8),
      R => RESET
    );
\ACCEL_Z_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK,
      CE => StC_Adxl_Ctrl(3),
      D => ACCEL_Z_SUM_reg(13),
      Q => ACCEL_Z(9),
      R => RESET
    );
\Cmd_Reg[0][1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Cmd_Reg_Data_Addr_reg_n_0_[0]\,
      O => B(0)
    );
\Cmd_Reg[0][2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \Cmd_Reg_Data_Addr_reg_n_0_[1]\,
      I1 => \Cmd_Reg_Data_Addr_reg_n_0_[0]\,
      O => \Cmd_Reg[0][2]_i_1_n_0\
    );
\Cmd_Reg[0][4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \Cmd_Reg_Data_Addr_reg_n_0_[1]\,
      I1 => \Cmd_Reg_Data_Addr_reg_n_0_[0]\,
      O => \Cmd_Reg[0][4]_i_1_n_0\
    );
\Cmd_Reg[0][6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888888888B88B888"
    )
        port map (
      I0 => Shift_Cmd_Reg,
      I1 => \FSM_sequential_StC_Spi_SendRec[0]_i_2_n_0\,
      I2 => StC_Adxl_Ctrl(1),
      I3 => StC_Adxl_Ctrl(2),
      I4 => StC_Adxl_Ctrl(0),
      I5 => StC_Adxl_Ctrl(3),
      O => \Cmd_Reg[0][6]_i_1_n_0\
    );
\Cmd_Reg[0][6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => StC_Spi_Trans(2),
      I1 => StC_Spi_Trans(1),
      I2 => StC_Spi_Trans(0),
      I3 => StC_Adxl_Ctrl(0),
      I4 => StC_Adxl_Ctrl(3),
      I5 => StC_Adxl_Ctrl(2),
      O => \Cmd_Reg[0]_0\
    );
\Cmd_Reg[0][6]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \Cmd_Reg_Data_Addr_reg_n_0_[0]\,
      I1 => \Cmd_Reg_Data_Addr_reg_n_0_[1]\,
      O => \Cmd_Reg[0][6]_i_3_n_0\
    );
\Cmd_Reg[1][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF02023202"
    )
        port map (
      I0 => \Cmd_Reg_reg[1]\(0),
      I1 => \Cmd_Reg[1][2]_i_2_n_0\,
      I2 => \Cmd_Reg[1][6]_i_2_n_0\,
      I3 => \Cmd_Reg[1][0]_i_2_n_0\,
      I4 => \FSM_sequential_StC_Spi_SendRec[0]_i_2_n_0\,
      I5 => \Cmd_Reg[1]0_in\(2),
      O => \Cmd_Reg[1][0]_i_1_n_0\
    );
\Cmd_Reg[1][0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \Cmd_Reg_Data_Addr_reg_n_0_[0]\,
      I1 => \Cmd_Reg_Data_Addr_reg_n_0_[1]\,
      O => \Cmd_Reg[1][0]_i_2_n_0\
    );
\Cmd_Reg[1][1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8AAABAA"
    )
        port map (
      I0 => \Cmd_Reg_reg[0]\(1),
      I1 => StC_Spi_Trans(2),
      I2 => StC_Spi_Trans(1),
      I3 => StC_Spi_Trans(0),
      I4 => \Cmd_Reg_Data_Addr_reg_n_0_[1]\,
      O => \Cmd_Reg[1][1]_i_1_n_0\
    );
\Cmd_Reg[1][2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FECEFEFE"
    )
        port map (
      I0 => \Cmd_Reg_reg[1]\(2),
      I1 => \Cmd_Reg[1][2]_i_2_n_0\,
      I2 => \Cmd_Reg[1][6]_i_2_n_0\,
      I3 => \Cmd_Reg_reg[0]\(2),
      I4 => \FSM_sequential_StC_Spi_SendRec[0]_i_2_n_0\,
      I5 => \Cmd_Reg[1]0_in\(2),
      O => \Cmd_Reg[1][2]_i_1_n_0\
    );
\Cmd_Reg[1][2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => StC_Adxl_Ctrl(1),
      I1 => StC_Adxl_Ctrl(2),
      I2 => StC_Adxl_Ctrl(0),
      I3 => StC_Adxl_Ctrl(3),
      I4 => \FSM_sequential_StC_Spi_SendRec[0]_i_2_n_0\,
      O => \Cmd_Reg[1][2]_i_2_n_0\
    );
\Cmd_Reg[1][2]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => \FSM_sequential_StC_Spi_SendRec[0]_i_2_n_0\,
      I1 => StC_Adxl_Ctrl(2),
      I2 => StC_Adxl_Ctrl(1),
      I3 => StC_Adxl_Ctrl(3),
      I4 => StC_Adxl_Ctrl(0),
      O => \Cmd_Reg[1]0_in\(2)
    );
\Cmd_Reg[1][3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => StC_Spi_Trans(0),
      I1 => StC_Spi_Trans(1),
      I2 => StC_Spi_Trans(2),
      O => StartSpiSendRec
    );
\Cmd_Reg[1][4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8AAABAA"
    )
        port map (
      I0 => \Cmd_Reg_reg[0]\(4),
      I1 => StC_Spi_Trans(2),
      I2 => StC_Spi_Trans(1),
      I3 => StC_Spi_Trans(0),
      I4 => \Cmd_Reg_Data_Addr_reg_n_0_[1]\,
      O => \Cmd_Reg[1][4]_i_1_n_0\
    );
\Cmd_Reg[1][5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \Cmd_Reg_Data_Addr_reg_n_0_[1]\,
      I1 => StC_Spi_Trans(0),
      I2 => StC_Spi_Trans(1),
      I3 => StC_Spi_Trans(2),
      O => \Cmd_Reg[1][5]_i_1_n_0\
    );
\Cmd_Reg[1][6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001040"
    )
        port map (
      I0 => StC_Adxl_Ctrl(3),
      I1 => StC_Adxl_Ctrl(0),
      I2 => StC_Adxl_Ctrl(2),
      I3 => StC_Adxl_Ctrl(1),
      I4 => \FSM_sequential_StC_Spi_SendRec[0]_i_2_n_0\,
      O => \Cmd_Reg[1]0_in\(7)
    );
\Cmd_Reg[1][6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"888888B8"
    )
        port map (
      I0 => Shift_Cmd_Reg,
      I1 => \FSM_sequential_StC_Spi_SendRec[0]_i_2_n_0\,
      I2 => StC_Adxl_Ctrl(0),
      I3 => StC_Adxl_Ctrl(3),
      I4 => StC_Adxl_Ctrl(2),
      O => \Cmd_Reg[1][6]_i_2_n_0\
    );
\Cmd_Reg[1][6]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD00"
    )
        port map (
      I0 => StC_Spi_Trans(0),
      I1 => StC_Spi_Trans(1),
      I2 => StC_Spi_Trans(2),
      I3 => \Cmd_Reg_reg[0]\(6),
      O => \Cmd_Reg[1][6]_i_3_n_0\
    );
\Cmd_Reg[2][0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA8A8A8A0A8A8A8"
    )
        port map (
      I0 => \Cnt_Bytes_Sent[0]_i_2_n_0\,
      I1 => \Cmd_Reg_reg[2]\(0),
      I2 => \Cmd_Reg[1]0_in\(7),
      I3 => Shift_Cmd_Reg,
      I4 => \FSM_sequential_StC_Spi_SendRec[0]_i_2_n_0\,
      I5 => \Cmd_Reg_reg[1]\(0),
      O => \Cmd_Reg[2][0]_i_1_n_0\
    );
\Cmd_Reg[2][6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001444"
    )
        port map (
      I0 => StC_Adxl_Ctrl(3),
      I1 => StC_Adxl_Ctrl(0),
      I2 => StC_Adxl_Ctrl(2),
      I3 => StC_Adxl_Ctrl(1),
      I4 => \FSM_sequential_StC_Spi_SendRec[0]_i_2_n_0\,
      O => \Cmd_Reg[2]\(7)
    );
\Cmd_Reg[2][6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404040404040004"
    )
        port map (
      I0 => StC_Spi_SendRec(2),
      I1 => StC_Spi_SendRec(0),
      I2 => StC_Spi_SendRec(1),
      I3 => StC_Spi_Trans(0),
      I4 => StC_Spi_Trans(1),
      I5 => StC_Spi_Trans(2),
      O => \Cmd_Reg[2]_1\
    );
\Cmd_Reg_Data_Addr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0606060006060606"
    )
        port map (
      I0 => \Cmd_Reg_Data_Addr_reg_n_0_[0]\,
      I1 => Advance_Cmd_Reg_Addr,
      I2 => RESET,
      I3 => StC_Adxl_Ctrl(2),
      I4 => StC_Adxl_Ctrl(1),
      I5 => \Cmd_Reg_Data_Addr[0]_i_2_n_0\,
      O => \Cmd_Reg_Data_Addr[0]_i_1_n_0\
    );
\Cmd_Reg_Data_Addr[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => StC_Adxl_Ctrl(0),
      I1 => StC_Adxl_Ctrl(3),
      O => \Cmd_Reg_Data_Addr[0]_i_2_n_0\
    );
\Cmd_Reg_Data_Addr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000006A"
    )
        port map (
      I0 => \Cmd_Reg_Data_Addr_reg_n_0_[1]\,
      I1 => Advance_Cmd_Reg_Addr,
      I2 => \Cmd_Reg_Data_Addr_reg_n_0_[0]\,
      I3 => RESET,
      I4 => Reset_Cnt_Bytes,
      O => \Cmd_Reg_Data_Addr[1]_i_1_n_0\
    );
\Cmd_Reg_Data_Addr[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"004C00C0"
    )
        port map (
      I0 => StC_Adxl_Ctrl(2),
      I1 => \FSM_sequential_StC_Adxl_Ctrl[3]_i_5_n_0\,
      I2 => StC_Adxl_Ctrl(0),
      I3 => StC_Adxl_Ctrl(3),
      I4 => StC_Adxl_Ctrl(1),
      O => Advance_Cmd_Reg_Addr
    );
\Cmd_Reg_Data_Addr[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => StC_Adxl_Ctrl(2),
      I1 => StC_Adxl_Ctrl(1),
      I2 => StC_Adxl_Ctrl(3),
      I3 => StC_Adxl_Ctrl(0),
      O => Reset_Cnt_Bytes
    );
\Cmd_Reg_Data_Addr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => '1',
      D => \Cmd_Reg_Data_Addr[0]_i_1_n_0\,
      Q => \Cmd_Reg_Data_Addr_reg_n_0_[0]\,
      R => '0'
    );
\Cmd_Reg_Data_Addr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => '1',
      D => \Cmd_Reg_Data_Addr[1]_i_1_n_0\,
      Q => \Cmd_Reg_Data_Addr_reg_n_0_[1]\,
      R => '0'
    );
\Cmd_Reg_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => \Cmd_Reg[0]_0\,
      D => B(0),
      Q => \Cmd_Reg_reg[0]\(1),
      R => \Cmd_Reg[0][6]_i_1_n_0\
    );
\Cmd_Reg_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => \Cmd_Reg[0]_0\,
      D => \Cmd_Reg[0][2]_i_1_n_0\,
      Q => \Cmd_Reg_reg[0]\(2),
      R => \Cmd_Reg[0][6]_i_1_n_0\
    );
\Cmd_Reg_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => \Cmd_Reg[0]_0\,
      D => \Cmd_Reg[0][4]_i_1_n_0\,
      Q => \Cmd_Reg_reg[0]\(4),
      R => \Cmd_Reg[0][6]_i_1_n_0\
    );
\Cmd_Reg_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => \Cmd_Reg[0]_0\,
      D => \Cmd_Reg[0][6]_i_3_n_0\,
      Q => \Cmd_Reg_reg[0]\(6),
      R => \Cmd_Reg[0][6]_i_1_n_0\
    );
\Cmd_Reg_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => '1',
      D => \Cmd_Reg[1][0]_i_1_n_0\,
      Q => \Cmd_Reg_reg[1]\(0),
      R => '0'
    );
\Cmd_Reg_reg[1][1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => \Cmd_Reg[1][6]_i_2_n_0\,
      D => \Cmd_Reg[1][1]_i_1_n_0\,
      Q => \Cmd_Reg_reg[1]\(1),
      S => \Cmd_Reg[1]0_in\(7)
    );
\Cmd_Reg_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => '1',
      D => \Cmd_Reg[1][2]_i_1_n_0\,
      Q => \Cmd_Reg_reg[1]\(2),
      R => '0'
    );
\Cmd_Reg_reg[1][3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => \Cmd_Reg[1][6]_i_2_n_0\,
      D => StartSpiSendRec,
      Q => \Cmd_Reg_reg[1]\(3),
      S => \Cmd_Reg[1]0_in\(7)
    );
\Cmd_Reg_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => \Cmd_Reg[1][6]_i_2_n_0\,
      D => \Cmd_Reg[1][4]_i_1_n_0\,
      Q => \Cmd_Reg_reg[1]\(4),
      R => \Cmd_Reg[1]0_in\(7)
    );
\Cmd_Reg_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => \Cmd_Reg[1][6]_i_2_n_0\,
      D => \Cmd_Reg[1][5]_i_1_n_0\,
      Q => \Cmd_Reg_reg[1]\(5),
      R => \Cmd_Reg[1]0_in\(7)
    );
\Cmd_Reg_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => \Cmd_Reg[1][6]_i_2_n_0\,
      D => \Cmd_Reg[1][6]_i_3_n_0\,
      Q => \Cmd_Reg_reg[1]\(6),
      R => \Cmd_Reg[1]0_in\(7)
    );
\Cmd_Reg_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => '1',
      D => \Cmd_Reg[2][0]_i_1_n_0\,
      Q => \Cmd_Reg_reg[2]\(0),
      R => '0'
    );
\Cmd_Reg_reg[2][1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => SYSCLK,
      CE => \Cmd_Reg[2]_1\,
      D => \Cmd_Reg_reg[1]\(1),
      Q => \Cmd_Reg_reg[2]\(1),
      S => \Cmd_Reg[2]\(7)
    );
\Cmd_Reg_reg[2][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => \Cmd_Reg[2]_1\,
      D => \Cmd_Reg_reg[1]\(2),
      Q => \Cmd_Reg_reg[2]\(2),
      R => \Cmd_Reg[2]\(7)
    );
\Cmd_Reg_reg[2][3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => SYSCLK,
      CE => \Cmd_Reg[2]_1\,
      D => \Cmd_Reg_reg[1]\(3),
      Q => \Cmd_Reg_reg[2]\(3),
      S => \Cmd_Reg[2]\(7)
    );
\Cmd_Reg_reg[2][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => \Cmd_Reg[2]_1\,
      D => \Cmd_Reg_reg[1]\(4),
      Q => \Cmd_Reg_reg[2]\(4),
      R => \Cmd_Reg[2]\(7)
    );
\Cmd_Reg_reg[2][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => \Cmd_Reg[2]_1\,
      D => \Cmd_Reg_reg[1]\(5),
      Q => \Cmd_Reg_reg[2]\(5),
      R => \Cmd_Reg[2]\(7)
    );
\Cmd_Reg_reg[2][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => \Cmd_Reg[2]_1\,
      D => \Cmd_Reg_reg[1]\(6),
      Q => \Cmd_Reg_reg[2]\(6),
      R => \Cmd_Reg[2]\(7)
    );
\Cnt_Bytes_Rec[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FBFBFB08"
    )
        port map (
      I0 => \Cnt_Bytes_Rec_reg_n_0_[0]\,
      I1 => \FSM_sequential_StC_Spi_SendRec[0]_i_2_n_0\,
      I2 => Shift_Data_Reg,
      I3 => \Cmd_Reg[1][2]_i_2_n_0\,
      I4 => \Cnt_Bytes_Rec[0]_i_2_n_0\,
      I5 => \Cnt_Bytes_Rec[2]_i_2_n_0\,
      O => \Cnt_Bytes_Rec[0]_i_1_n_0\
    );
\Cnt_Bytes_Rec[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5454545454540054"
    )
        port map (
      I0 => \Cnt_Bytes_Rec_reg_n_0_[0]\,
      I1 => \Cnt_Bytes_Rec_reg_n_0_[1]\,
      I2 => \Cnt_Bytes_Rec_reg_n_0_[2]\,
      I3 => StC_Spi_Trans(0),
      I4 => StC_Spi_Trans(1),
      I5 => StC_Spi_Trans(2),
      O => \Cnt_Bytes_Rec[0]_i_2_n_0\
    );
\Cnt_Bytes_Rec[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAA8AAA2AAA8"
    )
        port map (
      I0 => \Cnt_Bytes_Rec[1]_i_2_n_0\,
      I1 => StC_Adxl_Ctrl(2),
      I2 => StC_Adxl_Ctrl(1),
      I3 => StC_Adxl_Ctrl(3),
      I4 => StC_Adxl_Ctrl(0),
      I5 => \FSM_sequential_StC_Spi_SendRec[0]_i_2_n_0\,
      O => \Cnt_Bytes_Rec[1]_i_1_n_0\
    );
\Cnt_Bytes_Rec[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0FFAAAA0C00AAAA"
    )
        port map (
      I0 => \Cnt_Bytes_Rec[1]_i_3_n_0\,
      I1 => \Cnt_Bytes_Rec_reg_n_0_[2]\,
      I2 => \Cnt_Bytes_Rec_reg_n_0_[0]\,
      I3 => Shift_Data_Reg,
      I4 => \FSM_sequential_StC_Spi_SendRec[0]_i_2_n_0\,
      I5 => \Cnt_Bytes_Rec_reg_n_0_[1]\,
      O => \Cnt_Bytes_Rec[1]_i_2_n_0\
    );
\Cnt_Bytes_Rec[1]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
        port map (
      I0 => StC_Adxl_Ctrl(3),
      I1 => StC_Adxl_Ctrl(0),
      I2 => StC_Adxl_Ctrl(2),
      I3 => StC_Adxl_Ctrl(1),
      O => \Cnt_Bytes_Rec[1]_i_3_n_0\
    );
\Cnt_Bytes_Rec[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FB88FB08"
    )
        port map (
      I0 => \Cnt_Bytes_Rec_reg_n_0_[2]\,
      I1 => \FSM_sequential_StC_Spi_SendRec[0]_i_2_n_0\,
      I2 => Shift_Data_Reg,
      I3 => \Cmd_Reg[1][2]_i_2_n_0\,
      I4 => \FSM_sequential_StC_Spi_SendRec[1]_i_3_n_0\,
      I5 => \Cnt_Bytes_Rec[2]_i_2_n_0\,
      O => \Cnt_Bytes_Rec[2]_i_1_n_0\
    );
\Cnt_Bytes_Rec[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040003"
    )
        port map (
      I0 => \FSM_sequential_StC_Spi_SendRec[0]_i_2_n_0\,
      I1 => StC_Adxl_Ctrl(0),
      I2 => StC_Adxl_Ctrl(3),
      I3 => StC_Adxl_Ctrl(1),
      I4 => StC_Adxl_Ctrl(2),
      O => \Cnt_Bytes_Rec[2]_i_2_n_0\
    );
\Cnt_Bytes_Rec_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => '1',
      D => \Cnt_Bytes_Rec[0]_i_1_n_0\,
      Q => \Cnt_Bytes_Rec_reg_n_0_[0]\,
      R => '0'
    );
\Cnt_Bytes_Rec_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => '1',
      D => \Cnt_Bytes_Rec[1]_i_1_n_0\,
      Q => \Cnt_Bytes_Rec_reg_n_0_[1]\,
      R => '0'
    );
\Cnt_Bytes_Rec_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => '1',
      D => \Cnt_Bytes_Rec[2]_i_1_n_0\,
      Q => \Cnt_Bytes_Rec_reg_n_0_[2]\,
      R => '0'
    );
\Cnt_Bytes_Sent[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000048FB08FB"
    )
        port map (
      I0 => \Cnt_Bytes_Sent_reg_n_0_[0]\,
      I1 => \FSM_sequential_StC_Spi_SendRec[0]_i_2_n_0\,
      I2 => Shift_Cmd_Reg,
      I3 => \Cnt_Bytes_Sent[0]_i_2_n_0\,
      I4 => \Cnt_Bytes_Sent_reg_n_0_[1]\,
      I5 => Reset_Cnt_Bytes,
      O => \Cnt_Bytes_Sent[0]_i_1_n_0\
    );
\Cnt_Bytes_Sent[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFFF"
    )
        port map (
      I0 => StC_Adxl_Ctrl(2),
      I1 => StC_Adxl_Ctrl(3),
      I2 => StC_Adxl_Ctrl(0),
      I3 => StC_Spi_Trans(0),
      I4 => StC_Spi_Trans(1),
      I5 => StC_Spi_Trans(2),
      O => \Cnt_Bytes_Sent[0]_i_2_n_0\
    );
\Cnt_Bytes_Sent[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FB88FB08"
    )
        port map (
      I0 => \Cnt_Bytes_Sent_reg_n_0_[1]\,
      I1 => \FSM_sequential_StC_Spi_SendRec[0]_i_2_n_0\,
      I2 => Shift_Cmd_Reg,
      I3 => \Cmd_Reg[2]\(7),
      I4 => \Cnt_Bytes_Sent_reg_n_0_[0]\,
      I5 => Reset_Cnt_Bytes,
      O => \Cnt_Bytes_Sent[1]_i_1_n_0\
    );
\Cnt_Bytes_Sent_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => '1',
      D => \Cnt_Bytes_Sent[0]_i_1_n_0\,
      Q => \Cnt_Bytes_Sent_reg_n_0_[0]\,
      R => '0'
    );
\Cnt_Bytes_Sent_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => '1',
      D => \Cnt_Bytes_Sent[1]_i_1_n_0\,
      Q => \Cnt_Bytes_Sent_reg_n_0_[1]\,
      R => '0'
    );
\Cnt_Num_Reads[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80FF"
    )
        port map (
      I0 => Cnt_Num_Reads(2),
      I1 => Cnt_Num_Reads(3),
      I2 => Cnt_Num_Reads(1),
      I3 => Cnt_Num_Reads(0),
      O => \Cnt_Num_Reads[0]_i_1_n_0\
    );
\Cnt_Num_Reads[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D5AA"
    )
        port map (
      I0 => Cnt_Num_Reads(0),
      I1 => Cnt_Num_Reads(2),
      I2 => Cnt_Num_Reads(3),
      I3 => Cnt_Num_Reads(1),
      O => \Cnt_Num_Reads[1]_i_1_n_0\
    );
\Cnt_Num_Reads[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA6A"
    )
        port map (
      I0 => Cnt_Num_Reads(2),
      I1 => Cnt_Num_Reads(0),
      I2 => Cnt_Num_Reads(1),
      I3 => Cnt_Num_Reads(3),
      O => \Cnt_Num_Reads[2]_i_1_n_0\
    );
\Cnt_Num_Reads[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => StC_Adxl_Ctrl(3),
      I1 => StC_Adxl_Ctrl(0),
      I2 => StC_Adxl_Ctrl(1),
      O => Reset_Cnt_Num_Reads
    );
\Cnt_Num_Reads[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => StC_Adxl_Ctrl(0),
      I1 => StC_Adxl_Ctrl(3),
      I2 => StC_Adxl_Ctrl(2),
      I3 => StC_Adxl_Ctrl(1),
      O => sel
    );
\Cnt_Num_Reads[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => Cnt_Num_Reads(0),
      I1 => Cnt_Num_Reads(1),
      I2 => Cnt_Num_Reads(2),
      I3 => Cnt_Num_Reads(3),
      O => \Cnt_Num_Reads[3]_i_3_n_0\
    );
\Cnt_Num_Reads_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \Cnt_Num_Reads[0]_i_1_n_0\,
      Q => Cnt_Num_Reads(0),
      R => Reset_Cnt_Num_Reads
    );
\Cnt_Num_Reads_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \Cnt_Num_Reads[1]_i_1_n_0\,
      Q => Cnt_Num_Reads(1),
      R => Reset_Cnt_Num_Reads
    );
\Cnt_Num_Reads_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \Cnt_Num_Reads[2]_i_1_n_0\,
      Q => Cnt_Num_Reads(2),
      R => Reset_Cnt_Num_Reads
    );
\Cnt_Num_Reads_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => sel,
      D => \Cnt_Num_Reads[3]_i_3_n_0\,
      Q => Cnt_Num_Reads(3),
      R => Reset_Cnt_Num_Reads
    );
\Cnt_SS_Inactive[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFFD"
    )
        port map (
      I0 => Cnt_SS_Inactive(6),
      I1 => Cnt_SS_Inactive(5),
      I2 => Cnt_SS_Inactive(8),
      I3 => Cnt_SS_Inactive(7),
      I4 => \Cnt_SS_Inactive[0]_i_2_n_0\,
      I5 => Cnt_SS_Inactive(0),
      O => Cnt_SS_Inactive_2(0)
    );
\Cnt_SS_Inactive[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF7FFFFFF"
    )
        port map (
      I0 => Cnt_SS_Inactive(1),
      I1 => Cnt_SS_Inactive(2),
      I2 => Cnt_SS_Inactive(9),
      I3 => Cnt_SS_Inactive(10),
      I4 => Cnt_SS_Inactive(4),
      I5 => Cnt_SS_Inactive(3),
      O => \Cnt_SS_Inactive[0]_i_2_n_0\
    );
\Cnt_SS_Inactive[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF04"
    )
        port map (
      I0 => StC_Spi_Trans(0),
      I1 => StC_Spi_Trans(1),
      I2 => StC_Spi_Trans(2),
      I3 => RESET,
      O => Cnt_SS_Inactive0
    );
\Cnt_SS_Inactive[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC6CCCCCCCCCCCCC"
    )
        port map (
      I0 => Cnt_SS_Inactive(9),
      I1 => Cnt_SS_Inactive(10),
      I2 => Cnt_SS_Inactive(7),
      I3 => \Cnt_SS_Inactive[10]_i_3_n_0\,
      I4 => Cnt_SS_Inactive(6),
      I5 => Cnt_SS_Inactive(8),
      O => Cnt_SS_Inactive_2(10)
    );
\Cnt_SS_Inactive[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => Cnt_SS_Inactive(4),
      I1 => Cnt_SS_Inactive(0),
      I2 => Cnt_SS_Inactive(1),
      I3 => Cnt_SS_Inactive(2),
      I4 => Cnt_SS_Inactive(3),
      I5 => Cnt_SS_Inactive(5),
      O => \Cnt_SS_Inactive[10]_i_3_n_0\
    );
\Cnt_SS_Inactive[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6666666666666F66"
    )
        port map (
      I0 => Cnt_SS_Inactive(1),
      I1 => Cnt_SS_Inactive(0),
      I2 => \Cnt_SS_Inactive[1]_i_2_n_0\,
      I3 => Cnt_SS_Inactive(6),
      I4 => Cnt_SS_Inactive(3),
      I5 => Cnt_SS_Inactive(9),
      O => Cnt_SS_Inactive_2(1)
    );
\Cnt_SS_Inactive[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFFFFFF"
    )
        port map (
      I0 => Cnt_SS_Inactive(0),
      I1 => Cnt_SS_Inactive(5),
      I2 => \Cnt_SS_Inactive[1]_i_3_n_0\,
      I3 => \Cnt_SS_Inactive[6]_i_2_n_0\,
      I4 => Cnt_SS_Inactive(10),
      I5 => Cnt_SS_Inactive(4),
      O => \Cnt_SS_Inactive[1]_i_2_n_0\
    );
\Cnt_SS_Inactive[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Cnt_SS_Inactive(7),
      I1 => Cnt_SS_Inactive(8),
      O => \Cnt_SS_Inactive[1]_i_3_n_0\
    );
\Cnt_SS_Inactive[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => Cnt_SS_Inactive(1),
      I1 => Cnt_SS_Inactive(0),
      I2 => Cnt_SS_Inactive(2),
      O => Cnt_SS_Inactive_2(2)
    );
\Cnt_SS_Inactive[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => Cnt_SS_Inactive(0),
      I1 => Cnt_SS_Inactive(1),
      I2 => Cnt_SS_Inactive(2),
      I3 => Cnt_SS_Inactive(3),
      O => Cnt_SS_Inactive_2(3)
    );
\Cnt_SS_Inactive[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => Cnt_SS_Inactive(3),
      I1 => Cnt_SS_Inactive(2),
      I2 => Cnt_SS_Inactive(1),
      I3 => Cnt_SS_Inactive(0),
      I4 => Cnt_SS_Inactive(4),
      O => Cnt_SS_Inactive_2(4)
    );
\Cnt_SS_Inactive[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => Cnt_SS_Inactive(4),
      I1 => Cnt_SS_Inactive(0),
      I2 => Cnt_SS_Inactive(1),
      I3 => Cnt_SS_Inactive(2),
      I4 => Cnt_SS_Inactive(3),
      I5 => Cnt_SS_Inactive(5),
      O => Cnt_SS_Inactive_2(5)
    );
\Cnt_SS_Inactive[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF08000000"
    )
        port map (
      I0 => Cnt_SS_Inactive(5),
      I1 => Cnt_SS_Inactive(3),
      I2 => \Cnt_SS_Inactive[6]_i_2_n_0\,
      I3 => Cnt_SS_Inactive(0),
      I4 => Cnt_SS_Inactive(4),
      I5 => Cnt_SS_Inactive(6),
      O => Cnt_SS_Inactive_2(6)
    );
\Cnt_SS_Inactive[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => Cnt_SS_Inactive(1),
      I1 => Cnt_SS_Inactive(2),
      O => \Cnt_SS_Inactive[6]_i_2_n_0\
    );
\Cnt_SS_Inactive[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => Cnt_SS_Inactive(6),
      I1 => \Cnt_SS_Inactive[10]_i_3_n_0\,
      I2 => Cnt_SS_Inactive(7),
      O => Cnt_SS_Inactive_2(7)
    );
\Cnt_SS_Inactive[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => Cnt_SS_Inactive(7),
      I1 => \Cnt_SS_Inactive[10]_i_3_n_0\,
      I2 => Cnt_SS_Inactive(6),
      I3 => Cnt_SS_Inactive(8),
      O => Cnt_SS_Inactive_2(8)
    );
\Cnt_SS_Inactive[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => Cnt_SS_Inactive(8),
      I1 => Cnt_SS_Inactive(6),
      I2 => \Cnt_SS_Inactive[10]_i_3_n_0\,
      I3 => Cnt_SS_Inactive(7),
      I4 => Cnt_SS_Inactive(9),
      O => Cnt_SS_Inactive_2(9)
    );
\Cnt_SS_Inactive_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => '1',
      D => Cnt_SS_Inactive_2(0),
      Q => Cnt_SS_Inactive(0),
      R => Cnt_SS_Inactive0
    );
\Cnt_SS_Inactive_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => '1',
      D => Cnt_SS_Inactive_2(10),
      Q => Cnt_SS_Inactive(10),
      R => Cnt_SS_Inactive0
    );
\Cnt_SS_Inactive_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => '1',
      D => Cnt_SS_Inactive_2(1),
      Q => Cnt_SS_Inactive(1),
      R => Cnt_SS_Inactive0
    );
\Cnt_SS_Inactive_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => '1',
      D => Cnt_SS_Inactive_2(2),
      Q => Cnt_SS_Inactive(2),
      R => Cnt_SS_Inactive0
    );
\Cnt_SS_Inactive_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => '1',
      D => Cnt_SS_Inactive_2(3),
      Q => Cnt_SS_Inactive(3),
      R => Cnt_SS_Inactive0
    );
\Cnt_SS_Inactive_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => '1',
      D => Cnt_SS_Inactive_2(4),
      Q => Cnt_SS_Inactive(4),
      R => Cnt_SS_Inactive0
    );
\Cnt_SS_Inactive_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => '1',
      D => Cnt_SS_Inactive_2(5),
      Q => Cnt_SS_Inactive(5),
      R => Cnt_SS_Inactive0
    );
\Cnt_SS_Inactive_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => '1',
      D => Cnt_SS_Inactive_2(6),
      Q => Cnt_SS_Inactive(6),
      R => Cnt_SS_Inactive0
    );
\Cnt_SS_Inactive_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => '1',
      D => Cnt_SS_Inactive_2(7),
      Q => Cnt_SS_Inactive(7),
      R => Cnt_SS_Inactive0
    );
\Cnt_SS_Inactive_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => '1',
      D => Cnt_SS_Inactive_2(8),
      Q => Cnt_SS_Inactive(8),
      R => Cnt_SS_Inactive0
    );
\Cnt_SS_Inactive_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => '1',
      D => Cnt_SS_Inactive_2(9),
      Q => Cnt_SS_Inactive(9),
      R => Cnt_SS_Inactive0
    );
\D_Send[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => StC_Spi_SendRec(1),
      I1 => StC_Spi_SendRec(0),
      I2 => StC_Spi_SendRec(2),
      O => Shift_Cmd_Reg
    );
\D_Send_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Cmd_Reg,
      D => \Cmd_Reg_reg[2]\(0),
      Q => D_Send(0),
      R => RESET
    );
\D_Send_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Cmd_Reg,
      D => \Cmd_Reg_reg[2]\(1),
      Q => D_Send(1),
      R => RESET
    );
\D_Send_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Cmd_Reg,
      D => \Cmd_Reg_reg[2]\(2),
      Q => D_Send(2),
      R => RESET
    );
\D_Send_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Cmd_Reg,
      D => \Cmd_Reg_reg[2]\(3),
      Q => D_Send(3),
      R => RESET
    );
\D_Send_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Cmd_Reg,
      D => \Cmd_Reg_reg[2]\(4),
      Q => D_Send(4),
      R => RESET
    );
\D_Send_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Cmd_Reg,
      D => \Cmd_Reg_reg[2]\(5),
      Q => D_Send(5),
      R => RESET
    );
\D_Send_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Cmd_Reg,
      D => \Cmd_Reg_reg[2]\(6),
      Q => D_Send(6),
      R => RESET
    );
Data_Ready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => StC_Adxl_Ctrl(3),
      I1 => RESET,
      O => Data_Ready_i_1_n_0
    );
Data_Ready_reg: unisim.vcomponents.FDRE
     port map (
      C => SYSCLK,
      CE => '1',
      D => Data_Ready_i_1_n_0,
      Q => Data_Ready,
      R => '0'
    );
\Data_Reg_reg[0][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => Dout(0),
      Q => Adxl_Data_Ready,
      R => '0'
    );
\Data_Reg_reg[0][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => Dout(1),
      Q => \Data_Reg_reg_n_0_[0][1]\,
      R => '0'
    );
\Data_Reg_reg[0][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => Dout(2),
      Q => \Data_Reg_reg_n_0_[0][2]\,
      R => '0'
    );
\Data_Reg_reg[0][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => Dout(3),
      Q => \Data_Reg_reg_n_0_[0][3]\,
      R => '0'
    );
\Data_Reg_reg[0][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => Dout(4),
      Q => \Data_Reg_reg_n_0_[0][4]\,
      R => '0'
    );
\Data_Reg_reg[0][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => Dout(5),
      Q => \Data_Reg_reg_n_0_[0][5]\,
      R => '0'
    );
\Data_Reg_reg[0][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => Dout(6),
      Q => \Data_Reg_reg_n_0_[0][6]\,
      R => '0'
    );
\Data_Reg_reg[0][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => Dout(7),
      Q => Adxl_Conf_Err,
      R => '0'
    );
\Data_Reg_reg[1][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => Adxl_Data_Ready,
      Q => \Data_Reg_reg[1]\(0),
      R => '0'
    );
\Data_Reg_reg[1][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => \Data_Reg_reg_n_0_[0][1]\,
      Q => \Data_Reg_reg[1]\(1),
      R => '0'
    );
\Data_Reg_reg[1][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => \Data_Reg_reg_n_0_[0][2]\,
      Q => \Data_Reg_reg[1]\(2),
      R => '0'
    );
\Data_Reg_reg[1][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => \Data_Reg_reg_n_0_[0][3]\,
      Q => \Data_Reg_reg[1]\(3),
      R => '0'
    );
\Data_Reg_reg[1][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => \Data_Reg_reg_n_0_[0][4]\,
      Q => \Data_Reg_reg[1]\(4),
      R => '0'
    );
\Data_Reg_reg[1][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => \Data_Reg_reg_n_0_[0][5]\,
      Q => \Data_Reg_reg[1]\(5),
      R => '0'
    );
\Data_Reg_reg[1][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => \Data_Reg_reg_n_0_[0][6]\,
      Q => \Data_Reg_reg[1]\(6),
      R => '0'
    );
\Data_Reg_reg[1][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => Adxl_Conf_Err,
      Q => \Data_Reg_reg[1]\(7),
      R => '0'
    );
\Data_Reg_reg[2][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => \Data_Reg_reg[1]\(0),
      Q => \Data_Reg_reg[2]\(0),
      R => '0'
    );
\Data_Reg_reg[2][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => \Data_Reg_reg[1]\(1),
      Q => \Data_Reg_reg[2]\(1),
      R => '0'
    );
\Data_Reg_reg[2][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => \Data_Reg_reg[1]\(2),
      Q => \Data_Reg_reg[2]\(2),
      R => '0'
    );
\Data_Reg_reg[2][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => \Data_Reg_reg[1]\(3),
      Q => \Data_Reg_reg[2]\(3),
      R => '0'
    );
\Data_Reg_reg[2][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => \Data_Reg_reg[1]\(4),
      Q => \Data_Reg_reg[2]\(4),
      R => '0'
    );
\Data_Reg_reg[2][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => \Data_Reg_reg[1]\(5),
      Q => \Data_Reg_reg[2]\(5),
      R => '0'
    );
\Data_Reg_reg[2][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => \Data_Reg_reg[1]\(6),
      Q => \Data_Reg_reg[2]\(6),
      R => '0'
    );
\Data_Reg_reg[2][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => \Data_Reg_reg[1]\(7),
      Q => \Data_Reg_reg[2]\(7),
      R => '0'
    );
\Data_Reg_reg[3][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => \Data_Reg_reg[2]\(0),
      Q => \Data_Reg_reg[3]\(0),
      R => '0'
    );
\Data_Reg_reg[3][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => \Data_Reg_reg[2]\(1),
      Q => \Data_Reg_reg[3]\(1),
      R => '0'
    );
\Data_Reg_reg[3][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => \Data_Reg_reg[2]\(2),
      Q => \Data_Reg_reg[3]\(2),
      R => '0'
    );
\Data_Reg_reg[3][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => \Data_Reg_reg[2]\(3),
      Q => \Data_Reg_reg[3]\(3),
      R => '0'
    );
\Data_Reg_reg[3][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => \Data_Reg_reg[2]\(4),
      Q => \Data_Reg_reg[3]\(4),
      R => '0'
    );
\Data_Reg_reg[3][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => \Data_Reg_reg[2]\(5),
      Q => \Data_Reg_reg[3]\(5),
      R => '0'
    );
\Data_Reg_reg[3][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => \Data_Reg_reg[2]\(6),
      Q => \Data_Reg_reg[3]\(6),
      R => '0'
    );
\Data_Reg_reg[3][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => \Data_Reg_reg[2]\(7),
      Q => \Data_Reg_reg[3]\(7),
      R => '0'
    );
\Data_Reg_reg[4][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => \Data_Reg_reg[3]\(0),
      Q => \Data_Reg_reg[4]\(0),
      R => '0'
    );
\Data_Reg_reg[4][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => \Data_Reg_reg[3]\(1),
      Q => \Data_Reg_reg[4]\(1),
      R => '0'
    );
\Data_Reg_reg[4][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => \Data_Reg_reg[3]\(2),
      Q => \Data_Reg_reg[4]\(2),
      R => '0'
    );
\Data_Reg_reg[4][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => \Data_Reg_reg[3]\(3),
      Q => \Data_Reg_reg[4]\(3),
      R => '0'
    );
\Data_Reg_reg[4][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => \Data_Reg_reg[3]\(4),
      Q => \Data_Reg_reg[4]\(4),
      R => '0'
    );
\Data_Reg_reg[4][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => \Data_Reg_reg[3]\(5),
      Q => \Data_Reg_reg[4]\(5),
      R => '0'
    );
\Data_Reg_reg[4][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => \Data_Reg_reg[3]\(6),
      Q => \Data_Reg_reg[4]\(6),
      R => '0'
    );
\Data_Reg_reg[4][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => \Data_Reg_reg[3]\(7),
      Q => \Data_Reg_reg[4]\(7),
      R => '0'
    );
\Data_Reg_reg[5][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => \Data_Reg_reg[4]\(0),
      Q => \Data_Reg_reg[5]\(0),
      R => '0'
    );
\Data_Reg_reg[5][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => \Data_Reg_reg[4]\(1),
      Q => \Data_Reg_reg[5]\(1),
      R => '0'
    );
\Data_Reg_reg[5][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => \Data_Reg_reg[4]\(2),
      Q => \Data_Reg_reg[5]\(2),
      R => '0'
    );
\Data_Reg_reg[5][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => \Data_Reg_reg[4]\(3),
      Q => \Data_Reg_reg[5]\(3),
      R => '0'
    );
\Data_Reg_reg[5][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => \Data_Reg_reg[4]\(4),
      Q => \Data_Reg_reg[5]\(4),
      R => '0'
    );
\Data_Reg_reg[5][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => \Data_Reg_reg[4]\(5),
      Q => \Data_Reg_reg[5]\(5),
      R => '0'
    );
\Data_Reg_reg[5][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => \Data_Reg_reg[4]\(6),
      Q => \Data_Reg_reg[5]\(6),
      R => '0'
    );
\Data_Reg_reg[5][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => \Data_Reg_reg[4]\(7),
      Q => \Data_Reg_reg[5]\(7),
      R => '0'
    );
\Data_Reg_reg[6][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => \Data_Reg_reg[5]\(0),
      Q => \in\(8),
      R => '0'
    );
\Data_Reg_reg[6][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => \Data_Reg_reg[5]\(1),
      Q => \in\(9),
      R => '0'
    );
\Data_Reg_reg[6][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => \Data_Reg_reg[5]\(2),
      Q => \in\(10),
      R => '0'
    );
\Data_Reg_reg[6][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => \Data_Reg_reg[5]\(3),
      Q => \in\(11),
      R => '0'
    );
\Data_Reg_reg[6][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => \Data_Reg_reg[5]\(4),
      Q => \in\(12),
      R => '0'
    );
\Data_Reg_reg[6][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => \Data_Reg_reg[5]\(5),
      Q => \in\(13),
      R => '0'
    );
\Data_Reg_reg[6][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => \Data_Reg_reg[5]\(6),
      Q => \in\(14),
      R => '0'
    );
\Data_Reg_reg[6][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => \Data_Reg_reg[5]\(7),
      Q => \in\(15),
      R => '0'
    );
\Data_Reg_reg[7][0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => \in\(8),
      Q => \in\(0),
      R => '0'
    );
\Data_Reg_reg[7][1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => \in\(9),
      Q => \in\(1),
      R => '0'
    );
\Data_Reg_reg[7][2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => \in\(10),
      Q => \in\(2),
      R => '0'
    );
\Data_Reg_reg[7][3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => \in\(11),
      Q => \in\(3),
      R => '0'
    );
\Data_Reg_reg[7][4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => \in\(12),
      Q => \in\(4),
      R => '0'
    );
\Data_Reg_reg[7][5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => \in\(13),
      Q => \in\(5),
      R => '0'
    );
\Data_Reg_reg[7][6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => \in\(14),
      Q => \in\(6),
      R => '0'
    );
\Data_Reg_reg[7][7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => Shift_Data_Reg,
      D => \in\(15),
      Q => \in\(7),
      R => '0'
    );
\FSM_sequential_StC_Adxl_Ctrl[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000F70000FFFF"
    )
        port map (
      I0 => Cnt_Num_Reads(3),
      I1 => Cnt_Num_Reads(2),
      I2 => \FSM_sequential_StC_Adxl_Ctrl[0]_i_2_n_0\,
      I3 => \FSM_sequential_StC_Adxl_Ctrl[3]_i_4_n_0\,
      I4 => StC_Adxl_Ctrl(3),
      I5 => StC_Adxl_Ctrl(0),
      O => \StN_Adxl_Ctrl__0\(0)
    );
\FSM_sequential_StC_Adxl_Ctrl[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => Cnt_Num_Reads(0),
      I1 => Cnt_Num_Reads(1),
      O => \FSM_sequential_StC_Adxl_Ctrl[0]_i_2_n_0\
    );
\FSM_sequential_StC_Adxl_Ctrl[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000007F0"
    )
        port map (
      I0 => Adxl_Conf_Err,
      I1 => StC_Adxl_Ctrl(2),
      I2 => StC_Adxl_Ctrl(1),
      I3 => StC_Adxl_Ctrl(0),
      I4 => StC_Adxl_Ctrl(3),
      O => \StN_Adxl_Ctrl__0\(1)
    );
\FSM_sequential_StC_Adxl_Ctrl[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A1C0E1C021C061C"
    )
        port map (
      I0 => StC_Adxl_Ctrl(1),
      I1 => StC_Adxl_Ctrl(2),
      I2 => StC_Adxl_Ctrl(3),
      I3 => StC_Adxl_Ctrl(0),
      I4 => Adxl_Conf_Err,
      I5 => \FSM_sequential_StC_Adxl_Ctrl[2]_i_2_n_0\,
      O => \StN_Adxl_Ctrl__0\(2)
    );
\FSM_sequential_StC_Adxl_Ctrl[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => Cnt_Num_Reads(3),
      I1 => Cnt_Num_Reads(2),
      I2 => Cnt_Num_Reads(1),
      I3 => Cnt_Num_Reads(0),
      O => \FSM_sequential_StC_Adxl_Ctrl[2]_i_2_n_0\
    );
\FSM_sequential_StC_Adxl_Ctrl[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAFAAAEABAFABAE"
    )
        port map (
      I0 => \FSM_sequential_StC_Adxl_Ctrl[3]_i_3_n_0\,
      I1 => StC_Adxl_Ctrl(0),
      I2 => StC_Adxl_Ctrl(3),
      I3 => \FSM_sequential_StC_Adxl_Ctrl[3]_i_4_n_0\,
      I4 => \FSM_sequential_StC_Adxl_Ctrl[3]_i_5_n_0\,
      I5 => \FSM_sequential_StC_Adxl_Ctrl[3]_i_6_n_0\,
      O => \FSM_sequential_StC_Adxl_Ctrl[3]_i_1_n_0\
    );
\FSM_sequential_StC_Adxl_Ctrl[3]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => Sample_Rate_Div(4),
      I1 => Sample_Rate_Div(3),
      I2 => Sample_Rate_Div(6),
      I3 => Sample_Rate_Div(5),
      O => \FSM_sequential_StC_Adxl_Ctrl[3]_i_10_n_0\
    );
\FSM_sequential_StC_Adxl_Ctrl[3]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => Sample_Rate_Div(0),
      I1 => Sample_Rate_Div(15),
      I2 => Sample_Rate_Div(16),
      I3 => Sample_Rate_Div(2),
      I4 => Sample_Rate_Div(1),
      O => \FSM_sequential_StC_Adxl_Ctrl[3]_i_11_n_0\
    );
\FSM_sequential_StC_Adxl_Ctrl[3]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => Sample_Rate_Div(12),
      I1 => Sample_Rate_Div(11),
      I2 => Sample_Rate_Div(13),
      I3 => Sample_Rate_Div(14),
      O => \FSM_sequential_StC_Adxl_Ctrl[3]_i_12_n_0\
    );
\FSM_sequential_StC_Adxl_Ctrl[3]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => Sample_Rate_Div(8),
      I1 => Sample_Rate_Div(7),
      I2 => Sample_Rate_Div(10),
      I3 => Sample_Rate_Div(9),
      O => \FSM_sequential_StC_Adxl_Ctrl[3]_i_13_n_0\
    );
\FSM_sequential_StC_Adxl_Ctrl[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => sel,
      I1 => Cnt_Num_Reads(0),
      I2 => Cnt_Num_Reads(1),
      I3 => Cnt_Num_Reads(2),
      I4 => Cnt_Num_Reads(3),
      O => \StN_Adxl_Ctrl__0\(3)
    );
\FSM_sequential_StC_Adxl_Ctrl[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEAEAFAEAFAEAFA"
    )
        port map (
      I0 => \FSM_sequential_StC_Adxl_Ctrl[3]_i_7_n_0\,
      I1 => \FSM_sequential_StC_Adxl_Ctrl[3]_i_8_n_0\,
      I2 => \FSM_sequential_StC_Adxl_Ctrl[3]_i_5_n_0\,
      I3 => \FSM_sequential_StC_Adxl_Ctrl[3]_i_9_n_0\,
      I4 => \Cmd_Reg[1][0]_i_2_n_0\,
      I5 => StC_Adxl_Ctrl(1),
      O => \FSM_sequential_StC_Adxl_Ctrl[3]_i_3_n_0\
    );
\FSM_sequential_StC_Adxl_Ctrl[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => StC_Adxl_Ctrl(1),
      I1 => StC_Adxl_Ctrl(2),
      O => \FSM_sequential_StC_Adxl_Ctrl[3]_i_4_n_0\
    );
\FSM_sequential_StC_Adxl_Ctrl[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => StC_Spi_Trans(1),
      I1 => StC_Spi_Trans(0),
      I2 => StC_Spi_Trans(2),
      O => \FSM_sequential_StC_Adxl_Ctrl[3]_i_5_n_0\
    );
\FSM_sequential_StC_Adxl_Ctrl[3]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \FSM_sequential_StC_Adxl_Ctrl[3]_i_10_n_0\,
      I1 => \FSM_sequential_StC_Adxl_Ctrl[3]_i_11_n_0\,
      I2 => \FSM_sequential_StC_Adxl_Ctrl[3]_i_12_n_0\,
      I3 => \FSM_sequential_StC_Adxl_Ctrl[3]_i_13_n_0\,
      O => \FSM_sequential_StC_Adxl_Ctrl[3]_i_6_n_0\
    );
\FSM_sequential_StC_Adxl_Ctrl[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => StC_Adxl_Ctrl(0),
      I1 => StC_Adxl_Ctrl(3),
      I2 => StC_Adxl_Ctrl(2),
      I3 => StC_Adxl_Ctrl(1),
      O => \FSM_sequential_StC_Adxl_Ctrl[3]_i_7_n_0\
    );
\FSM_sequential_StC_Adxl_Ctrl[3]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40404000"
    )
        port map (
      I0 => StC_Adxl_Ctrl(3),
      I1 => StC_Adxl_Ctrl(0),
      I2 => StC_Adxl_Ctrl(2),
      I3 => Adxl_Conf_Err,
      I4 => Adxl_Data_Ready,
      O => \FSM_sequential_StC_Adxl_Ctrl[3]_i_8_n_0\
    );
\FSM_sequential_StC_Adxl_Ctrl[3]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
        port map (
      I0 => StC_Adxl_Ctrl(0),
      I1 => StC_Adxl_Ctrl(3),
      I2 => StC_Adxl_Ctrl(2),
      O => \FSM_sequential_StC_Adxl_Ctrl[3]_i_9_n_0\
    );
\FSM_sequential_StC_Adxl_Ctrl_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => \FSM_sequential_StC_Adxl_Ctrl[3]_i_1_n_0\,
      D => \StN_Adxl_Ctrl__0\(0),
      Q => StC_Adxl_Ctrl(0),
      R => RESET
    );
\FSM_sequential_StC_Adxl_Ctrl_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => \FSM_sequential_StC_Adxl_Ctrl[3]_i_1_n_0\,
      D => \StN_Adxl_Ctrl__0\(1),
      Q => StC_Adxl_Ctrl(1),
      R => RESET
    );
\FSM_sequential_StC_Adxl_Ctrl_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => \FSM_sequential_StC_Adxl_Ctrl[3]_i_1_n_0\,
      D => \StN_Adxl_Ctrl__0\(2),
      Q => StC_Adxl_Ctrl(2),
      R => RESET
    );
\FSM_sequential_StC_Adxl_Ctrl_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => \FSM_sequential_StC_Adxl_Ctrl[3]_i_1_n_0\,
      D => \StN_Adxl_Ctrl__0\(3),
      Q => StC_Adxl_Ctrl(3),
      R => RESET
    );
\FSM_sequential_StC_Spi_SendRec[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => StC_Spi_Trans(2),
      I1 => StC_Spi_Trans(1),
      I2 => StC_Spi_Trans(0),
      O => \FSM_sequential_StC_Spi_SendRec[0]_i_2_n_0\
    );
\FSM_sequential_StC_Spi_SendRec[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \Cnt_Bytes_Rec_reg_n_0_[0]\,
      I1 => \Cnt_Bytes_Rec_reg_n_0_[1]\,
      O => \FSM_sequential_StC_Spi_SendRec[1]_i_3_n_0\
    );
\FSM_sequential_StC_Spi_SendRec_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => '1',
      D => SPI_Interface_n_1,
      Q => StC_Spi_SendRec(0),
      R => RESET
    );
\FSM_sequential_StC_Spi_SendRec_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => '1',
      D => SPI_Interface_n_0,
      Q => StC_Spi_SendRec(1),
      R => RESET
    );
\FSM_sequential_StC_Spi_SendRec_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => '1',
      D => SPI_Interface_n_2,
      Q => StC_Spi_SendRec(2),
      R => RESET
    );
\FSM_sequential_StC_Spi_Trans[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"34"
    )
        port map (
      I0 => StC_Spi_Trans(2),
      I1 => \FSM_sequential_StC_Spi_Trans[2]_i_2_n_0\,
      I2 => StC_Spi_Trans(0),
      O => \FSM_sequential_StC_Spi_Trans[0]_i_1_n_0\
    );
\FSM_sequential_StC_Spi_Trans[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1F20"
    )
        port map (
      I0 => StC_Spi_Trans(0),
      I1 => StC_Spi_Trans(2),
      I2 => \FSM_sequential_StC_Spi_Trans[2]_i_2_n_0\,
      I3 => StC_Spi_Trans(1),
      O => \FSM_sequential_StC_Spi_Trans[1]_i_1_n_0\
    );
\FSM_sequential_StC_Spi_Trans[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0F80"
    )
        port map (
      I0 => StC_Spi_Trans(1),
      I1 => StC_Spi_Trans(0),
      I2 => \FSM_sequential_StC_Spi_Trans[2]_i_2_n_0\,
      I3 => StC_Spi_Trans(2),
      O => \FSM_sequential_StC_Spi_Trans[2]_i_1_n_0\
    );
\FSM_sequential_StC_Spi_Trans[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAAAE"
    )
        port map (
      I0 => \FSM_sequential_StC_Spi_Trans[2]_i_3_n_0\,
      I1 => \FSM_sequential_StC_Spi_Trans[2]_i_4_n_0\,
      I2 => \FSM_sequential_StC_Spi_Trans[2]_i_5_n_0\,
      I3 => \Cnt_SS_Inactive[0]_i_2_n_0\,
      I4 => \FSM_sequential_StC_Spi_Trans[2]_i_6_n_0\,
      O => \FSM_sequential_StC_Spi_Trans[2]_i_2_n_0\
    );
\FSM_sequential_StC_Spi_Trans[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004000FFFF00"
    )
        port map (
      I0 => StC_Spi_SendRec(0),
      I1 => StC_Spi_SendRec(2),
      I2 => StC_Spi_SendRec(1),
      I3 => StC_Spi_Trans(2),
      I4 => StC_Spi_Trans(0),
      I5 => StC_Spi_Trans(1),
      O => \FSM_sequential_StC_Spi_Trans[2]_i_3_n_0\
    );
\FSM_sequential_StC_Spi_Trans[2]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => StC_Spi_Trans(2),
      I1 => StC_Spi_Trans(0),
      I2 => Cnt_SS_Inactive(0),
      O => \FSM_sequential_StC_Spi_Trans[2]_i_4_n_0\
    );
\FSM_sequential_StC_Spi_Trans[2]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => Cnt_SS_Inactive(6),
      I1 => Cnt_SS_Inactive(5),
      I2 => Cnt_SS_Inactive(8),
      I3 => Cnt_SS_Inactive(7),
      O => \FSM_sequential_StC_Spi_Trans[2]_i_5_n_0\
    );
\FSM_sequential_StC_Spi_Trans[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001444"
    )
        port map (
      I0 => StC_Adxl_Ctrl(3),
      I1 => StC_Adxl_Ctrl(0),
      I2 => StC_Adxl_Ctrl(2),
      I3 => StC_Adxl_Ctrl(1),
      I4 => StC_Spi_Trans(2),
      I5 => StC_Spi_Trans(1),
      O => \FSM_sequential_StC_Spi_Trans[2]_i_6_n_0\
    );
\FSM_sequential_StC_Spi_Trans_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => '1',
      D => \FSM_sequential_StC_Spi_Trans[0]_i_1_n_0\,
      Q => StC_Spi_Trans(0),
      R => RESET
    );
\FSM_sequential_StC_Spi_Trans_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => '1',
      D => \FSM_sequential_StC_Spi_Trans[1]_i_1_n_0\,
      Q => StC_Spi_Trans(1),
      R => RESET
    );
\FSM_sequential_StC_Spi_Trans_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => '1',
      D => \FSM_sequential_StC_Spi_Trans[2]_i_1_n_0\,
      Q => StC_Spi_Trans(2),
      R => RESET
    );
SPI_Interface: entity work.ADXL362Control_0_SPI_If
     port map (
      \Cnt_Bytes_Rec_reg[2]\ => SPI_Interface_n_0,
      Done_reg_0 => SPI_Interface_n_1,
      Done_reg_1 => SPI_Interface_n_2,
      \Dout_reg[7]_0\(7 downto 0) => Dout(7 downto 0),
      \FSM_sequential_StC_Spi_SendRec_reg[0]\ => \FSM_sequential_StC_Spi_SendRec[0]_i_2_n_0\,
      \FSM_sequential_StC_Spi_SendRec_reg[1]\ => \FSM_sequential_StC_Spi_SendRec[1]_i_3_n_0\,
      \FSM_sequential_StC_Spi_SendRec_reg[1]_0\ => \Cnt_Bytes_Rec_reg_n_0_[2]\,
      \FSM_sequential_StC_Spi_SendRec_reg[2]\ => \Cnt_Bytes_Sent_reg_n_0_[1]\,
      \FSM_sequential_StC_Spi_SendRec_reg[2]_0\ => \Cnt_Bytes_Sent_reg_n_0_[0]\,
      MISO => MISO,
      MOSI => MOSI,
      Q(6 downto 0) => D_Send(6 downto 0),
      RESET => RESET,
      SCLK => SCLK,
      SPI_RnW => SPI_RnW,
      SS => SS,
      SYSCLK => SYSCLK,
      Shift_Data_Reg => Shift_Data_Reg,
      StC_Spi_SendRec(2 downto 0) => StC_Spi_SendRec(2 downto 0),
      StC_Spi_Trans(2 downto 0) => StC_Spi_Trans(2 downto 0)
    );
SPI_RnW_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0048"
    )
        port map (
      I0 => StC_Adxl_Ctrl(1),
      I1 => StC_Adxl_Ctrl(2),
      I2 => StC_Adxl_Ctrl(0),
      I3 => StC_Adxl_Ctrl(3),
      O => Cnt_Bytes_Sent1
    );
SPI_RnW_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => '1',
      D => Cnt_Bytes_Sent1,
      Q => SPI_RnW,
      R => '0'
    );
Sample_Rate_Div0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => Sample_Rate_Div0_carry_n_0,
      CO(2) => Sample_Rate_Div0_carry_n_1,
      CO(1) => Sample_Rate_Div0_carry_n_2,
      CO(0) => Sample_Rate_Div0_carry_n_3,
      CYINIT => Sample_Rate_Div(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => Sample_Rate_Div(4 downto 1)
    );
\Sample_Rate_Div0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => Sample_Rate_Div0_carry_n_0,
      CO(3) => \Sample_Rate_Div0_carry__0_n_0\,
      CO(2) => \Sample_Rate_Div0_carry__0_n_1\,
      CO(1) => \Sample_Rate_Div0_carry__0_n_2\,
      CO(0) => \Sample_Rate_Div0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => Sample_Rate_Div(8 downto 5)
    );
\Sample_Rate_Div0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \Sample_Rate_Div0_carry__0_n_0\,
      CO(3) => \Sample_Rate_Div0_carry__1_n_0\,
      CO(2) => \Sample_Rate_Div0_carry__1_n_1\,
      CO(1) => \Sample_Rate_Div0_carry__1_n_2\,
      CO(0) => \Sample_Rate_Div0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => Sample_Rate_Div(12 downto 9)
    );
\Sample_Rate_Div0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \Sample_Rate_Div0_carry__1_n_0\,
      CO(3) => \NLW_Sample_Rate_Div0_carry__2_CO_UNCONNECTED\(3),
      CO(2) => \Sample_Rate_Div0_carry__2_n_1\,
      CO(1) => \Sample_Rate_Div0_carry__2_n_2\,
      CO(0) => \Sample_Rate_Div0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3 downto 0) => Sample_Rate_Div(16 downto 13)
    );
\Sample_Rate_Div[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Sample_Rate_Div(0),
      O => Sample_Rate_Div_3(0)
    );
\Sample_Rate_Div[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_StC_Adxl_Ctrl[3]_i_6_n_0\,
      I1 => data0(10),
      O => Sample_Rate_Div_3(10)
    );
\Sample_Rate_Div[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_StC_Adxl_Ctrl[3]_i_6_n_0\,
      I1 => data0(11),
      O => Sample_Rate_Div_3(11)
    );
\Sample_Rate_Div[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_StC_Adxl_Ctrl[3]_i_6_n_0\,
      I1 => data0(12),
      O => Sample_Rate_Div_3(12)
    );
\Sample_Rate_Div[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_StC_Adxl_Ctrl[3]_i_6_n_0\,
      I1 => data0(13),
      O => Sample_Rate_Div_3(13)
    );
\Sample_Rate_Div[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_StC_Adxl_Ctrl[3]_i_6_n_0\,
      I1 => data0(14),
      O => Sample_Rate_Div_3(14)
    );
\Sample_Rate_Div[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_StC_Adxl_Ctrl[3]_i_6_n_0\,
      I1 => data0(15),
      O => Sample_Rate_Div_3(15)
    );
\Sample_Rate_Div[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF2A"
    )
        port map (
      I0 => StC_Adxl_Ctrl(0),
      I1 => StC_Adxl_Ctrl(1),
      I2 => StC_Adxl_Ctrl(2),
      I3 => StC_Adxl_Ctrl(3),
      O => Reset_Sample_Rate_Div
    );
\Sample_Rate_Div[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_StC_Adxl_Ctrl[3]_i_6_n_0\,
      I1 => data0(16),
      O => Sample_Rate_Div_3(16)
    );
\Sample_Rate_Div[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_StC_Adxl_Ctrl[3]_i_6_n_0\,
      I1 => data0(1),
      O => Sample_Rate_Div_3(1)
    );
\Sample_Rate_Div[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_StC_Adxl_Ctrl[3]_i_6_n_0\,
      I1 => data0(2),
      O => Sample_Rate_Div_3(2)
    );
\Sample_Rate_Div[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_StC_Adxl_Ctrl[3]_i_6_n_0\,
      I1 => data0(3),
      O => Sample_Rate_Div_3(3)
    );
\Sample_Rate_Div[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_StC_Adxl_Ctrl[3]_i_6_n_0\,
      I1 => data0(4),
      O => Sample_Rate_Div_3(4)
    );
\Sample_Rate_Div[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_StC_Adxl_Ctrl[3]_i_6_n_0\,
      I1 => data0(5),
      O => Sample_Rate_Div_3(5)
    );
\Sample_Rate_Div[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_StC_Adxl_Ctrl[3]_i_6_n_0\,
      I1 => data0(6),
      O => Sample_Rate_Div_3(6)
    );
\Sample_Rate_Div[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_StC_Adxl_Ctrl[3]_i_6_n_0\,
      I1 => data0(7),
      O => Sample_Rate_Div_3(7)
    );
\Sample_Rate_Div[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_StC_Adxl_Ctrl[3]_i_6_n_0\,
      I1 => data0(8),
      O => Sample_Rate_Div_3(8)
    );
\Sample_Rate_Div[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_sequential_StC_Adxl_Ctrl[3]_i_6_n_0\,
      I1 => data0(9),
      O => Sample_Rate_Div_3(9)
    );
\Sample_Rate_Div_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => '1',
      D => Sample_Rate_Div_3(0),
      Q => Sample_Rate_Div(0),
      R => Reset_Sample_Rate_Div
    );
\Sample_Rate_Div_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => '1',
      D => Sample_Rate_Div_3(10),
      Q => Sample_Rate_Div(10),
      R => Reset_Sample_Rate_Div
    );
\Sample_Rate_Div_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => '1',
      D => Sample_Rate_Div_3(11),
      Q => Sample_Rate_Div(11),
      R => Reset_Sample_Rate_Div
    );
\Sample_Rate_Div_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => '1',
      D => Sample_Rate_Div_3(12),
      Q => Sample_Rate_Div(12),
      R => Reset_Sample_Rate_Div
    );
\Sample_Rate_Div_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => '1',
      D => Sample_Rate_Div_3(13),
      Q => Sample_Rate_Div(13),
      R => Reset_Sample_Rate_Div
    );
\Sample_Rate_Div_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => '1',
      D => Sample_Rate_Div_3(14),
      Q => Sample_Rate_Div(14),
      R => Reset_Sample_Rate_Div
    );
\Sample_Rate_Div_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => '1',
      D => Sample_Rate_Div_3(15),
      Q => Sample_Rate_Div(15),
      R => Reset_Sample_Rate_Div
    );
\Sample_Rate_Div_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => '1',
      D => Sample_Rate_Div_3(16),
      Q => Sample_Rate_Div(16),
      R => Reset_Sample_Rate_Div
    );
\Sample_Rate_Div_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => '1',
      D => Sample_Rate_Div_3(1),
      Q => Sample_Rate_Div(1),
      R => Reset_Sample_Rate_Div
    );
\Sample_Rate_Div_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => '1',
      D => Sample_Rate_Div_3(2),
      Q => Sample_Rate_Div(2),
      R => Reset_Sample_Rate_Div
    );
\Sample_Rate_Div_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => '1',
      D => Sample_Rate_Div_3(3),
      Q => Sample_Rate_Div(3),
      R => Reset_Sample_Rate_Div
    );
\Sample_Rate_Div_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => '1',
      D => Sample_Rate_Div_3(4),
      Q => Sample_Rate_Div(4),
      R => Reset_Sample_Rate_Div
    );
\Sample_Rate_Div_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => '1',
      D => Sample_Rate_Div_3(5),
      Q => Sample_Rate_Div(5),
      R => Reset_Sample_Rate_Div
    );
\Sample_Rate_Div_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => '1',
      D => Sample_Rate_Div_3(6),
      Q => Sample_Rate_Div(6),
      R => Reset_Sample_Rate_Div
    );
\Sample_Rate_Div_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => '1',
      D => Sample_Rate_Div_3(7),
      Q => Sample_Rate_Div(7),
      R => Reset_Sample_Rate_Div
    );
\Sample_Rate_Div_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => '1',
      D => Sample_Rate_Div_3(8),
      Q => Sample_Rate_Div(8),
      R => Reset_Sample_Rate_Div
    );
\Sample_Rate_Div_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => SYSCLK,
      CE => '1',
      D => Sample_Rate_Div_3(9),
      Q => Sample_Rate_Div(9),
      R => Reset_Sample_Rate_Div
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ADXL362Control_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ADXL362Control_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ADXL362Control_0 : entity is "ADXL362Control_0,ADXL362Ctrl,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of ADXL362Control_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of ADXL362Control_0 : entity is "ADXL362Ctrl,Vivado 2019.1";
end ADXL362Control_0;

architecture STRUCTURE of ADXL362Control_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of RESET : signal is "xilinx.com:signal:reset:1.0 RESET RST";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of RESET : signal is "XIL_INTERFACENAME RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.ADXL362Control_0_ADXL362Ctrl
     port map (
      ACCEL_TMP(11 downto 0) => ACCEL_TMP(11 downto 0),
      ACCEL_X(11 downto 0) => ACCEL_X(11 downto 0),
      ACCEL_Y(11 downto 0) => ACCEL_Y(11 downto 0),
      ACCEL_Z(11 downto 0) => ACCEL_Z(11 downto 0),
      Data_Ready => Data_Ready,
      MISO => MISO,
      MOSI => MOSI,
      RESET => RESET,
      SCLK => SCLK,
      SS => SS,
      SYSCLK => SYSCLK
    );
end STRUCTURE;
