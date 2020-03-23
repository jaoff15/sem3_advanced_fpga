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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top_tb is
--generic (
--    ASCII_HASHTAG   : std_logic_vector(7 downto 0) := "00100011";
--    ASCII_COLON     : std_logic_vector(7 downto 0) := "00111010";
--    ASCII_CR        : std_logic_vector(7 downto 0) := "00001101";
    
--    ASCII_0         : std_logic_vector(7 downto 0) := "00110000";
--    ASCII_1         : std_logic_vector(7 downto 0) := "00110001";
--    ASCII_2         : std_logic_vector(7 downto 0) := "00110010";
--    ASCII_3         : std_logic_vector(7 downto 0) := "00110011";
--    ASCII_4         : std_logic_vector(7 downto 0) := "00110100";
--    ASCII_5         : std_logic_vector(7 downto 0) := "00110101";
--    ASCII_6         : std_logic_vector(7 downto 0) := "00110110";
--    ASCII_7         : std_logic_vector(7 downto 0) := "00110111";
--    ASCII_8         : std_logic_vector(7 downto 0) := "00111000";
--    ASCII_9         : std_logic_vector(7 downto 0) := "00111001";
--    ASCII_A         : std_logic_vector(7 downto 0) := "01000001";
--    ASCII_B         : std_logic_vector(7 downto 0) := "01000010";
--    ASCII_C         : std_logic_vector(7 downto 0) := "01000011";
--    ASCII_D         : std_logic_vector(7 downto 0) := "01000100";
--    ASCII_E         : std_logic_vector(7 downto 0) := "01000101";
--    ASCII_F         : std_logic_vector(7 downto 0) := "01000110";
--    ASCII_aa        : std_logic_vector(7 downto 0) := "01100001";
--    ASCII_bb        : std_logic_vector(7 downto 0) := "01100010";
--    ASCII_cc        : std_logic_vector(7 downto 0) := "01100011";
--    ASCII_dd        : std_logic_vector(7 downto 0) := "01100100";
--    ASCII_ee        : std_logic_vector(7 downto 0) := "01100101";
--    ASCII_ff        : std_logic_vector(7 downto 0) := "01100110";
    
--    ASCII_W         : std_logic_vector(7 downto 0) := "01010111";
--    ASCII_R         : std_logic_vector(7 downto 0) := "01010010";
--    ASCII_ww        : std_logic_vector(7 downto 0) := "01110111";
--    ASCII_rr        : std_logic_vector(7 downto 0) := "01110010"  
--);
end top_tb;
architecture Testbench of top_tb is

    constant ASCII_HASHTAG   : std_logic_vector(7 downto 0) := "00100011";
    constant ASCII_COLON     : std_logic_vector(7 downto 0) := "00111010"; -- 0x3A
    constant ASCII_CR        : std_logic_vector(7 downto 0) := "00001101"; -- 0x0D
    
    constant ASCII_0         : std_logic_vector(7 downto 0) := "00110000"; -- 0x30
    constant ASCII_1         : std_logic_vector(7 downto 0) := "00110001"; -- 0x31
    constant ASCII_2         : std_logic_vector(7 downto 0) := "00110010"; -- 0x32
    constant ASCII_3         : std_logic_vector(7 downto 0) := "00110011"; -- 0x33
    constant ASCII_4         : std_logic_vector(7 downto 0) := "00110100"; -- 0x34
    constant ASCII_5         : std_logic_vector(7 downto 0) := "00110101"; -- 0x35
    constant ASCII_6         : std_logic_vector(7 downto 0) := "00110110"; -- 0x36
    constant ASCII_7         : std_logic_vector(7 downto 0) := "00110111"; -- 0x37
    constant ASCII_8         : std_logic_vector(7 downto 0) := "00111000"; -- 0x38
    constant ASCII_9         : std_logic_vector(7 downto 0) := "00111001"; -- 0x39
    constant ASCII_A         : std_logic_vector(7 downto 0) := "01000001"; -- 0x41
    constant ASCII_B         : std_logic_vector(7 downto 0) := "01000010"; -- 0x42
    constant ASCII_C         : std_logic_vector(7 downto 0) := "01000011"; -- 0x43
    constant ASCII_D         : std_logic_vector(7 downto 0) := "01000100"; -- 0x44
    constant ASCII_E         : std_logic_vector(7 downto 0) := "01000101"; -- 0x45
    constant ASCII_F         : std_logic_vector(7 downto 0) := "01000110"; -- 0x46
    constant ASCII_aa        : std_logic_vector(7 downto 0) := "01100001"; -- 0x61
    constant ASCII_bb        : std_logic_vector(7 downto 0) := "01100010"; -- 0x62
    constant ASCII_cc        : std_logic_vector(7 downto 0) := "01100011"; -- 0x63
    constant ASCII_dd        : std_logic_vector(7 downto 0) := "01100100"; -- 0x64
    constant ASCII_ee        : std_logic_vector(7 downto 0) := "01100101"; -- 0x65
    constant ASCII_ff        : std_logic_vector(7 downto 0) := "01100110"; -- 0x66
    
    constant ASCII_W         : std_logic_vector(7 downto 0) := "01010111"; -- 0x57
    constant ASCII_R         : std_logic_vector(7 downto 0) := "01010010"; -- 0x52
    constant ASCII_ww        : std_logic_vector(7 downto 0) := "01110111"; -- 0x77
    constant ASCII_rr        : std_logic_vector(7 downto 0) := "01110010"; -- 0x72


    signal clk      : std_logic := '0';
    signal tx_start : std_logic := '0';  
    signal tx_out   : std_logic := '0';
    signal rx_in    : std_logic := '0';
    signal rx_data  : std_logic_vector(7 downto 0);
    

    component top is
    Port ( clk_in_hw   : in  STD_LOGIC := '0';   
           clk_out     : out std_logic := '0';
           tx_out_hw   : out std_logic := '0';
           rx_in_hw    : in  std_logic := '0';
           input_hw         : in  std_logic_vector(7 downto 0) := x"34";
       --    tx_active   : in  std_logic := '0';
        --tx_start : in  std_logic;
           rx_data_hw  : out std_logic_vector(7 downto 0) := (others => '0'));
    end component;
    
