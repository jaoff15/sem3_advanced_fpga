-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
-- Date        : Wed Mar 18 14:42:02 2020
-- Host        : JacobOffersen running 64-bit Ubuntu 19.10
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               /home/jacoboffersen/advanced_programmable_electronics/sem3_advanced_fpga/advanced_fpga.sim/sim_1/synth/func/xsim/top_tb_func_synth.vhd
-- Design      : top
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7s25ftgb196-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity binary_counter is
  port (
    \q_reg[4]_0\ : out STD_LOGIC;
    CLK : in STD_LOGIC
  );
end binary_counter;

architecture STRUCTURE of binary_counter is
  signal plusOp : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^q_reg[4]_0\ : STD_LOGIC;
  signal \q_reg_n_0_[0]\ : STD_LOGIC;
  signal \q_reg_n_0_[1]\ : STD_LOGIC;
  signal \q_reg_n_0_[2]\ : STD_LOGIC;
  signal \q_reg_n_0_[3]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \q[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \q[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \q[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \q[4]_i_1\ : label is "soft_lutpair0";
begin
  \q_reg[4]_0\ <= \^q_reg[4]_0\;
\q[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \q_reg_n_0_[0]\,
      O => plusOp(0)
    );
\q[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \q_reg_n_0_[0]\,
      I1 => \q_reg_n_0_[1]\,
      O => plusOp(1)
    );
\q[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \q_reg_n_0_[2]\,
      I1 => \q_reg_n_0_[1]\,
      I2 => \q_reg_n_0_[0]\,
      O => plusOp(2)
    );
\q[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \q_reg_n_0_[3]\,
      I1 => \q_reg_n_0_[0]\,
      I2 => \q_reg_n_0_[1]\,
      I3 => \q_reg_n_0_[2]\,
      O => plusOp(3)
    );
\q[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \^q_reg[4]_0\,
      I1 => \q_reg_n_0_[2]\,
      I2 => \q_reg_n_0_[1]\,
      I3 => \q_reg_n_0_[0]\,
      I4 => \q_reg_n_0_[3]\,
      O => plusOp(4)
    );
\q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => plusOp(0),
      Q => \q_reg_n_0_[0]\,
      R => '0'
    );
\q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => plusOp(1),
      Q => \q_reg_n_0_[1]\,
      R => '0'
    );
\q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => plusOp(2),
      Q => \q_reg_n_0_[2]\,
      R => '0'
    );
\q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => plusOp(3),
      Q => \q_reg_n_0_[3]\,
      R => '0'
    );
\q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => plusOp(4),
      Q => \^q_reg[4]_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clock_module_TE0277 is
  port (
    CLK : out STD_LOGIC;
    clk_in_hw_IBUF_BUFG : in STD_LOGIC
  );
end clock_module_TE0277;

architecture STRUCTURE of clock_module_TE0277 is
  signal CLKFBIN : STD_LOGIC;
  signal MMCME2_BASE_inst_n_10 : STD_LOGIC;
  signal MMCME2_BASE_inst_n_11 : STD_LOGIC;
  signal MMCME2_BASE_inst_n_12 : STD_LOGIC;
  signal MMCME2_BASE_inst_n_4 : STD_LOGIC;
  signal MMCME2_BASE_inst_n_6 : STD_LOGIC;
  signal MMCME2_BASE_inst_n_8 : STD_LOGIC;
  signal lock : STD_LOGIC;
  signal NLW_MMCME2_BASE_inst_CLKFBOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCME2_BASE_inst_CLKFBSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCME2_BASE_inst_CLKINSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCME2_BASE_inst_CLKOUT0B_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCME2_BASE_inst_CLKOUT1B_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCME2_BASE_inst_CLKOUT2B_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCME2_BASE_inst_CLKOUT3B_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCME2_BASE_inst_DRDY_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCME2_BASE_inst_PSDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_MMCME2_BASE_inst_DO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of MMCME2_BASE_inst : label is "MMCME2_BASE";
  attribute box_type : string;
  attribute box_type of MMCME2_BASE_inst : label is "PRIMITIVE";
begin
MMCME2_BASE_inst: unisim.vcomponents.MMCME2_ADV
    generic map(
      BANDWIDTH => "OPTIMIZED",
      CLKFBOUT_MULT_F => 48.000000,
      CLKFBOUT_PHASE => 0.000000,
      CLKFBOUT_USE_FINE_PS => false,
      CLKIN1_PERIOD => 10.000000,
      CLKIN2_PERIOD => 10.000000,
      CLKOUT0_DIVIDE_F => 9.375000,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT0_USE_FINE_PS => false,
      CLKOUT1_DIVIDE => 2,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT1_USE_FINE_PS => false,
      CLKOUT2_DIVIDE => 4,
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT2_PHASE => 0.000000,
      CLKOUT2_USE_FINE_PS => false,
      CLKOUT3_DIVIDE => 10,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      CLKOUT3_PHASE => 0.000000,
      CLKOUT3_USE_FINE_PS => false,
      CLKOUT4_CASCADE => false,
      CLKOUT4_DIVIDE => 20,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT4_PHASE => 0.000000,
      CLKOUT4_USE_FINE_PS => false,
      CLKOUT5_DIVIDE => 40,
      CLKOUT5_DUTY_CYCLE => 0.500000,
      CLKOUT5_PHASE => 0.000000,
      CLKOUT5_USE_FINE_PS => false,
      CLKOUT6_DIVIDE => 100,
      CLKOUT6_DUTY_CYCLE => 0.500000,
      CLKOUT6_PHASE => 0.000000,
      CLKOUT6_USE_FINE_PS => false,
      COMPENSATION => "INTERNAL",
      DIVCLK_DIVIDE => 5,
      REF_JITTER1 => 0.000000,
      REF_JITTER2 => 0.010000,
      SS_EN => "FALSE",
      SS_MODE => "CENTER_HIGH",
      SS_MOD_PERIOD => 10000,
      STARTUP_WAIT => false
    )
        port map (
      CLKFBIN => CLKFBIN,
      CLKFBOUT => CLKFBIN,
      CLKFBOUTB => NLW_MMCME2_BASE_inst_CLKFBOUTB_UNCONNECTED,
      CLKFBSTOPPED => NLW_MMCME2_BASE_inst_CLKFBSTOPPED_UNCONNECTED,
      CLKIN1 => clk_in_hw_IBUF_BUFG,
      CLKIN2 => '0',
      CLKINSEL => '1',
      CLKINSTOPPED => NLW_MMCME2_BASE_inst_CLKINSTOPPED_UNCONNECTED,
      CLKOUT0 => CLK,
      CLKOUT0B => NLW_MMCME2_BASE_inst_CLKOUT0B_UNCONNECTED,
      CLKOUT1 => MMCME2_BASE_inst_n_4,
      CLKOUT1B => NLW_MMCME2_BASE_inst_CLKOUT1B_UNCONNECTED,
      CLKOUT2 => MMCME2_BASE_inst_n_6,
      CLKOUT2B => NLW_MMCME2_BASE_inst_CLKOUT2B_UNCONNECTED,
      CLKOUT3 => MMCME2_BASE_inst_n_8,
      CLKOUT3B => NLW_MMCME2_BASE_inst_CLKOUT3B_UNCONNECTED,
      CLKOUT4 => MMCME2_BASE_inst_n_10,
      CLKOUT5 => MMCME2_BASE_inst_n_11,
      CLKOUT6 => MMCME2_BASE_inst_n_12,
      DADDR(6 downto 0) => B"0000000",
      DCLK => '0',
      DEN => '0',
      DI(15 downto 0) => B"0000000000000000",
      DO(15 downto 0) => NLW_MMCME2_BASE_inst_DO_UNCONNECTED(15 downto 0),
      DRDY => NLW_MMCME2_BASE_inst_DRDY_UNCONNECTED,
      DWE => '0',
      LOCKED => lock,
      PSCLK => '0',
      PSDONE => NLW_MMCME2_BASE_inst_PSDONE_UNCONNECTED,
      PSEN => '0',
      PSINCDEC => '0',
      PWRDWN => '0',
      RST => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity segment_display is
  port (
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \address_bus_reg[7]\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    D : in STD_LOGIC_VECTOR ( 6 downto 0 );
    CLK : in STD_LOGIC
  );
end segment_display;

architecture STRUCTURE of segment_display is
  signal \data_out[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[7]_i_3_n_0\ : STD_LOGIC;
begin
\data_out[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => \address_bus_reg[7]\(2),
      I1 => \address_bus_reg[7]\(7),
      I2 => \address_bus_reg[7]\(4),
      I3 => \address_bus_reg[7]\(6),
      I4 => \data_out[7]_i_3_n_0\,
      O => \data_out[7]_i_1_n_0\
    );
\data_out[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \address_bus_reg[7]\(1),
      I1 => \address_bus_reg[7]\(0),
      I2 => \address_bus_reg[7]\(5),
      I3 => \address_bus_reg[7]\(3),
      O => \data_out[7]_i_3_n_0\
    );
\data_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \data_out[7]_i_1_n_0\,
      D => D(0),
      Q => Q(0),
      R => '0'
    );
\data_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \data_out[7]_i_1_n_0\,
      D => D(1),
      Q => Q(1),
      R => '0'
    );
