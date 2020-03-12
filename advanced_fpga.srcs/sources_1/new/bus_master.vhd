----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/10/2020 02:39:56 PM
-- Design Name: 
-- Module Name: bus_master - Behavioral
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

entity bus_master is
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
    Port ( clk_in       : in    STD_LOGIC := '0';
           reset_in     : in    STD_LOGIC := '0';
           rx_in        : in    STD_LOGIC := '0';
           tx_out       : out   STD_LOGIC := '0';
           clk_out      : out   STD_LOGIC := '0';
           data         : inout STD_LOGIC_VECTOR (31 downto 0) := (others => '0');
           address      : out   STD_LOGIC_VECTOR (7 downto 0)  := (others => '0');
           rx_data_out  : out   std_logic_vector(7 downto 0)   := (others => '0')
           );
end bus_master;

architecture Behavioral of bus_master is
    
    

    signal clk_signal       : std_logic := '0';

    
    signal tx_done          : std_logic := '0';
    signal tx_busy          : std_logic := '0';
    --signal tx_out_signal    : std_logic := '0';
    signal tx_start_signal  : std_logic := '0';
    signal tx_data          : std_logic_vector(7 downto 0) := (others => '0');
    
    --signal tx_start_in        : std_logic := '1';
    --signal tx_start_counter   : std_logic_vector(24 downto 0) := (others => '0');

    signal rx_data_out_signal      : std_logic_vector(7 downto 0);
    signal rx_done_signal   : std_logic;
    signal tx_index         : integer range 0 to 10 := 0;
    
    
    signal address_signal  : std_logic_vector(7 downto 0)  := (others => '0');
    signal data_signal     : std_logic_vector(31 downto 0) := (others => '0');
       


    component uart_module is
        Port    ( CLK_IN    : in  STD_LOGIC := '0';
                  ENABLE_IN : in  std_logic := '0';
                  TX_START  : in  std_logic := '0';
                  TX_OUT    : out std_logic := '0';
                  tx_done   : out std_logic := '0';
                  TX_BUSY   : out std_logic := '0';
                  RX_IN     : in  std_logic := '0';
                  rx_done   : out std_logic := '0';
                  TX_DATA   : in  std_logic_vector(7 downto 0) := (others => '0');
                  rx_data   : out std_logic_vector(7 downto 0) := (others => '0'));
    end component;
    
    component clock_generator is
    Port ( CLK_IN  : in STD_LOGIC  := '0';
           CLK_OUT : out STD_LOGIC := '0');
    end component;
    
    
    
    type T_STATE is (S_WAIT, S1, 
    S2_R, S3_R, S4_R, S5_R, S_Read, 
    S2_W, S3_W, S4_W, S5_W, S6_W, S7_W, S8_W, S9_W, S10_W, S11_W, S12_W, S13_W, S_Write);
    signal state, next_state : T_STATE;

    signal rxDataIsNumb  : boolean := false;
    signal rxDataNumb    : std_logic_vector(3 downto 0) := (others => '0');
    signal rxDataIsWrite : boolean := false;
    signal rxDataIsRead  : boolean := false;


--    signal bit_index : integer range 0 to 7 := 0;
    
    
begin


with rx_data_out_signal select
    rxDataIsNumb <= true when ASCII_0,
                    true when ASCII_1,
                    true when ASCII_2,
                    true when ASCII_3,
                    true when ASCII_4,
                    true when ASCII_5,
                    true when ASCII_6,
                    true when ASCII_7,
                    true when ASCII_8,
                    true when ASCII_9,
                    true when ASCII_a,
                    true when ASCII_b,
                    true when ASCII_c,
                    true when ASCII_d,
                    true when ASCII_e,
                    true when ASCII_f,
                    true when ASCII_aa,
                    true when ASCII_bb,
                    true when ASCII_cc,
                    true when ASCII_dd,
                    true when ASCII_ee,
                    true when ASCII_ff,
                    false when others;


