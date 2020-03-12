

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;


entity top is
    Port ( clk_in_hw        : in  STD_LOGIC := '0';
           clk_out          : out std_logic := '0';
           tx_out_hw        : out std_logic := '0';
           rx_in_hw         : in  std_logic := '0';
    --       tx_active            : in  std_logic := '0';
           segment_out      : out std_logic_vector(7 downto 0) := (others => '0');
           rx_data_hw       : out std_logic_vector(7 downto 0) := (others => '0'));
end top;

architecture Behavioral of top is
    
    component bus_master is
        Port ( clk_in       : in    STD_LOGIC := '0';
               reset_in     : in    STD_LOGIC := '0';
               rx_in        : in    STD_LOGIC := '0';
               tx_out       : out   STD_LOGIC := '0';
               clk_out      : out   STD_LOGIC := '0';
               data         : inout STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
               address      : out   STD_LOGIC_VECTOR (7 downto 0)  := (others => '0');
               rx_data_out  : out   std_logic_vector(7 downto 0)   := (others => '0')
               );
    end component;


    signal rx_data_out      : std_logic_vector(7 downto 0) := (others => '0');
    --signal bus_master_clk   : std_logic := '0';
    
    signal address_signal   : std_logic_vector(7  downto 0) := (others => '0');
    signal data_signal      : std_logic_vector(31 downto 0) := (others => '0');
    
begin



rx_data_hw <= rx_data_out;

with rx_data_out select
   segment_out <= not("11101110") when "00110000", --0
                  not("00101000") when "00110001", --1
                  not("11001101") when "00110010", --2
                  not("01101101") when "00110011", --3
                  not("00101011") when "00110100", --4
                  not("01100111") when "00110101", --5
                  not("11100111") when "00110110", --6
                  not("00101100") when "00110111", --7
                  not("11101111") when "00111000", --8
                  not("00101111") when "00111001", --9
                  not("00000000") when others;


--clk_in       : in    STD_LOGIC := '0';
--reset_in     : in    STD_LOGIC := '0';
--rx_in        : in    STD_LOGIC := '0';
--tx_out       : out   STD_LOGIC := '0';
--clk_out      : out   STD_LOGIC := '0';
--data         : inout STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
--address      : out   STD_LOGIC_VECTOR (7 downto 0)  := (others => '0');
--rx_data_out  : out   std_logic_vector(7 downto 0)   := (others => '0')


bus_master0:bus_master
port map(
    clk_in      => clk_in_hw,  
    reset_in    => '0',
    rx_in       => rx_in_hw,
    tx_out      => tx_out_hw,
    clk_out     => clk_out,
    data        => data_signal,
    address     => address_signal,
    rx_data_out => rx_data_out
);



--uart_module0:uart_module 
--port map(
--    CLK_IN      => clk_signal,  
--    ENABLE_IN   => '1',
--    TX_OUT      => tx_out_hw,
--    TX_START    => tx_active,
--    TX_DATA     => tx_data,
--    tx_done     => tx_done,
--    tx_busy     => tx_busy,
--    RX_IN       => rx_in_hw,
--    rx_done     => rx_done_signal,
--    rx_data     => rx_data_out
--);

--clock_generator0:clock_generator 
--port map(
--    CLK_IN  => CLK_IN_hw,   -- 100 MHz
--    CLK_OUT => clk_signal
--);


end Behavioral;
