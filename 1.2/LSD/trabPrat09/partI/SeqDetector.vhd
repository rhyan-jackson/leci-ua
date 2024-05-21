library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity SeqDetector is
	port(CLOCK_50    : in std_logic;
		  SW  : in std_logic_vector(1 downto 0);
		  LEDG : out std_logic_vector(0 downto 0);
		  LEDR : out std_logic_vector(0 downto 0));
end SeqDetector;

architecture Shell of SeqDetector is
	signal s_clk : std_logic;
	
begin
   divisor : work.ClkDividerN(Behavioral)
            generic map(divFactor => 250_000_000)
			port map(clkIn => CLOCK_50,
				     clkOut => s_clk);
	
	system_core : work.SeqDetFSM(MealyArch)
			port map(clk   => s_clk,
                     reset => SW(1),
                     xIn   => SW(0),
                     zOut  => LEDR(0));
	
    LEDG(0) <= s_clk;
end Shell;