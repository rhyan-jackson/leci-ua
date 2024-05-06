library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity FreqDivider_Demo is
	port(CLOCK_50 : in std_logic;
		  SW		  : in std_logic_vector(1 downto 0);
		  HEX0     : out std_logic_vector(6 downto 0); -- 7-seg display
 		  LEDR     : out std_logic_vector(0 downto 0));
end FreqDivider_Demo;

architecture Behavioral of FreqDivider_Demo is
signal mainClk  : std_logic;
signal countVar : std_logic_vector(3 downto 0);
begin
	fd : work.FreqDivider(Behavioral)
			port map(clkIn    => CLOCK_50,
						reset    => SW(0),
						k        => x"017D7840",
						clkOut => mainClk
			);
			
	LEDR(0) <= mainClk;
	
	counter : work.CounterUpDown4(Behavioral)
			port map(clk	 => mainClk,
		            upDown => SW(1),
		            reset  => '0',
		            count  => countVar
			);
	
	sevenSeg : work.Bin7SegDecoder(Behavioral)
			port map(binInput => countVar,
						enable   => '1',
						decOut_n => HEX0(6 downto 0)
			);
	
end Behavioral;