\data_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \data_out[7]_i_1_n_0\,
      D => D(2),
      Q => Q(2),
      R => '0'
    );
\data_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \data_out[7]_i_1_n_0\,
      D => D(3),
      Q => Q(3),
      R => '0'
    );
\data_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \data_out[7]_i_1_n_0\,
      D => '1',
      Q => Q(4),
      R => '0'
    );
\data_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \data_out[7]_i_1_n_0\,
      D => D(4),
      Q => Q(5),
      R => '0'
    );
\data_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \data_out[7]_i_1_n_0\,
      D => D(5),
      Q => Q(6),
      R => '0'
    );
\data_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \data_out[7]_i_1_n_0\,
      D => D(6),
      Q => Q(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_rx is
  port (
    running : out STD_LOGIC;
    \next_state_reg[4]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \address_signal_reg[4]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \address_signal_reg[7]\ : out STD_LOGIC;
    \address_signal_reg[5]\ : out STD_LOGIC;
    \address_signal_reg[6]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    data_signal : out STD_LOGIC_VECTOR ( 1 downto 0 );
    address_signal_0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    state : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \state_reg[2]\ : in STD_LOGIC;
    \FSM_sequential_state_reg[1]\ : in STD_LOGIC;
    \state_reg[0]_0\ : in STD_LOGIC
  );
end uart_rx;

architecture STRUCTURE of uart_rx is
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \address_bus[7]_i_2_n_0\ : STD_LOGIC;
  signal \address_bus[7]_i_3_n_0\ : STD_LOGIC;
  signal \address_signal[4]_i_2_n_0\ : STD_LOGIC;
  signal \address_signal[6]_i_2_n_0\ : STD_LOGIC;
  signal \address_signal[6]_i_3_n_0\ : STD_LOGIC;
  signal \address_signal[7]_i_4_n_0\ : STD_LOGIC;
  signal \address_signal[7]_i_5_n_0\ : STD_LOGIC;
  signal \bit_index[0]_i_1_n_0\ : STD_LOGIC;
  signal \bit_index[1]_i_1_n_0\ : STD_LOGIC;
  signal \bit_index[2]_i_1_n_0\ : STD_LOGIC;
  signal \bit_index[2]_i_2_n_0\ : STD_LOGIC;
  signal \bit_index_reg_n_0_[0]\ : STD_LOGIC;
  signal \bit_index_reg_n_0_[1]\ : STD_LOGIC;
  signal \bit_index_reg_n_0_[2]\ : STD_LOGIC;
  signal data_temp : STD_LOGIC_VECTOR ( 0 to 7 );
  signal \data_temp[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_temp[0]_i_2_n_0\ : STD_LOGIC;
  signal \data_temp[0]_i_3_n_0\ : STD_LOGIC;
  signal \data_temp[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_temp[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_temp[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_temp[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_temp[4]_i_2_n_0\ : STD_LOGIC;
  signal \data_temp[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_temp[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_temp[7]_i_1_n_0\ : STD_LOGIC;
  signal \next_state[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \next_state[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \next_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \next_state[0]_i_3__0_n_0\ : STD_LOGIC;
  signal \next_state[0]_i_3_n_0\ : STD_LOGIC;
  signal \next_state[0]_i_4_n_0\ : STD_LOGIC;
  signal \next_state[0]_i_5_n_0\ : STD_LOGIC;
  signal \next_state[0]_i_6_n_0\ : STD_LOGIC;
  signal \next_state[0]_i_8_n_0\ : STD_LOGIC;
  signal \next_state[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \next_state[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \next_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \next_state[1]_i_3__0_n_0\ : STD_LOGIC;
  signal \next_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \next_state[1]_i_5_n_0\ : STD_LOGIC;
  signal \next_state[1]_i_7_n_0\ : STD_LOGIC;
  signal \next_state[1]_i_8_n_0\ : STD_LOGIC;
  signal \next_state[1]_i_9_n_0\ : STD_LOGIC;
  signal \next_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \next_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \next_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \next_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \next_state[2]_i_6_n_0\ : STD_LOGIC;
  signal \next_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \next_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \next_state[4]_i_3_n_0\ : STD_LOGIC;
  signal \next_state[4]_i_4_n_0\ : STD_LOGIC;
  signal \next_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \next_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal running_i_1_n_0 : STD_LOGIC;
  signal \rx_data_out[7]_i_1_n_0\ : STD_LOGIC;
  signal rx_in_last : STD_LOGIC;
  signal state_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \substate[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \substate[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \substate_reg__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \address_bus[7]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \address_signal[4]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \address_signal[6]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \address_signal[6]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \address_signal[7]_i_4\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \address_signal[7]_i_5\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \data_temp[0]_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \next_state[0]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \next_state[0]_i_2__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \next_state[1]_i_2__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \next_state[1]_i_7\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \next_state[1]_i_9\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \next_state[2]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \next_state[2]_i_5\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of running_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \substate[0]_i_1__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \substate[1]_i_1__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \substate[2]_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \substate[3]_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \substate[4]_i_1__0\ : label is "soft_lutpair4";
begin
  Q(7 downto 0) <= \^q\(7 downto 0);
\address_bus[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000C000000200000"
    )
        port map (
      I0 => \address_bus[7]_i_2_n_0\,
      I1 => state(4),
      I2 => state(2),
      I3 => state(3),
      I4 => state(0),
      I5 => state(1),
      O => E(0)
    );
\address_bus[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(6),
      I2 => \^q\(2),
      I3 => \^q\(1),
      I4 => \address_bus[7]_i_3_n_0\,
      O => \address_bus[7]_i_2_n_0\
    );
\address_bus[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => \^q\(4),
      I1 => \^q\(3),
      I2 => \^q\(5),
      I3 => \^q\(0),
      O => \address_bus[7]_i_3_n_0\
    );
\address_signal[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000121"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(3),
      I3 => state(2),
      I4 => state(4),
      I5 => \next_state[4]_i_3_n_0\,
      O => address_signal_0(0)
    );
\address_signal[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000077744444"
    )
        port map (
      I0 => \address_signal[7]_i_5_n_0\,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \address_signal[6]_i_2_n_0\,
      I5 => \address_signal[4]_i_2_n_0\,
      O => \address_signal_reg[4]\
    );
\address_signal[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFA8"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(7),
      O => \address_signal[4]_i_2_n_0\
    );
\address_signal[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0140010004400400"
    )
        port map (
      I0 => \address_signal[6]_i_3_n_0\,
      I1 => \^q\(1),
      I2 => \^q\(4),
      I3 => \^q\(6),
      I4 => \^q\(5),
      I5 => \^q\(0),
      O => \address_signal_reg[5]\
    );
\address_signal[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002FAF8800"
    )
        port map (
      I0 => \address_signal[6]_i_2_n_0\,
      I1 => \^q\(1),
      I2 => \address_signal[7]_i_5_n_0\,
      I3 => \^q\(0),
      I4 => \^q\(2),
      I5 => \address_signal[6]_i_3_n_0\,
      O => \address_signal_reg[6]\
    );
\address_signal[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(4),
      O => \address_signal[6]_i_2_n_0\
    );
\address_signal[6]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(3),
      O => \address_signal[6]_i_3_n_0\
    );
\address_signal[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100040011"
    )
        port map (
      I0 => state(2),
      I1 => state(0),
      I2 => state(3),
      I3 => state(4),
      I4 => state(1),
      I5 => \next_state[4]_i_3_n_0\,
      O => address_signal_0(1)
    );
\address_signal[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000005501010055"
    )
        port map (
      I0 => \^q\(7),
      I1 => \^q\(2),
      I2 => \^q\(1),
      I3 => \address_signal[7]_i_4_n_0\,
      I4 => \^q\(3),
      I5 => \address_signal[7]_i_5_n_0\,
      O => \address_signal_reg[7]\
    );
\address_signal[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF81FF"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      I3 => \^q\(6),
      I4 => \^q\(4),
      O => \address_signal[7]_i_4_n_0\
    );
\address_signal[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(6),
      I2 => \^q\(4),
      O => \address_signal[7]_i_5_n_0\
    );
\bit_index[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E6660000"
    )
        port map (
      I0 => \bit_index_reg_n_0_[0]\,
      I1 => \bit_index[2]_i_2_n_0\,
      I2 => \bit_index_reg_n_0_[2]\,
      I3 => \bit_index_reg_n_0_[1]\,
      I4 => state_0(1),
      I5 => state_0(0),
      O => \bit_index[0]_i_1_n_0\
    );
\bit_index[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000E6CC0000"
    )
        port map (
      I0 => \bit_index_reg_n_0_[0]\,
      I1 => \bit_index_reg_n_0_[1]\,
      I2 => \bit_index_reg_n_0_[2]\,
      I3 => \bit_index[2]_i_2_n_0\,
      I4 => state_0(1),
      I5 => state_0(0),
      O => \bit_index[1]_i_1_n_0\
    );
\bit_index[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F8F00000"
    )
        port map (
      I0 => \bit_index_reg_n_0_[0]\,
      I1 => \bit_index_reg_n_0_[1]\,
      I2 => \bit_index_reg_n_0_[2]\,
      I3 => \bit_index[2]_i_2_n_0\,
      I4 => state_0(1),
      I5 => state_0(0),
      O => \bit_index[2]_i_1_n_0\
    );
\bit_index[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => \substate_reg__0\(5),
      I1 => \substate_reg__0\(4),
      I2 => \substate_reg__0\(1),
      I3 => \substate_reg__0\(2),
      I4 => \substate_reg__0\(0),
      I5 => \substate_reg__0\(3),
      O => \bit_index[2]_i_2_n_0\
    );
\bit_index_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \bit_index[0]_i_1_n_0\,
      Q => \bit_index_reg_n_0_[0]\,
      R => '0'
    );
\bit_index_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \bit_index[1]_i_1_n_0\,
      Q => \bit_index_reg_n_0_[1]\,
      R => '0'
    );
\bit_index_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \bit_index[2]_i_1_n_0\,
      Q => \bit_index_reg_n_0_[2]\,
      R => '0'
    );
\data_signal[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000003"
    )
        port map (
      I0 => \next_state[4]_i_3_n_0\,
      I1 => state(2),
      I2 => state(3),
      I3 => state(0),
      I4 => state(1),
      I5 => state(4),
      O => data_signal(0)
    );
\data_signal[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000000003"
    )
        port map (
      I0 => \next_state[4]_i_3_n_0\,
      I1 => state(2),
      I2 => state(3),
      I3 => state(4),
      I4 => state(1),
      I5 => state(0),
      O => data_signal(1)
    );
\data_temp[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \bit_index_reg_n_0_[1]\,
      I1 => \bit_index_reg_n_0_[0]\,
      I2 => \data_temp[0]_i_2_n_0\,
      O => \data_temp[0]_i_1_n_0\
    );
\data_temp[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => \bit_index_reg_n_0_[2]\,
      I1 => state_0(1),
      I2 => state_0(0),
      I3 => \substate_reg__0\(5),
      I4 => \substate_reg__0\(4),
      I5 => \data_temp[0]_i_3_n_0\,
      O => \data_temp[0]_i_2_n_0\
    );
\data_temp[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \substate_reg__0\(1),
      I1 => \substate_reg__0\(2),
      I2 => \substate_reg__0\(0),
      I3 => \substate_reg__0\(3),
      O => \data_temp[0]_i_3_n_0\
    );
\data_temp[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \bit_index_reg_n_0_[0]\,
      I1 => \bit_index_reg_n_0_[1]\,
      I2 => \data_temp[0]_i_2_n_0\,
      O => \data_temp[1]_i_1_n_0\
    );
\data_temp[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \bit_index_reg_n_0_[1]\,
      I1 => \bit_index_reg_n_0_[0]\,
      I2 => \data_temp[0]_i_2_n_0\,
      O => \data_temp[2]_i_1_n_0\
    );
\data_temp[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => \data_temp[0]_i_2_n_0\,
      I1 => \bit_index_reg_n_0_[1]\,
      I2 => \bit_index_reg_n_0_[0]\,
      O => \data_temp[3]_i_1_n_0\
    );
\data_temp[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \bit_index_reg_n_0_[1]\,
      I1 => \bit_index_reg_n_0_[0]\,
      I2 => \data_temp[4]_i_2_n_0\,
      O => \data_temp[4]_i_1_n_0\
    );
\data_temp[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFB"
    )
        port map (
      I0 => \bit_index_reg_n_0_[2]\,
      I1 => state_0(1),
      I2 => state_0(0),
      I3 => \substate_reg__0\(5),
      I4 => \substate_reg__0\(4),
      I5 => \data_temp[0]_i_3_n_0\,
      O => \data_temp[4]_i_2_n_0\
    );
\data_temp[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \bit_index_reg_n_0_[0]\,
      I1 => \bit_index_reg_n_0_[1]\,
      I2 => \data_temp[4]_i_2_n_0\,
      O => \data_temp[5]_i_1_n_0\
    );
\data_temp[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \bit_index_reg_n_0_[1]\,
      I1 => \bit_index_reg_n_0_[0]\,
      I2 => \data_temp[4]_i_2_n_0\,
      O => \data_temp[6]_i_1_n_0\
    );
\data_temp[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \bit_index_reg_n_0_[1]\,
      I1 => \bit_index_reg_n_0_[0]\,
      I2 => \data_temp[4]_i_2_n_0\,
      O => \data_temp[7]_i_1_n_0\
    );
\data_temp_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \data_temp[0]_i_1_n_0\,
      D => D(0),
      Q => data_temp(0),
      R => '0'
    );
\data_temp_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \data_temp[1]_i_1_n_0\,
      D => D(0),
      Q => data_temp(1),
      R => '0'
    );
\data_temp_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \data_temp[2]_i_1_n_0\,
      D => D(0),
      Q => data_temp(2),
      R => '0'
    );
\data_temp_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \data_temp[3]_i_1_n_0\,
      D => D(0),
      Q => data_temp(3),
      R => '0'
    );
\data_temp_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \data_temp[4]_i_1_n_0\,
      D => D(0),
      Q => data_temp(4),
      R => '0'
    );
\data_temp_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \data_temp[5]_i_1_n_0\,
      D => D(0),
      Q => data_temp(5),
      R => '0'
    );
\data_temp_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \data_temp[6]_i_1_n_0\,
      D => D(0),
      Q => data_temp(6),
      R => '0'
    );
\data_temp_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \data_temp[7]_i_1_n_0\,
      D => D(0),
      Q => data_temp(7),
      R => '0'
    );
\next_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"50505050FFFF33F3"
    )
        port map (
      I0 => \next_state[0]_i_2_n_0\,
      I1 => \next_state[0]_i_3__0_n_0\,
      I2 => \state_reg[2]\,
      I3 => \next_state[0]_i_4_n_0\,
      I4 => \next_state[2]_i_2_n_0\,
      I5 => state(4),
      O => \next_state_reg[4]\(0)
    );
\next_state[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFB0"
    )
        port map (
      I0 => \next_state[1]_i_2_n_0\,
      I1 => \next_state[0]_i_2__0_n_0\,
      I2 => \next_state[1]_i_3_n_0\,
      I3 => \next_state_reg_n_0_[0]\,
      O => \next_state[0]_i_1__0_n_0\
    );
\next_state[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => state(0),
      I1 => \next_state[4]_i_3_n_0\,
      O => \next_state[0]_i_2_n_0\
    );
\next_state[0]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFF0FFF0"
    )
        port map (
      I0 => D(0),
      I1 => rx_in_last,
      I2 => state_0(0),
      I3 => state_0(1),
      I4 => \next_state[0]_i_3_n_0\,
      O => \next_state[0]_i_2__0_n_0\
    );