--        component uart_tx is
--        Port    ( CLK_IN    : in  STD_LOGIC := '0';
--                  ENABLE_IN : in  std_logic := '0';
--                  START_IN  : in  std_logic := '0';
--                  TX_BUSY   : out std_logic := '0';
--                  TX_OUT    : out std_logic := '0';
--                  TX_DONE   : out std_logic := '0';
--                  TX_DATA   : in std_logic_vector(7 downto 0) := (others => '0');
--                  RESET     : in std_logic  := '0'
--                  );
--    end component;
    
    signal bus_master_clk : std_logic := '0';
    
    
    signal tx_index         : integer range 0 to 20 := 0;
    signal tx_done          : std_logic := '0';
    signal tx_busy          : std_logic := '0';
    signal tx_start_signal  : std_logic := '1';
    signal tx_data          : std_logic_vector(7 downto 0) := (others => '0');
    signal tx_out_tb        : std_logic := '0';
    
    signal first : boolean := true;
    
begin

clk      <= not clk after 5ns;




stim_proc: process
begin
    

    
    


    wait;
end process;

test_tx : process
  variable D : std_logic_vector(7 downto 0) := "00000000";
  variable x :integer   := 0;
  variable done: boolean := false;
begin
    tx_start <= '0';
    wait for 2us;
    tx_start <= '1';
    tx_out_tb <= '1';
    loop
