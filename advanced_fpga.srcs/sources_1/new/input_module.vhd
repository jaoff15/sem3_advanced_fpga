----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/23/2020 04:12:31 PM
-- Design Name: 
-- Module Name: input_module - Behavioral
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

entity input_module is
generic(    module_adr  :     std_logic_vector(7  downto 0)  := (others => '0'));
Port (      clk_in      : in  std_logic                      := '0';
            reset_in    : in  std_logic                      := '0';
            adr_in      : in  STD_LOGIC_VECTOR (7  downto 0) := (others => '0');
            data_in     : in  STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
            data_out    : out STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
            hw_in       : in  STD_LOGIC_VECTOR (7  downto 0) := (others => '0');
            hw_out      : out STD_LOGIC_VECTOR (7  downto 0) := (others => '0')
            );
end input_module;

architecture Behavioral of input_module is
    signal data_out_signal    : STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
begin

data_out <= data_out_signal;


SYNC_PROC: process (clk_in)
begin

  if rising_edge(clk_in) then
     data_out_signal <= data_out_signal;
     if adr_in = module_adr then
        data_out_signal(7 downto 0) <= hw_in;
     end if;
  end if;
end process;

end Behavioral;