\next_state[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF8"
    )
        port map (
      I0 => \substate_reg__0\(2),
      I1 => \substate_reg__0\(1),
      I2 => \substate_reg__0\(4),
      I3 => \substate_reg__0\(5),
      I4 => \substate_reg__0\(3),
      O => \next_state[0]_i_3_n_0\
    );
\next_state[0]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFBF0F8F"
    )
        port map (
      I0 => \next_state[3]_i_3_n_0\,
      I1 => state(1),
      I2 => state(3),
      I3 => state(2),
      I4 => \next_state[4]_i_3_n_0\,
      I5 => state(0),
      O => \next_state[0]_i_3__0_n_0\
    );
\next_state[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF02FF33FF020033"
    )
        port map (
      I0 => \next_state[2]_i_6_n_0\,
      I1 => \next_state[0]_i_5_n_0\,
      I2 => \next_state[0]_i_6_n_0\,
      I3 => state(1),
      I4 => state(0),
      I5 => \next_state[3]_i_3_n_0\,
      O => \next_state[0]_i_4_n_0\
    );
\next_state[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
        port map (
      I0 => \^q\(4),
      I1 => state(0),
      I2 => \^q\(2),
      I3 => \address_signal[6]_i_3_n_0\,
      I4 => \FSM_sequential_state_reg[1]\,
      I5 => \next_state[0]_i_8_n_0\,
      O => \next_state[0]_i_5_n_0\
    );
\next_state[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFDFFFFFF"
    )
        port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(6),
      I4 => \^q\(4),
      I5 => \address_signal[6]_i_3_n_0\,
      O => \next_state[0]_i_6_n_0\
    );