with rx_data_out_signal select
    rxDataNumb <=   "0000" when ASCII_0,
                    "0001" when ASCII_1,
                    "0010" when ASCII_2,
                    "0011" when ASCII_3,
                    "0100" when ASCII_4,
                    "0101" when ASCII_5,
                    "0110" when ASCII_6,
                    "0111" when ASCII_7,
                    "1000" when ASCII_8,
                    "1001" when ASCII_9,
                    "1010" when ASCII_a,
                    "1011" when ASCII_b,
                    "1100" when ASCII_c,
                    "1101" when ASCII_d,
                    "1110" when ASCII_e,
                    "1111" when ASCII_f,
                    "1010" when ASCII_aa,
                    "1011" when ASCII_bb,
                    "1100" when ASCII_cc,
                    "1101" when ASCII_dd,
                    "1110" when ASCII_ee,
                    "1111" when ASCII_ff,
                    "0000" when others;

with rx_data_out_signal select
    rxDataIsWrite <=  true  when ASCII_w,
                      true  when ASCII_ww,
                      false when others;

with rx_data_out_signal select
    rxDataIsRead <=   true  when ASCII_r,
                      true  when ASCII_rr,
                      false when others;


SYNC_PROC: process (clk_in)
begin
  if rising_edge(clk_in) then
     if (reset_in = '1') then
        state         <= S_WAIT;
--        tx_out_signal <= '1';
     else
        state         <= next_state;
--        tx_out_signal <= tx_out_signal_i;
     end if;
    
  end if;
end process;

----MOORE State-Machine - Outputs based on state only
--OUTPUT_DECODE: process (state, substate)
--begin
--  if state = S_WAIT then 
----    running         <= '0';
--  elsif state = S_STOP then
----    running         <= '1';
----    tx_out_signal_i <= '1';
--  elsif state = S_BITS then
----    running         <= '1';
----    tx_out_signal_i <= tx_data_snapshot(bit_index);
--  elsif state = S_START then
----    running         <= '1';
----    tx_out_signal_i <= '0';
--  else
----    running         <= '0';
----    tx_out_signal_i <= '1';
--  end if;
--end process;


