----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/29/2020 03:52:06 PM
-- Design Name: 
-- Module Name: uart_rx - Behavioral
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
use ieee.numeric_std.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity uart_rx is
    Port    ( CLK_IN    : in  STD_LOGIC := '0';
              RESET_IN  : in  std_logic := '0';
              rx_in     : in  std_logic := '0';
              rx_busy   : out std_logic := '0';
              rx_done   : out std_logic := '0';
              rx_data   : out std_logic_vector(7 downto 0));
end uart_rx;

architecture Behavioral of uart_rx is

    signal substate         : integer range 0 to 32 := 0;
    signal substate_count   : integer range 0 to 32 := 32;

    signal rx_in_signal     : std_logic := '0';
    signal rx_in_last       : std_logic := '0';


    signal data_temp        : std_logic_vector(0 to 7) := (others => '0');
    signal rx_data_out      : std_logic_vector(7 downto 0) := (others => '0');
    signal running          : std_logic := '0';
   

    type T_STATE is (S_WAIT, S_START, S_BITS, S_STOP);
    signal state, next_state : T_STATE;

    signal bit_index : integer range 0 to 7 := 0;


begin

rx_busy         <= running;
rx_done         <= not running;

rx_in_signal    <= RX_IN;
rx_data         <= rx_data_out;



SYNC_PROC: process (clk_in)
begin
  if rising_edge(clk_in) then
  state         <= next_state;
     if (RESET_IN = '1') then
        state         <= S_WAIT;
     end if;
  end if;
end process;

--MOORE State-Machine - Outputs based on state only
OUTPUT_DECODE: process (clk_in) --, state, substate)
begin
  if rising_edge(clk_in) then
    data_temp       <= data_temp;
    running         <= '0';
    if state = S_WAIT then 
--        running         <= '0';
    elsif state = S_STOP then
        running     <= '1';
    elsif state = S_BITS then
        running     <= '1';
        if substate = substate_count/2-1 then
            data_temp(7-bit_index) <= rx_in_signal;
        end if;
    elsif state = S_START then
        running     <= '1';
    end if;
  end if;
end process;


NEXT_STATE_DECODE: process (clk_in)
begin
    if rising_edge(clk_in) then
--      next_state <= state;  --default is to stay in current state
      rx_data_out <= rx_data_out;
      next_state <= next_state;
      case (state) is
         
         when S_WAIT =>
            if rx_in_last = '1' and rx_in_signal = '0' then
                next_state <= S_START;
            end if;
         
         when S_START =>
            if substate = substate_count-1 then
               next_state <= S_BITS;
            end if;
         
         when S_BITS =>
            if bit_index = 7 and substate = substate_count-1 then
                next_state  <= S_STOP;
                rx_data_out <= data_temp;
             end if;
         
         when S_STOP =>
            if substate > 5 and rx_in_last = '1' and rx_in_signal = '0' then
                next_state <= S_START;
            elsif substate = substate_count-1 then
                 next_state <= S_WAIT; 
            end if;
         
         when others =>
            next_state <= S_WAIT;
      end case;
  end if;
end process;


process (clk_in) 
begin
    if rising_edge(clk_in) then
        substate <= substate + 1;
        if state /= next_state or substate = substate_count -1 then
            substate <= 0;
        end if;
    end if;
end process;


process (clk_in) 
begin
    if rising_edge(clk_in) then
        bit_index <= bit_index;
        if substate = substate_count - 1 and state = S_BITS and bit_index < 7 then
            bit_index <= bit_index + 1;
        elsif state /= s_BITS then
            bit_index <= 0;
        end if;      
    end if;
end process;


process (CLK_IN)
begin -- process
    if rising_edge(CLK_IN) then
        rx_in_last <= rx_in_signal;
    end if;
end process;


end Behavioral;