\next_state[0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \^q\(5),
      I1 => \^q\(6),
      I2 => \^q\(0),
      I3 => \^q\(1),
      O => \next_state[0]_i_8_n_0\
    );
\next_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0A0A0A0FFFF33F3"
    )
        port map (
      I0 => \next_state[1]_i_2__0_n_0\,
      I1 => \next_state[1]_i_3__0_n_0\,
      I2 => \state_reg[2]\,
      I3 => \next_state[1]_i_5_n_0\,
      I4 => \next_state[2]_i_4_n_0\,
      I5 => state(4),
      O => \next_state_reg[4]\(1)
    );
\next_state[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \next_state[1]_i_2_n_0\,
      I1 => state_0(1),
      I2 => state_0(0),
      I3 => \next_state[1]_i_3_n_0\,
      I4 => \next_state_reg_n_0_[1]\,
      O => \next_state[1]_i_1__0_n_0\
    );
\next_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => \bit_index[2]_i_2_n_0\,
      I1 => \bit_index_reg_n_0_[2]\,
      I2 => \bit_index_reg_n_0_[1]\,
      I3 => \bit_index_reg_n_0_[0]\,
      I4 => state_0(0),
      O => \next_state[1]_i_2_n_0\
    );
\next_state[1]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"14"
    )
        port map (
      I0 => \next_state[4]_i_3_n_0\,
      I1 => state(0),
      I2 => state(1),
      O => \next_state[1]_i_2__0_n_0\
    );
\next_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAABAAABAAABA"
    )
        port map (
      I0 => \rx_data_out[7]_i_1_n_0\,
      I1 => D(0),
      I2 => rx_in_last,
      I3 => \next_state[0]_i_2__0_n_0\,
      I4 => \bit_index[2]_i_2_n_0\,
      I5 => state_0(0),
      O => \next_state[1]_i_3_n_0\
    );
\next_state[1]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFFFF333BFF"
    )
        port map (
      I0 => \next_state[3]_i_3_n_0\,
      I1 => state(3),
      I2 => state(2),
      I3 => state(1),
      I4 => state(0),
      I5 => \next_state[4]_i_3_n_0\,
      O => \next_state[1]_i_3__0_n_0\
    );
\next_state[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF7FDF"
    )
        port map (
      I0 => \state_reg[0]_0\,
      I1 => \^q\(0),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \next_state[1]_i_7_n_0\,
      I5 => \next_state[1]_i_8_n_0\,
      O => \next_state[1]_i_5_n_0\
    );
\next_state[1]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => \^q\(3),
      I1 => \^q\(7),
      I2 => \^q\(4),
      I3 => \^q\(6),
      O => \next_state[1]_i_7_n_0\
    );
\next_state[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => \^q\(7),
      I3 => \next_state[1]_i_9_n_0\,
      I4 => \address_signal[7]_i_5_n_0\,
      I5 => \^q\(3),
      O => \next_state[1]_i_8_n_0\
    );
\next_state[1]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \^q\(2),
      I1 => \^q\(0),
      I2 => \^q\(1),
      O => \next_state[1]_i_9_n_0\
    );
\next_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55555554"
    )
        port map (
      I0 => state(4),
      I1 => \next_state[2]_i_2_n_0\,
      I2 => \next_state[2]_i_3_n_0\,
      I3 => \next_state[2]_i_4_n_0\,
      I4 => \next_state[2]_i_5_n_0\,
      O => \next_state_reg[4]\(2)
    );
\next_state[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => state(3),
      I1 => state(2),
      I2 => state(0),
      I3 => \next_state[4]_i_3_n_0\,
      I4 => state(1),
      O => \next_state[2]_i_2_n_0\
    );
\next_state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010050005100"
    )
        port map (
      I0 => state(2),
      I1 => state(3),
      I2 => state(1),
      I3 => state(0),
      I4 => \next_state[2]_i_6_n_0\,
      I5 => \next_state[4]_i_3_n_0\,
      O => \next_state[2]_i_3_n_0\
    );
\next_state[2]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => \address_bus[7]_i_2_n_0\,
      I1 => state(0),
      I2 => state(1),
      I3 => state(2),
      I4 => state(3),
      O => \next_state[2]_i_4_n_0\
    );
\next_state[2]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"15000000"
    )
        port map (
      I0 => \next_state[4]_i_3_n_0\,
      I1 => state(1),
      I2 => state(0),
      I3 => state(3),
      I4 => state(2),
      O => \next_state[2]_i_5_n_0\
    );
\next_state[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(4),
      I2 => \address_signal[6]_i_3_n_0\,
      I3 => \^q\(2),
      I4 => \^q\(1),
      I5 => \^q\(0),
      O => \next_state[2]_i_6_n_0\
    );
\next_state[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state(4),
      I1 => \next_state[3]_i_2_n_0\,
      O => \next_state_reg[4]\(3)
    );
\next_state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFEFFFCB0F2F0F"
    )
        port map (
      I0 => \next_state[3]_i_3_n_0\,
      I1 => state(2),
      I2 => state(3),
      I3 => state(1),
      I4 => state(0),
      I5 => \next_state[4]_i_3_n_0\,
      O => \next_state[3]_i_2_n_0\
    );
\next_state[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFDFFFF"
    )
        port map (
      I0 => \^q\(3),
      I1 => \address_signal[7]_i_5_n_0\,
      I2 => \^q\(2),
      I3 => \^q\(0),
      I4 => \^q\(1),
      I5 => \^q\(7),
      O => \next_state[3]_i_3_n_0\
    );
\next_state[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040000000001500"
    )
        port map (
      I0 => \next_state[4]_i_3_n_0\,
      I1 => state(0),
      I2 => state(1),
      I3 => state(4),
      I4 => state(3),
      I5 => state(2),
      O => \next_state_reg[4]\(4)
    );
\next_state[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEEEAFFFFEEEE"
    )
        port map (
      I0 => \next_state[4]_i_4_n_0\,
      I1 => \^q\(3),
      I2 => \^q\(1),
      I3 => \^q\(2),
      I4 => \^q\(7),
      I5 => \^q\(4),
      O => \next_state[4]_i_3_n_0\
    );
\next_state[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFB5B5B5B5B5B5BF"
    )
        port map (
      I0 => \^q\(6),
      I1 => \^q\(5),
      I2 => \^q\(4),
      I3 => \^q\(2),
      I4 => \^q\(0),
      I5 => \^q\(1),
      O => \next_state[4]_i_4_n_0\
    );
\next_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \next_state[0]_i_1__0_n_0\,
      Q => \next_state_reg_n_0_[0]\,
      R => '0'
    );
\next_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \next_state[1]_i_1__0_n_0\,
      Q => \next_state_reg_n_0_[1]\,
      R => '0'
    );
running_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => state_0(0),
      I1 => state_0(1),
      O => running_i_1_n_0
    );
running_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => running_i_1_n_0,
      Q => running,
      R => '0'
    );
\rx_data_out[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => state_0(1),
      I1 => state_0(0),
      I2 => \bit_index_reg_n_0_[0]\,
      I3 => \bit_index_reg_n_0_[1]\,
      I4 => \bit_index_reg_n_0_[2]\,
      I5 => \bit_index[2]_i_2_n_0\,
      O => \rx_data_out[7]_i_1_n_0\
    );
\rx_data_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \rx_data_out[7]_i_1_n_0\,
      D => data_temp(7),
      Q => \^q\(0),
      R => '0'
    );
\rx_data_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \rx_data_out[7]_i_1_n_0\,
      D => data_temp(6),
      Q => \^q\(1),
      R => '0'
    );
