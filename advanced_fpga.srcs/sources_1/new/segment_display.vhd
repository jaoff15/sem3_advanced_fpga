----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/13/2020 02:33:11 PM
-- Design Name: 
-- Module Name: segment_display - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity segment_display is
    generic(    module_adr  :     std_logic_vector(7  downto 0)  := (others => '0'));
    Port (      clk_in      : in  std_logic                      := '0';
                reset_in    : in  std_logic                      := '0';
                adr_in      : in  STD_LOGIC_VECTOR (7  downto 0) := (others => '0');
                data_in     : in  STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
                data_out    : out STD_LOGIC_VECTOR (7  downto 0) := (others => '0'));
end segment_display;

architecture Behavioral of segment_display is
    signal data_out_signal : std_logic_vector(7 downto 0) := (others => '0');
begin

with data_in(7 downto 0) select
      data_out_signal <=  not("11101110") when x"00", --0
                          not("00101000") when x"01", --1
                          not("11001101") when x"02", --2
                          not("01101101") when x"03", --3
                          not("00101011") when x"04", --4
                          not("01100111") when x"05", --5
                          not("11100111") when x"06", --6
                          not("00101100") when x"07", --7
                          not("11101111") when x"08", --8
                          not("00101111") when x"09", --9
                          not("00000000") when others;


SYNC_PROC: process (clk_in)
begin
  if rising_edge(clk_in) then
     if adr_in = module_adr then
        data_out(7 downto 0) <= data_out_signal;
     end if;
  end if;
end process;


end Behavioral;
