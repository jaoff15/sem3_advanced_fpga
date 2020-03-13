----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/29/2020 04:35:10 PM
-- Design Name: 
-- Module Name: top_tb - Behavioral
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

entity top_tb is
generic (
    ASCII_HASHTAG   : std_logic_vector(7 downto 0) := "00100011";
    ASCII_COLON     : std_logic_vector(7 downto 0) := "00111010";
    ASCII_CR        : std_logic_vector(7 downto 0) := "00001101";
    
    ASCII_0         : std_logic_vector(7 downto 0) := "00110000";
    ASCII_1         : std_logic_vector(7 downto 0) := "00110001";
    ASCII_2         : std_logic_vector(7 downto 0) := "00110010";
    ASCII_3         : std_logic_vector(7 downto 0) := "00110011";
    ASCII_4         : std_logic_vector(7 downto 0) := "00110100";
    ASCII_5         : std_logic_vector(7 downto 0) := "00110101";
    ASCII_6         : std_logic_vector(7 downto 0) := "00110110";
    ASCII_7         : std_logic_vector(7 downto 0) := "00110111";
    ASCII_8         : std_logic_vector(7 downto 0) := "00111000";
    ASCII_9         : std_logic_vector(7 downto 0) := "00111001";
    ASCII_A         : std_logic_vector(7 downto 0) := "01000001";
    ASCII_B         : std_logic_vector(7 downto 0) := "01000010";
    ASCII_C         : std_logic_vector(7 downto 0) := "01000011";
    ASCII_D         : std_logic_vector(7 downto 0) := "01000100";
    ASCII_E         : std_logic_vector(7 downto 0) := "01000101";
    ASCII_F         : std_logic_vector(7 downto 0) := "01000110";
    ASCII_aa        : std_logic_vector(7 downto 0) := "01100001";
    ASCII_bb        : std_logic_vector(7 downto 0) := "01100010";
    ASCII_cc        : std_logic_vector(7 downto 0) := "01100011";
    ASCII_dd        : std_logic_vector(7 downto 0) := "01100100";
    ASCII_ee        : std_logic_vector(7 downto 0) := "01100101";
    ASCII_ff        : std_logic_vector(7 downto 0) := "01100110";
    
    ASCII_W         : std_logic_vector(7 downto 0) := "01010111";
    ASCII_R         : std_logic_vector(7 downto 0) := "01010010";
    ASCII_ww        : std_logic_vector(7 downto 0) := "01110111";
    ASCII_rr        : std_logic_vector(7 downto 0) := "01110010"  
);
end top_tb;
architecture Testbench of top_tb is

    signal clk      : std_logic := '0';
    signal tx_start : std_logic := '0';  
    signal tx_out   : std_logic;
    signal rx_in    : std_logic;
    signal rx_data  : std_logic_vector(7 downto 0);
    

    component top is
    Port ( clk_in_hw   : in  STD_LOGIC := '0';   
           clk_out     : out std_logic := '0';
           tx_out_hw   : out std_logic := '0';
           rx_in_hw    : in  std_logic := '0';
       --    tx_active   : in  std_logic := '0';
        --tx_start : in  std_logic;
           rx_data_hw  : out std_logic_vector(7 downto 0) := (others => '0'));
    end component;
    
        component uart_tx is
        Port    ( CLK_IN    : in  STD_LOGIC := '0';
                  ENABLE_IN : in  std_logic := '0';
                  START_IN  : in  std_logic := '0';
                  TX_BUSY   : out std_logic := '0';
                  TX_OUT    : out std_logic := '0';
                  TX_DONE   : out std_logic := '0';
                  TX_DATA   : in std_logic_vector(7 downto 0) := (others => '0');
                  RESET     : in std_logic  := '0'
                  );
    end component;
    
    signal bus_master_clk : std_logic := '0';
    
    
    signal tx_index         : integer range 0 to 20 := 0;
    signal tx_done          : std_logic := '0';
    signal tx_busy          : std_logic := '0';
    signal tx_start_signal  : std_logic := '1';
    signal tx_data          : std_logic_vector(7 downto 0) := (others => '0');
    signal tx_out_tb        : std_logic;
    
    signal first : boolean := true;
    
begin

clk      <= not clk after 5ns;




stim_proc: process
begin
    tx_start <= '0';
    wait for 2000 ns;
    tx_start <= '1';

    wait;
end process;



--rx_in <= tx_out;



             
-- Control output
process (tx_done)
begin
    if rising_edge(tx_done) and tx_start_signal = '1' then
       if tx_index < 14 and first = false then
       --     tx_start_in <= '1';
            tx_index <= tx_index + 1;
       else 
           tx_index <= 0;
           first <= false;
--            tx_start_in <= '0';
       end if;
    end if;
end process;

--rx_data_out <= rx_data_out_signal;


with tx_index select
-- RX #r:AB\r
--   tx_data <= ASCII_HASHTAG when 0,
--              ASCII_r       when 1,
--              ASCII_COLON   when 2,
--              ASCII_a       when 3,
--              ASCII_B       when 4,
--              ascii_cr      when 5,    -- carrage return
--              "00000000"    when others;
-- TX #w:AB:89ABCDEF\r
    tx_data <=  ASCII_HASHTAG when 0,
                ASCII_w       when 1,
                ASCII_COLON   when 2,
                ASCII_a       when 3,
                ASCII_B       when 4,
                ASCII_COLON   when 5,
                ASCII_0       when 6,
                ASCII_0       when 7,
                ASCII_0       when 8,
                ASCII_0       when 9,
                ASCII_0       when 10,
                ASCII_0       when 11,
                ASCII_0       when 12,
                ASCII_5       when 13,
                ascii_cr      when 14,    -- carrage return
                "00000000"    when others;


uart_tx0_tb:uart_tx 
port map(    CLK_IN     => bus_master_clk,
             ENABLE_IN  => '0',
             START_IN   => tx_start,
             TX_DATA    => TX_DATA,
             TX_OUT     => tx_out_tb,
             tx_done    => tx_done,
             tx_busy    => tx_busy,
             reset      => '0'
);






U1:top 
port map(
    CLK_IN_hw   => clk,
   clk_out     => bus_master_clk,
--    tx_active => tx_start,
    tx_out_hw   => tx_out,
    rx_in_hw    => tx_out_tb,
    rx_data_hw  => rx_data
);


end Testbench;