\rx_data_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \rx_data_out[7]_i_1_n_0\,
      D => data_temp(5),
      Q => \^q\(2),
      R => '0'
    );
\rx_data_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \rx_data_out[7]_i_1_n_0\,
      D => data_temp(4),
      Q => \^q\(3),
      R => '0'
    );
\rx_data_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \rx_data_out[7]_i_1_n_0\,
      D => data_temp(3),
      Q => \^q\(4),
      R => '0'
    );
\rx_data_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \rx_data_out[7]_i_1_n_0\,
      D => data_temp(2),
      Q => \^q\(5),
      R => '0'
    );
\rx_data_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \rx_data_out[7]_i_1_n_0\,
      D => data_temp(1),
      Q => \^q\(6),
      R => '0'
    );
\rx_data_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => \rx_data_out[7]_i_1_n_0\,
      D => data_temp(0),
      Q => \^q\(7),
      R => '0'
    );
rx_in_last_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => D(0),
      Q => rx_in_last,
      R => '0'
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \next_state_reg_n_0_[0]\,
      Q => state_0(0),
      R => '0'
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \next_state_reg_n_0_[1]\,
      Q => state_0(1),
      R => '0'
    );
\substate[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \substate_reg__0\(0),
      O => \p_0_in__0\(0)
    );
\substate[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \substate_reg__0\(0),
      I1 => \substate_reg__0\(1),
      O => \p_0_in__0\(1)
    );
\substate[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \substate_reg__0\(2),
      I1 => \substate_reg__0\(0),
      I2 => \substate_reg__0\(1),
      O => \p_0_in__0\(2)
    );
\substate[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \substate_reg__0\(3),
      I1 => \substate_reg__0\(0),
      I2 => \substate_reg__0\(2),
      I3 => \substate_reg__0\(1),
      O => \p_0_in__0\(3)
    );
\substate[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \substate_reg__0\(4),
      I1 => \substate_reg__0\(3),
      I2 => \substate_reg__0\(0),
      I3 => \substate_reg__0\(2),
      I4 => \substate_reg__0\(1),
      O => \substate[4]_i_1__0_n_0\
    );
\substate[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BEFFFFBE"
    )
        port map (
      I0 => \bit_index[2]_i_2_n_0\,
      I1 => state_0(0),
      I2 => \next_state_reg_n_0_[0]\,
      I3 => state_0(1),
      I4 => \next_state_reg_n_0_[1]\,
      O => \substate[5]_i_1__0_n_0\
    );
\substate[5]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \substate_reg__0\(3),
      I1 => \substate_reg__0\(0),
      I2 => \substate_reg__0\(2),
      I3 => \substate_reg__0\(1),
      I4 => \substate_reg__0\(4),
      I5 => \substate_reg__0\(5),
      O => \p_0_in__0\(5)
    );
\substate_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \p_0_in__0\(0),
      Q => \substate_reg__0\(0),
      R => \substate[5]_i_1__0_n_0\
    );
\substate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \p_0_in__0\(1),
      Q => \substate_reg__0\(1),
      R => \substate[5]_i_1__0_n_0\
    );
\substate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \p_0_in__0\(2),
      Q => \substate_reg__0\(2),
      R => \substate[5]_i_1__0_n_0\
    );
\substate_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \p_0_in__0\(3),
      Q => \substate_reg__0\(3),
      R => \substate[5]_i_1__0_n_0\
    );
\substate_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \substate[4]_i_1__0_n_0\,
      Q => \substate_reg__0\(4),
      R => \substate[5]_i_1__0_n_0\
    );
\substate_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \p_0_in__0\(5),
      Q => \substate_reg__0\(5),
      R => \substate[5]_i_1__0_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_tx is
  port (
    tx_out_hw_OBUF : out STD_LOGIC;
    \next_state_reg[0]\ : out STD_LOGIC;
    CLK : in STD_LOGIC;
    tx_start_signal : in STD_LOGIC
  );
end uart_tx;

architecture STRUCTURE of uart_tx is
  signal \FSM_sequential_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_2_n_0\ : STD_LOGIC;
  signal \bit_index[0]_i_1_n_0\ : STD_LOGIC;
  signal \bit_index[1]_i_1_n_0\ : STD_LOGIC;
  signal \bit_index[2]_i_1_n_0\ : STD_LOGIC;
  signal \bit_index_reg_n_0_[0]\ : STD_LOGIC;
  signal \bit_index_reg_n_0_[1]\ : STD_LOGIC;
  signal \bit_index_reg_n_0_[2]\ : STD_LOGIC;
  signal \next_state__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal state_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of state_reg : signal is "yes";
  signal \substate[5]_i_1_n_0\ : STD_LOGIC;
  signal \substate_reg__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal tx_out_signal_i : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "s_start:01,s_bits:10,s_stop:11,s_wait:00";
  attribute KEEP : string;
  attribute KEEP of \FSM_sequential_state_reg[0]\ : label is "yes";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "s_start:01,s_bits:10,s_stop:11,s_wait:00";
  attribute KEEP of \FSM_sequential_state_reg[1]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \substate[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \substate[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \substate[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \substate[4]_i_1\ : label is "soft_lutpair12";
begin
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"08F008F00FFF00F0"
    )
        port map (
      I0 => \bit_index_reg_n_0_[2]\,
      I1 => \FSM_sequential_state[0]_i_2_n_0\,
      I2 => state_reg(0),
      I3 => \FSM_sequential_state[1]_i_2_n_0\,
      I4 => tx_start_signal,
      I5 => state_reg(1),
      O => \next_state__0\(0)
    );
\FSM_sequential_state[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \bit_index_reg_n_0_[0]\,
      I1 => \bit_index_reg_n_0_[1]\,
      O => \FSM_sequential_state[0]_i_2_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => state_reg(1),
      I1 => \FSM_sequential_state[1]_i_2_n_0\,
      I2 => state_reg(0),
      O => \next_state__0\(1)
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => \substate_reg__0\(5),
      I1 => \substate_reg__0\(4),
      I2 => \substate_reg__0\(2),
      I3 => \substate_reg__0\(0),
      I4 => \substate_reg__0\(1),
      I5 => \substate_reg__0\(3),
      O => \FSM_sequential_state[1]_i_2_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \next_state__0\(0),
      Q => state_reg(0),
      R => '0'
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \next_state__0\(1),
      Q => state_reg(1),
      R => '0'
    );
\bit_index[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0060"
    )
        port map (
      I0 => \bit_index_reg_n_0_[0]\,
      I1 => \FSM_sequential_state[1]_i_2_n_0\,
      I2 => state_reg(1),
      I3 => state_reg(0),
      O => \bit_index[0]_i_1_n_0\
    );
\bit_index[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006A00"
    )
        port map (
      I0 => \bit_index_reg_n_0_[1]\,
      I1 => \FSM_sequential_state[1]_i_2_n_0\,
      I2 => \bit_index_reg_n_0_[0]\,
      I3 => state_reg(1),
      I4 => state_reg(0),
      O => \bit_index[1]_i_1_n_0\
    );
\bit_index[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000006AAA0000"
    )
        port map (
      I0 => \bit_index_reg_n_0_[2]\,
      I1 => \FSM_sequential_state[1]_i_2_n_0\,
      I2 => \bit_index_reg_n_0_[0]\,
      I3 => \bit_index_reg_n_0_[1]\,
      I4 => state_reg(1),
      I5 => state_reg(0),
      O => \bit_index[2]_i_1_n_0\
    );
\bit_index_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \bit_index[0]_i_1_n_0\,
      Q => \bit_index_reg_n_0_[0]\,
      R => '0'
    );
\bit_index_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \bit_index[1]_i_1_n_0\,
      Q => \bit_index_reg_n_0_[1]\,
      R => '0'
    );
\bit_index_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => \bit_index[2]_i_1_n_0\,
      Q => \bit_index_reg_n_0_[2]\,
      R => '0'
    );
\next_state[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state_reg(1),
      I1 => state_reg(0),
      O => \next_state_reg[0]\
    );
\substate[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \substate_reg__0\(0),
      O => p_0_in(0)
    );
\substate[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \substate_reg__0\(0),
      I1 => \substate_reg__0\(1),
      O => p_0_in(1)
    );
\substate[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \substate_reg__0\(2),
      I1 => \substate_reg__0\(0),
      I2 => \substate_reg__0\(1),
      O => p_0_in(2)
    );
