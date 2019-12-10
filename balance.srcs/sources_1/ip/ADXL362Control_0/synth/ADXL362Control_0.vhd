-- (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:user:ADXL362Control:1.0
-- IP Revision: 4

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY ADXL362Control_0 IS
  PORT (
    SYSCLK : IN STD_LOGIC;
    RESET : IN STD_LOGIC;
    ACCEL_X : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    ACCEL_Y : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    ACCEL_Z : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    ACCEL_TMP : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
    Data_Ready : OUT STD_LOGIC;
    SCLK : OUT STD_LOGIC;
    MOSI : OUT STD_LOGIC;
    MISO : IN STD_LOGIC;
    SS : OUT STD_LOGIC
  );
END ADXL362Control_0;

ARCHITECTURE ADXL362Control_0_arch OF ADXL362Control_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF ADXL362Control_0_arch: ARCHITECTURE IS "yes";
  COMPONENT ADXL362Ctrl IS
    GENERIC (
      SYSCLK_FREQUENCY_HZ : INTEGER;
      SCLK_FREQUENCY_HZ : INTEGER;
      NUM_READS_AVG : INTEGER;
      UPDATE_FREQUENCY_HZ : INTEGER
    );
    PORT (
      SYSCLK : IN STD_LOGIC;
      RESET : IN STD_LOGIC;
      ACCEL_X : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      ACCEL_Y : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      ACCEL_Z : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      ACCEL_TMP : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
      Data_Ready : OUT STD_LOGIC;
      SCLK : OUT STD_LOGIC;
      MOSI : OUT STD_LOGIC;
      MISO : IN STD_LOGIC;
      SS : OUT STD_LOGIC
    );
  END COMPONENT ADXL362Ctrl;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF ADXL362Control_0_arch: ARCHITECTURE IS "ADXL362Ctrl,Vivado 2019.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF ADXL362Control_0_arch : ARCHITECTURE IS "ADXL362Control_0,ADXL362Ctrl,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF ADXL362Control_0_arch: ARCHITECTURE IS "ADXL362Control_0,ADXL362Ctrl,{x_ipProduct=Vivado 2019.1,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=ADXL362Control,x_ipVersion=1.0,x_ipCoreRevision=4,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,SYSCLK_FREQUENCY_HZ=108000000,SCLK_FREQUENCY_HZ=1000000,NUM_READS_AVG=16,UPDATE_FREQUENCY_HZ=1000}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF RESET: SIGNAL IS "XIL_INTERFACENAME RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF RESET: SIGNAL IS "xilinx.com:signal:reset:1.0 RESET RST";
BEGIN
  U0 : ADXL362Ctrl
    GENERIC MAP (
      SYSCLK_FREQUENCY_HZ => 108000000,
      SCLK_FREQUENCY_HZ => 1000000,
      NUM_READS_AVG => 16,
      UPDATE_FREQUENCY_HZ => 1000
    )
    PORT MAP (
      SYSCLK => SYSCLK,
      RESET => RESET,
      ACCEL_X => ACCEL_X,
      ACCEL_Y => ACCEL_Y,
      ACCEL_Z => ACCEL_Z,
      ACCEL_TMP => ACCEL_TMP,
      Data_Ready => Data_Ready,
      SCLK => SCLK,
      MOSI => MOSI,
      MISO => MISO,
      SS => SS
    );
END ADXL362Control_0_arch;
