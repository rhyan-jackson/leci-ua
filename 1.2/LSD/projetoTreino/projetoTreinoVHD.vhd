library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity projetoTreinoVHD is
	port(CLOCK_50	:	in std_logic;
		  SW	    :	in std_logic_vector(1 downto 0);
		  LEDR		:	out std_logic_vector(3 downto 0);
		  HEX0		:	out std_logic_vector(6 downto 0);
		  HEX1		:	out std_logic_vector(6 downto 0));
	end projetoTreinoVHD;

architecture Structural of projetoTreinoVHD is
	signal s_blinkLeds4Bit : std_logic_vector(3 downto 0);
    signal sync_sw : std_logic_vector(1 downto 0);
	signal s_blinkLeds_4hz: std_logic;
	signal s_pulseCounter_1hz: std_logic;
	signal count: std_logic_vector(3 downto 0);
    signal bcdHEX0 : std_logic_vector(3 downto 0);
    signal bcdHEX1 : std_logic_vector(3 downto 0);
	 
begin
	 process(CLOCK_50)
	 begin
		  if (rising_edge(CLOCK_50)) then
				sync_sw <= SW;
		  end if;
	 end process;

	 blinkForLeds_4hz : work.BlinkGenerator(Behavioral)
		  generic map(NUMBER_STEPS => 12_500_000)
		  port map(clk   => CLOCK_50,
					 reset  => '0',
					 blink  => s_blinkLeds_4hz
	 );
				
	 pulseForCounter_1hz : work.PulseGenerator(Behavioral)
		  generic map(MAX => 50_000_000)
		  port map(clk   => CLOCK_50,
					 reset  => '0',
					 pulse  => s_pulseCounter_1hz
	 );

	 counter : work.CounterUp12Enable(Behavioral)
		  port map(clk    => CLOCK_50,
					 reset  => sync_sw(0),
					 enable => s_pulseCounter_1hz,
					 count  => count
	 );
	 
	 binToBCD : work.Bin4ToBCD(Behavioral)
	 port map(bIn     => count,
				bcdLow  => bcdHEX0,
				bcdHigh => bcdHEX1
	 );

	 sevenSegHEX0: work.Bin7SegDecoder(Behavioral)
	 port map(binInput => bcdHEX0,
				enable   => '1',
				decOut_n => HEX0(6 downto 0)
	 );

	 sevenSegHEX1: work.Bin7SegDecoder(Behavioral)
	 port map(binInput => bcdHEX1,
				enable   => '1',
				decOut_n => HEX1(6 downto 0)
	 );
	 
	 s_blinkLeds4Bit <= (others => s_blinkLeds_4hz);
	 LEDR(3 downto 0) <= count and s_blinkLeds4Bit;
end Structural;