\substate[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \substate_reg__0\(3),
      I1 => \substate_reg__0\(1),
      I2 => \substate_reg__0\(0),
      I3 => \substate_reg__0\(2),
      O => p_0_in(3)
    );
\substate[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \substate_reg__0\(4),
      I1 => \substate_reg__0\(2),
      I2 => \substate_reg__0\(0),
      I3 => \substate_reg__0\(1),
      I4 => \substate_reg__0\(3),
      O => p_0_in(4)
    );
\substate[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABAA"
    )
        port map (
      I0 => \FSM_sequential_state[1]_i_2_n_0\,
      I1 => state_reg(1),
      I2 => state_reg(0),
      I3 => tx_start_signal,
      O => \substate[5]_i_1_n_0\
    );
\substate[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \substate_reg__0\(3),
      I1 => \substate_reg__0\(1),
      I2 => \substate_reg__0\(0),
      I3 => \substate_reg__0\(2),
      I4 => \substate_reg__0\(4),
      I5 => \substate_reg__0\(5),
      O => p_0_in(5)
    );
\substate_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_0_in(0),
      Q => \substate_reg__0\(0),
      R => \substate[5]_i_1_n_0\
    );
\substate_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_0_in(1),
      Q => \substate_reg__0\(1),
      R => \substate[5]_i_1_n_0\
    );
\substate_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_0_in(2),
      Q => \substate_reg__0\(2),
      R => \substate[5]_i_1_n_0\
    );
\substate_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_0_in(3),
      Q => \substate_reg__0\(3),
      R => \substate[5]_i_1_n_0\
    );
\substate_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_0_in(4),
      Q => \substate_reg__0\(4),
      R => \substate[5]_i_1_n_0\
    );
\substate_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => CLK,
      CE => '1',
      D => p_0_in(5),
      Q => \substate_reg__0\(5),
      R => \substate[5]_i_1_n_0\
    );
tx_out_signal_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => state_reg(1),
      I1 => state_reg(0),
      O => tx_out_signal_i
    );
tx_out_signal_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => CLK,
      CE => '1',
      D => tx_out_signal_i,
      Q => tx_out_hw_OBUF,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity clock_generator is
  port (
    \q_reg[4]\ : out STD_LOGIC;
    clk_in_hw_IBUF_BUFG : in STD_LOGIC
  );
end clock_generator;

architecture STRUCTURE of clock_generator is
  signal clk : STD_LOGIC;
begin
binary_counter0: entity work.binary_counter
     port map (
      CLK => clk,
      \q_reg[4]_0\ => \q_reg[4]\
    );
clock_module_TE02770: entity work.clock_module_TE0277
     port map (
      CLK => clk,
      clk_in_hw_IBUF_BUFG => clk_in_hw_IBUF_BUFG
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity uart_module is
  port (
    tx_out_hw_OBUF : out STD_LOGIC;
    running : out STD_LOGIC;
    \next_state_reg[4]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \address_signal_reg[4]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \address_signal_reg[7]\ : out STD_LOGIC;
    \address_signal_reg[5]\ : out STD_LOGIC;
    \address_signal_reg[6]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    data_signal : out STD_LOGIC_VECTOR ( 1 downto 0 );
    address_signal_0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    CLK : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    state : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \state_reg[2]\ : in STD_LOGIC;
    tx_start_signal : in STD_LOGIC;
    \state_reg[0]\ : in STD_LOGIC
  );
end uart_module;

architecture STRUCTURE of uart_module is
  signal uart_tx0_n_1 : STD_LOGIC;
begin
uart_rx0: entity work.uart_rx
     port map (
      CLK => CLK,
      D(0) => D(0),
      E(0) => E(0),
      \FSM_sequential_state_reg[1]\ => uart_tx0_n_1,
      Q(7 downto 0) => Q(7 downto 0),
      address_signal_0(1 downto 0) => address_signal_0(1 downto 0),
      \address_signal_reg[4]\ => \address_signal_reg[4]\,
      \address_signal_reg[5]\ => \address_signal_reg[5]\,
      \address_signal_reg[6]\ => \address_signal_reg[6]\,
      \address_signal_reg[7]\ => \address_signal_reg[7]\,
      data_signal(1 downto 0) => data_signal(1 downto 0),
      \next_state_reg[4]\(4 downto 0) => \next_state_reg[4]\(4 downto 0),
      running => running,
      state(4 downto 0) => state(4 downto 0),
      \state_reg[0]_0\ => \state_reg[0]\,
      \state_reg[2]\ => \state_reg[2]\
    );
uart_tx0: entity work.uart_tx
     port map (
      CLK => CLK,
      \next_state_reg[0]\ => uart_tx0_n_1,
      tx_out_hw_OBUF => tx_out_hw_OBUF,
      tx_start_signal => tx_start_signal
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bus_master is
  port (
    tx_out_hw_OBUF : out STD_LOGIC;
    running : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \data_out_reg[7]\ : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \data_out_reg[0]\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \q_reg[4]\ : out STD_LOGIC;
    clk_in_hw_IBUF_BUFG : in STD_LOGIC;
    CLK : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    rx_done_signal : in STD_LOGIC
  );
end bus_master;

architecture STRUCTURE of bus_master is
  signal address_signal : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \address_signal[3]_i_1_n_0\ : STD_LOGIC;
  signal \address_signal[7]_i_1_n_0\ : STD_LOGIC;
  signal address_signal_0 : STD_LOGIC_VECTOR ( 5 downto 3 );
  signal data_bus_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \data_bus_out_signal[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_out[7]_i_4_n_0\ : STD_LOGIC;
  signal data_signal : STD_LOGIC_VECTOR ( 4 downto 1 );
  signal \data_signal[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_signal[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_signal_reg_n_0_[0]\ : STD_LOGIC;
  signal \data_signal_reg_n_0_[1]\ : STD_LOGIC;
  signal \data_signal_reg_n_0_[2]\ : STD_LOGIC;
  signal \data_signal_reg_n_0_[3]\ : STD_LOGIC;
  signal \data_signal_reg_n_0_[4]\ : STD_LOGIC;
  signal \data_signal_reg_n_0_[5]\ : STD_LOGIC;
  signal \data_signal_reg_n_0_[6]\ : STD_LOGIC;
  signal \data_signal_reg_n_0_[7]\ : STD_LOGIC;
  signal next_state : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \next_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \next_state[1]_i_6_n_0\ : STD_LOGIC;
  signal \next_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \next_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \next_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \next_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \next_state_reg_n_0_[4]\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal tx_start_signal : STD_LOGIC;
  signal tx_start_signal_i_1_n_0 : STD_LOGIC;
  signal uart_module0_n_16 : STD_LOGIC;
  signal uart_module0_n_17 : STD_LOGIC;
  signal uart_module0_n_18 : STD_LOGIC;
  signal uart_module0_n_19 : STD_LOGIC;
  signal uart_module0_n_3 : STD_LOGIC;
  signal uart_module0_n_4 : STD_LOGIC;
  signal uart_module0_n_7 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \data_out[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \data_out[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \data_out[3]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \data_out[5]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \data_out[6]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \data_out[7]_i_2\ : label is "soft_lutpair14";
begin
\address_bus_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_done_signal,
      CE => uart_module0_n_19,
      D => address_signal(0),
      Q => \data_out_reg[0]\(0),
      R => '0'
    );
\address_bus_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_done_signal,
      CE => uart_module0_n_19,
      D => address_signal(1),
      Q => \data_out_reg[0]\(1),
      R => '0'
    );
\address_bus_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_done_signal,
      CE => uart_module0_n_19,
      D => address_signal(2),
      Q => \data_out_reg[0]\(2),
      R => '0'
    );
\address_bus_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_done_signal,
      CE => uart_module0_n_19,
      D => address_signal(3),
      Q => \data_out_reg[0]\(3),
      R => '0'
    );
\address_bus_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_done_signal,
      CE => uart_module0_n_19,
      D => address_signal(4),
      Q => \data_out_reg[0]\(4),
      R => '0'
    );
\address_bus_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_done_signal,
      CE => uart_module0_n_19,
      D => address_signal(5),
      Q => \data_out_reg[0]\(5),
      R => '0'
    );
\address_bus_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_done_signal,
      CE => uart_module0_n_19,
      D => address_signal(6),
      Q => \data_out_reg[0]\(6),
      R => '0'
    );
\address_bus_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_done_signal,
      CE => uart_module0_n_19,
      D => address_signal(7),
      Q => \data_out_reg[0]\(7),
      R => '0'
    );
\address_signal[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => state(4),
      I1 => state(2),
      I2 => state(3),
      I3 => state(1),
      I4 => state(0),
      O => \address_signal[3]_i_1_n_0\
    );