NEXT_STATE_DECODE: process (rx_done_signal)
begin
    if rising_edge(rx_done_signal) then
      next_state <= state;  --default is to stay in current state
        case (state) is
            -- Wait
            when S_WAIT =>
                address_signal <= (others => '0');
                data_signal    <= (others => '0');
                -- Hashtag
                if rx_data_out_signal = ASCII_HASHTAG and tx_busy = '0' then
                    next_state <= S1;
                else 
                    next_state <= S_WAIT;
                end if;
            
            
            when S1 =>
                -- Read or Write
                if rxDataIsWrite = true then
                    next_state <= S2_w;
                elsif rxDataIsRead = true then
                    next_state <= S2_r;
                end if;
    
             -- ************** READ **************
            when S2_R =>
                -- ':'
                if rx_data_out_signal = ASCII_COLON then
                    next_state <= S3_R;
                else 
                    next_state <= S_WAIT;
                end if;
             
            when S3_R =>
                -- '0->F'
                if rxDataIsNumb = true then
                    next_state <= S4_R;
                    address_signal(7 downto 4) <= rxDataNumb;
                else 
                    next_state <= S_WAIT;
                end if;
                
            when S4_R =>
                -- '0->F'
                if rxDataIsNumb = true then
                    next_state <= S5_R;
                    address_signal(3 downto 0) <= rxDataNumb;
                else 
                    next_state <= S_WAIT;
                end if;
                
            when S5_R =>
                -- 'CR'
                if rx_data_out_signal = ASCII_CR then
                    next_state      <= S_Read;
                    --tx_data         <= "10101010";
                    --tx_start_signal <= '1';
                else 
                    next_state <= S_WAIT;
                end if;
                
            -- Read
            when S_Read =>
                next_state <= S_WAIT;
                
            -- ************** WRITE **************
            when S2_W =>
                -- ':'
                if rx_data_out_signal = ASCII_COLON then
                    next_state <= S3_W;
                else 
                    next_state <= S_WAIT;
                end if;
                
            when S3_W =>
                -- '0->F'
                if rxDataIsNumb = true then
                    next_state <= S4_W;
                    address_signal(7 downto 4) <= rxDataNumb;
                else 
                    next_state <= S_WAIT;
                end if;
            
            when S4_W =>
                -- '0->F'
                if rxDataIsNumb = true then
                    next_state <= S5_W;
                    address_signal(3 downto 0) <= rxDataNumb;
                else 
                    next_state <= S_WAIT;
                end if;
                
            when S5_W =>
                -- ':'
                if rx_data_out_signal = ASCII_COLON then
                    next_state <= S6_W;
                else 
                    next_state <= S_WAIT;
                end if;
                
            when S6_W =>
                -- Byte 7
                -- '0->F'
                if rxDataIsNumb = true then
                    next_state <= S7_W;
                    data_signal(31 downto 28) <= rxDataNumb;
                else 
                    next_state <= S_WAIT;
                end if;
            
            when S7_W =>
                -- Byte 6
                -- '0->F'
                if rxDataIsNumb = true then
                    next_state <= S8_W;
                    data_signal(27 downto 24) <= rxDataNumb;
                else 
                    next_state <= S_WAIT;
                end if;
            
            when S8_W =>
                -- Byte 5
                -- '0->F'
                if rxDataIsNumb = true then
                    next_state <= S9_W;
                    data_signal(23 downto 20) <= rxDataNumb;
                else 
                    next_state <= S_WAIT;
                end if;
            
            when S9_W =>
                -- Byte 4
                -- '0->F'
                if rxDataIsNumb = true then
                    next_state <= S10_W;
                    data_signal(19 downto 16) <= rxDataNumb;
                else 
                    next_state <= S_WAIT;
                end if;
                
            when S10_W =>
                -- Byte 3
                -- '0->F'
                if rxDataIsNumb = true then
                    next_state <= S11_W;
                    data_signal(15 downto 12) <= rxDataNumb;
                else 
                    next_state <= S_WAIT;
                end if;
                
            when S11_W =>
                -- Byte 2
                -- '0->F'
                if rxDataIsNumb = true then
                    next_state <= S12_W;
                    data_signal(11 downto 8) <= rxDataNumb;
                else 
                    next_state <= S_WAIT;
                end if;
                
            when S12_W =>
                -- Byte 1
                -- '0->F'
                if rxDataIsNumb = true then
                    next_state <= S13_W;
                    data_signal(7 downto 4) <= rxDataNumb;
                else 
                    next_state <= S_WAIT;
                end if;
                
            when S13_W =>
                -- Byte 0
                -- '0->F'
                if rxDataIsNumb = true then
                    next_state <= S_Write;
                    data_signal(3 downto 0) <= rxDataNumb;
                else 
                    next_state <= S_WAIT;
                end if;
                
            when S_Write =>
                next_state <= S_WAIT;
                
             when others =>
                next_state <= S_WAIT;
        end case;
  end if;
end process;




             
---- Control output
--process (tx_done)
--begin
--    if rising_edge(tx_done) and tx_start_signal = '1' then
--       if tx_index < 8 then
--       --     tx_start_in <= '1';
--            tx_index <= tx_index + 1;
--       else 
--           tx_index <= 0;
----            tx_start_in <= '0';
--       end if;
--    end if;
--end process;

--rx_data_out <= rx_data_out_signal;

---- Dec: 87 104 97 116 116 117 112  92 110  
---- Hex: 57  68 61  74  74  75  70  5C  6E
--with tx_index select
--   tx_data <= "01010111" when 0,    -- W
--              "01101000" when 1,    -- h
--              "01100001" when 2,    -- a
--              "01110100" when 3,    -- t
--              "01110100" when 4,    -- t
--              "01110101" when 5,    -- u
--              "01110000" when 6,    -- p
--              "00001010" when 7,    -- linefeed
--              "00001101" when 8,    -- carrage return
--              "00000000" when others;



uart_module0:uart_module 
port map(
    CLK_IN      => clk_signal,  
    ENABLE_IN   => '1',
    TX_OUT      => tx_out,
    TX_START    => tx_start_signal,
    TX_DATA     => tx_data,
    tx_done     => tx_done,
    tx_busy     => tx_busy,
    RX_IN       => rx_in,
    rx_done     => rx_done_signal,
    rx_data     => rx_data_out_signal
);

clock_generator0:clock_generator 
port map(
    CLK_IN  => CLK_IN,   -- 100 MHz
    CLK_OUT => clk_signal
);

clk_out <= clk_signal;

end Behavioral;