--        case x is
--            when 0      => D := ASCII_HASHTAG;
--            when 1      => D := ASCII_w;
--            when 2      => D := ASCII_COLON;
--            when 3      => D := ASCII_a;
--            when 4      => D := ASCII_B;
--            when 5      => D := ASCII_COLON;
--            when 6      => D := ASCII_0;
--            when 7      => D := ASCII_0;
--            when 8      => D := ASCII_0;
--            when 9      => D := ASCII_0;
--            when 10     => D := ASCII_0;
--            when 11     => D := ASCII_0;
--            when 12     => D := ASCII_0;
--            when 13     => D := ASCII_5;
--            when 14     => D := ascii_cr;
--            when others => D := (others => '0');
--                        done := true;
--        end case;
        
--        case x is
--            when 0      => D := ASCII_HASHTAG;
--            when 1      => D := ASCII_r;
--            when 2      => D := ASCII_COLON;
--            when 3      => D := ASCII_9;
--            when 4      => D := ASCII_8;
--            when 5      => D := ascii_cr;
--            when others => D := (others => '0');
--                           done := true;
--        end case;
        case x is
            when 0      => D := ASCII_HASHTAG;
            when 1      => D := ASCII_w;
            when 2      => D := ASCII_COLON;
            when 3      => D := ASCII_a;
            when 4      => D := ASCII_B;
            when 5      => D := ASCII_COLON;
            when 6      => D := ASCII_0;
            when 7      => D := ASCII_0;
            when 8      => D := ASCII_0;
            when 9      => D := ASCII_0;
            when 10     => D := ASCII_0;
            when 11     => D := ASCII_0;
            when 12     => D := ASCII_0;
            when 13     => D := ASCII_5;
            when 14     => D := ascii_cr;
            when 15     => D := ASCII_HASHTAG;
            when 16     => D := ASCII_r;
            when 17     => D := ASCII_COLON;
            when 18     => D := ASCII_9;
            when 19     => D := ASCII_8;
            when 20     => D := ascii_cr;
            when others => D := (others => '0');
                        done := true;
        end case;

        
        if done = false then
            wait for 8.68us;  -- Leave tx high for 6us
            tx_out_tb<='0';         -- Start bit
            
            for i in 0 to 7 loop
                wait for 8.68us;
                tx_out_tb<=D(i);
            END LOOP;
            
            wait for 8.68us;
        end if;
        tx_out_tb<='1';       -- stop bit
            
        
        wait for 10us;
        x:=x+1;
         
    end loop;
end process;

--rx_in <= tx_out;



             
-- Control output
--process (tx_done)
--begin
--    if rising_edge(tx_done) and tx_start_signal = '1' then
--       if tx_index < 14 and first = false then
--       --     tx_start_in <= '1';
--            tx_index <= tx_index + 1;
--       else 
--           tx_index <= 0;
--           first <= false;
----            tx_start_in <= '0';
--       end if;
--    end if;
--end process;

--rx_data_out <= rx_data_out_signal;


--with tx_index select
---- RX #r:AB\r
----   tx_data <= ASCII_HASHTAG when 0,
----              ASCII_r       when 1,
----              ASCII_COLON   when 2,
----              ASCII_a       when 3,
----              ASCII_B       when 4,
----              ascii_cr      when 5,    -- carrage return
----              "00000000"    when others;
---- TX #w:AB:89ABCDEF\r
--    tx_data <=  ASCII_HASHTAG when 0,
--                ASCII_w       when 1,
--                ASCII_COLON   when 2,
--                ASCII_a       when 3,
--                ASCII_B       when 4,
--                ASCII_COLON   when 5,
--                ASCII_0       when 6,
--                ASCII_0       when 7,
--                ASCII_0       when 8,
--                ASCII_0       when 9,
--                ASCII_0       when 10,
--                ASCII_0       when 11,
--                ASCII_0       when 12,
--                ASCII_5       when 13,
--                ascii_cr      when 14,    -- carrage return
--                "00000000"    when others;


--uart_tx0_tb:uart_tx 
--port map(    CLK_IN     => bus_master_clk,
--             ENABLE_IN  => '0',
--             START_IN   => tx_start,
--             TX_DATA    => TX_DATA,
--             TX_OUT     => tx_out_tb,
--             tx_done    => tx_done,
--             tx_busy    => tx_busy,
--             reset      => '0'
--);






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