\address_signal[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => state(1),
      I1 => state(4),
      I2 => state(3),
      I3 => state(0),
      I4 => state(2),
      O => \address_signal[7]_i_1_n_0\
    );
\address_signal_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_done_signal,
      CE => address_signal_0(3),
      D => uart_module0_n_7,
      Q => address_signal(0),
      R => \address_signal[3]_i_1_n_0\
    );
\address_signal_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_done_signal,
      CE => address_signal_0(3),
      D => uart_module0_n_17,
      Q => address_signal(1),
      R => \address_signal[3]_i_1_n_0\
    );
\address_signal_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_done_signal,
      CE => address_signal_0(3),
      D => uart_module0_n_18,
      Q => address_signal(2),
      R => \address_signal[3]_i_1_n_0\
    );
\address_signal_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_done_signal,
      CE => address_signal_0(3),
      D => uart_module0_n_16,
      Q => address_signal(3),
      R => \address_signal[3]_i_1_n_0\
    );
\address_signal_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_done_signal,
      CE => address_signal_0(5),
      D => uart_module0_n_7,
      Q => address_signal(4),
      R => \address_signal[7]_i_1_n_0\
    );
\address_signal_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_done_signal,
      CE => address_signal_0(5),
      D => uart_module0_n_17,
      Q => address_signal(5),
      R => \address_signal[7]_i_1_n_0\
    );
\address_signal_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_done_signal,
      CE => address_signal_0(5),
      D => uart_module0_n_18,
      Q => address_signal(6),
      R => \address_signal[7]_i_1_n_0\
    );
\address_signal_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_done_signal,
      CE => address_signal_0(5),
      D => uart_module0_n_16,
      Q => address_signal(7),
      R => \address_signal[7]_i_1_n_0\
    );
clock_generator0: entity work.clock_generator
     port map (
      clk_in_hw_IBUF_BUFG => clk_in_hw_IBUF_BUFG,
      \q_reg[4]\ => \q_reg[4]\
    );
\data_bus_out_signal[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => state(4),
      I1 => state(2),
      I2 => state(3),
      I3 => state(0),
      I4 => state(1),
      O => \data_bus_out_signal[7]_i_1_n_0\
    );
\data_bus_out_signal_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_done_signal,
      CE => \data_bus_out_signal[7]_i_1_n_0\,
      D => \data_signal_reg_n_0_[0]\,
      Q => data_bus_out(0),
      R => '0'
    );
\data_bus_out_signal_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_done_signal,
      CE => \data_bus_out_signal[7]_i_1_n_0\,
      D => \data_signal_reg_n_0_[1]\,
      Q => data_bus_out(1),
      R => '0'
    );
\data_bus_out_signal_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_done_signal,
      CE => \data_bus_out_signal[7]_i_1_n_0\,
      D => \data_signal_reg_n_0_[2]\,
      Q => data_bus_out(2),
      R => '0'
    );
\data_bus_out_signal_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_done_signal,
      CE => \data_bus_out_signal[7]_i_1_n_0\,
      D => \data_signal_reg_n_0_[3]\,
      Q => data_bus_out(3),
      R => '0'
    );
\data_bus_out_signal_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_done_signal,
      CE => \data_bus_out_signal[7]_i_1_n_0\,
      D => \data_signal_reg_n_0_[4]\,
      Q => data_bus_out(4),
      R => '0'
    );
\data_bus_out_signal_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_done_signal,
      CE => \data_bus_out_signal[7]_i_1_n_0\,
      D => \data_signal_reg_n_0_[5]\,
      Q => data_bus_out(5),
      R => '0'
    );
\data_bus_out_signal_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_done_signal,
      CE => \data_bus_out_signal[7]_i_1_n_0\,
      D => \data_signal_reg_n_0_[6]\,
      Q => data_bus_out(6),
      R => '0'
    );
\data_bus_out_signal_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_done_signal,
      CE => \data_bus_out_signal[7]_i_1_n_0\,
      D => \data_signal_reg_n_0_[7]\,
      Q => data_bus_out(7),
      R => '0'
    );
\data_out[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEBEEEB"
    )
        port map (
      I0 => \data_out[7]_i_4_n_0\,
      I1 => data_bus_out(3),
      I2 => data_bus_out(1),
      I3 => data_bus_out(2),
      I4 => data_bus_out(0),
      O => \data_out_reg[7]\(0)
    );
\data_out[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFAFFAE"
    )
        port map (
      I0 => \data_out[7]_i_4_n_0\,
      I1 => data_bus_out(0),
      I2 => data_bus_out(3),
      I3 => data_bus_out(1),
      I4 => data_bus_out(2),
      O => \data_out_reg[7]\(1)
    );
\data_out[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFEABBA"
    )
        port map (
      I0 => \data_out[7]_i_4_n_0\,
      I1 => data_bus_out(1),
      I2 => data_bus_out(2),
      I3 => data_bus_out(0),
      I4 => data_bus_out(3),
      O => \data_out_reg[7]\(2)
    );
\data_out[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFEEAEA"
    )
        port map (
      I0 => \data_out[7]_i_4_n_0\,
      I1 => data_bus_out(3),
      I2 => data_bus_out(1),
      I3 => data_bus_out(0),
      I4 => data_bus_out(2),
      O => \data_out_reg[7]\(3)
    );
\data_out[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAFBEAEA"
    )
        port map (
      I0 => \data_out[7]_i_4_n_0\,
      I1 => data_bus_out(2),
      I2 => data_bus_out(3),
      I3 => data_bus_out(0),
      I4 => data_bus_out(1),
      O => \data_out_reg[7]\(4)
    );
\data_out[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEEABE"
    )
        port map (
      I0 => \data_out[7]_i_4_n_0\,
      I1 => data_bus_out(2),
      I2 => data_bus_out(0),
      I3 => data_bus_out(1),
      I4 => data_bus_out(3),
      O => \data_out_reg[7]\(5)
    );
\data_out[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEEEFE"
    )
        port map (
      I0 => data_bus_out(0),
      I1 => \data_out[7]_i_4_n_0\,
      I2 => data_bus_out(2),
      I3 => data_bus_out(1),
      I4 => data_bus_out(3),
      O => \data_out_reg[7]\(6)
    );
\data_out[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => data_bus_out(6),
      I1 => data_bus_out(7),
      I2 => data_bus_out(4),
      I3 => data_bus_out(5),
      O => \data_out[7]_i_4_n_0\
    );
\data_signal[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => state(3),
      I3 => state(2),
      I4 => state(4),
      O => \data_signal[3]_i_1_n_0\
    );
\data_signal[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      I2 => state(3),
      I3 => state(2),
      I4 => state(4),
      O => \data_signal[7]_i_1_n_0\
    );
\data_signal_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_done_signal,
      CE => data_signal(1),
      D => uart_module0_n_7,
      Q => \data_signal_reg_n_0_[0]\,
      R => \data_signal[3]_i_1_n_0\
    );
\data_signal_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_done_signal,
      CE => data_signal(1),
      D => uart_module0_n_17,
      Q => \data_signal_reg_n_0_[1]\,
      R => \data_signal[3]_i_1_n_0\
    );
\data_signal_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_done_signal,
      CE => data_signal(1),
      D => uart_module0_n_18,
      Q => \data_signal_reg_n_0_[2]\,
      R => \data_signal[3]_i_1_n_0\
    );
\data_signal_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_done_signal,
      CE => data_signal(1),
      D => uart_module0_n_16,
      Q => \data_signal_reg_n_0_[3]\,
      R => \data_signal[3]_i_1_n_0\
    );
\data_signal_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_done_signal,
      CE => data_signal(4),
      D => uart_module0_n_7,
      Q => \data_signal_reg_n_0_[4]\,
      R => \data_signal[7]_i_1_n_0\
    );
\data_signal_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_done_signal,
      CE => data_signal(4),
      D => uart_module0_n_17,
      Q => \data_signal_reg_n_0_[5]\,
      R => \data_signal[7]_i_1_n_0\
    );
\data_signal_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_done_signal,
      CE => data_signal(4),
      D => uart_module0_n_18,
      Q => \data_signal_reg_n_0_[6]\,
      R => \data_signal[7]_i_1_n_0\
    );
\data_signal_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_done_signal,
      CE => data_signal(4),
      D => uart_module0_n_16,
      Q => \data_signal_reg_n_0_[7]\,
      R => \data_signal[7]_i_1_n_0\
    );
\next_state[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => state(2),
      I1 => state(3),
      O => \next_state[1]_i_4_n_0\
    );
\next_state[1]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => \next_state[1]_i_6_n_0\
    );
\next_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_done_signal,
      CE => '1',
      D => next_state(0),
      Q => \next_state_reg_n_0_[0]\,
      R => '0'
    );
\next_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_done_signal,
      CE => '1',
      D => next_state(1),
      Q => \next_state_reg_n_0_[1]\,
      R => '0'
    );
\next_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_done_signal,
      CE => '1',
      D => uart_module0_n_4,
      Q => \next_state_reg_n_0_[2]\,
      R => '0'
    );
\next_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_done_signal,
      CE => '1',
      D => uart_module0_n_3,
      Q => \next_state_reg_n_0_[3]\,
      R => '0'
    );
\next_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_done_signal,
      CE => '1',
      D => next_state(4),
      Q => \next_state_reg_n_0_[4]\,
      R => '0'
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_hw_IBUF_BUFG,
      CE => '1',
      D => \next_state_reg_n_0_[0]\,
      Q => state(0),
      R => '0'
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_hw_IBUF_BUFG,
      CE => '1',
      D => \next_state_reg_n_0_[1]\,
      Q => state(1),
      R => '0'
    );
\state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_hw_IBUF_BUFG,
      CE => '1',
      D => \next_state_reg_n_0_[2]\,
      Q => state(2),
      R => '0'
    );
\state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_hw_IBUF_BUFG,
      CE => '1',
      D => \next_state_reg_n_0_[3]\,
      Q => state(3),
      R => '0'
    );
\state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_in_hw_IBUF_BUFG,
      CE => '1',
      D => \next_state_reg_n_0_[4]\,
      Q => state(4),
      R => '0'
    );
tx_start_signal_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00001000"
    )
        port map (
      I0 => state(4),
      I1 => state(3),
      I2 => state(2),
      I3 => state(1),
      I4 => state(0),
      I5 => tx_start_signal,
      O => tx_start_signal_i_1_n_0
    );
tx_start_signal_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => rx_done_signal,
      CE => '1',
      D => tx_start_signal_i_1_n_0,
      Q => tx_start_signal,
      R => '0'
    );
uart_module0: entity work.uart_module
     port map (
      CLK => CLK,
      D(0) => D(0),
      E(0) => uart_module0_n_19,
      Q(7 downto 0) => Q(7 downto 0),
      address_signal_0(1) => address_signal_0(5),
      address_signal_0(0) => address_signal_0(3),
      \address_signal_reg[4]\ => uart_module0_n_7,
      \address_signal_reg[5]\ => uart_module0_n_17,
      \address_signal_reg[6]\ => uart_module0_n_18,
      \address_signal_reg[7]\ => uart_module0_n_16,
      data_signal(1) => data_signal(4),
      data_signal(0) => data_signal(1),
      \next_state_reg[4]\(4) => next_state(4),
      \next_state_reg[4]\(3) => uart_module0_n_3,
      \next_state_reg[4]\(2) => uart_module0_n_4,
      \next_state_reg[4]\(1 downto 0) => next_state(1 downto 0),
      running => running,
      state(4 downto 0) => state(4 downto 0),
      \state_reg[0]\ => \next_state[1]_i_6_n_0\,
      \state_reg[2]\ => \next_state[1]_i_4_n_0\,
      tx_out_hw_OBUF => tx_out_hw_OBUF,
      tx_start_signal => tx_start_signal
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity top is
  port (
    clk_in_hw : in STD_LOGIC;
    clk_out : out STD_LOGIC;
    tx_out_hw : out STD_LOGIC;
    rx_in_hw : in STD_LOGIC;
    segment_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rx_data_hw : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of top : entity is true;
end top;

architecture STRUCTURE of top is
  signal address_bus : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal bus_master0_n_10 : STD_LOGIC;
  signal bus_master0_n_11 : STD_LOGIC;
  signal bus_master0_n_12 : STD_LOGIC;
  signal bus_master0_n_13 : STD_LOGIC;
  signal bus_master0_n_14 : STD_LOGIC;
  signal bus_master0_n_15 : STD_LOGIC;
  signal bus_master0_n_16 : STD_LOGIC;
  signal clk_in_hw_IBUF : STD_LOGIC;
  signal clk_in_hw_IBUF_BUFG : STD_LOGIC;
  signal clk_out_OBUF : STD_LOGIC;
  signal clk_out_OBUF_BUFG : STD_LOGIC;
  signal running : STD_LOGIC;
  signal rx_data_hw_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rx_done_signal : STD_LOGIC;
  signal rx_in_hw_IBUF : STD_LOGIC;
  signal segment_out_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal tx_out_hw_OBUF : STD_LOGIC;
begin
bus_master0: entity work.bus_master
     port map (
      CLK => clk_out_OBUF_BUFG,
      D(0) => rx_in_hw_IBUF,
      Q(7 downto 0) => rx_data_hw_OBUF(7 downto 0),
      clk_in_hw_IBUF_BUFG => clk_in_hw_IBUF_BUFG,
      \data_out_reg[0]\(7 downto 0) => address_bus(7 downto 0),
      \data_out_reg[7]\(6) => bus_master0_n_10,
      \data_out_reg[7]\(5) => bus_master0_n_11,
      \data_out_reg[7]\(4) => bus_master0_n_12,
      \data_out_reg[7]\(3) => bus_master0_n_13,
      \data_out_reg[7]\(2) => bus_master0_n_14,
      \data_out_reg[7]\(1) => bus_master0_n_15,
      \data_out_reg[7]\(0) => bus_master0_n_16,
      \q_reg[4]\ => clk_out_OBUF,
      running => running,
      rx_done_signal => rx_done_signal,
      tx_out_hw_OBUF => tx_out_hw_OBUF
    );
clk_in_hw_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_in_hw_IBUF,
      O => clk_in_hw_IBUF_BUFG
    );
clk_in_hw_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk_in_hw,
      O => clk_in_hw_IBUF
    );
clk_out_OBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_out_OBUF,
      O => clk_out_OBUF_BUFG
    );
clk_out_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => clk_out_OBUF_BUFG,
      O => clk_out
    );
\next_state_reg[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => running,
      O => rx_done_signal
    );
\rx_data_hw_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => rx_data_hw_OBUF(0),
      O => rx_data_hw(0)
    );
\rx_data_hw_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => rx_data_hw_OBUF(1),
      O => rx_data_hw(1)
    );
\rx_data_hw_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => rx_data_hw_OBUF(2),
      O => rx_data_hw(2)
    );
\rx_data_hw_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => rx_data_hw_OBUF(3),
      O => rx_data_hw(3)
    );
\rx_data_hw_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => rx_data_hw_OBUF(4),
      O => rx_data_hw(4)
    );
\rx_data_hw_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => rx_data_hw_OBUF(5),
      O => rx_data_hw(5)
    );
\rx_data_hw_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => rx_data_hw_OBUF(6),
      O => rx_data_hw(6)
    );
\rx_data_hw_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => rx_data_hw_OBUF(7),
      O => rx_data_hw(7)
    );
rx_in_hw_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => rx_in_hw,
      O => rx_in_hw_IBUF
    );
segment_display0: entity work.segment_display
     port map (
      CLK => clk_out_OBUF_BUFG,
      D(6) => bus_master0_n_10,
      D(5) => bus_master0_n_11,
      D(4) => bus_master0_n_12,
      D(3) => bus_master0_n_13,
      D(2) => bus_master0_n_14,
      D(1) => bus_master0_n_15,
      D(0) => bus_master0_n_16,
      Q(7 downto 0) => segment_out_OBUF(7 downto 0),
      \address_bus_reg[7]\(7 downto 0) => address_bus(7 downto 0)
    );
\segment_out_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => segment_out_OBUF(0),
      O => segment_out(0)
    );
\segment_out_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => segment_out_OBUF(1),
      O => segment_out(1)
    );
\segment_out_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => segment_out_OBUF(2),
      O => segment_out(2)
    );
\segment_out_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => segment_out_OBUF(3),
      O => segment_out(3)
    );
\segment_out_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => segment_out_OBUF(4),
      O => segment_out(4)
    );
\segment_out_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => segment_out_OBUF(5),
      O => segment_out(5)
    );
\segment_out_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => segment_out_OBUF(6),
      O => segment_out(6)
    );
\segment_out_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => segment_out_OBUF(7),
      O => segment_out(7)
    );
tx_out_hw_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => tx_out_hw_OBUF,
      O => tx_out_hw
    );
end STRUCTURE;
