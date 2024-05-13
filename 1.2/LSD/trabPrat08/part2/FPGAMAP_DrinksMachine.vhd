library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity FPGAMAP_DrinksMachine is
	port(CLOCK_50    : in std_logic;
		  SW  : in std_logic_vector(1 downto 0);
		  KEY : in std_logic_vector(1 downto 0);
		  LEDG : out std_logic_vector(1 downto 0));
end FPGAMAP_DrinksMachine;

architecture Behavioral of FPGAMAP_DrinksMachine is
	signal s_clk_1hz : std_logic;
	signal s_dispenser_out : std_logic;
begin
   freq_1hz : work.FreqDivider(Behavioral)
			port map(
				clkIn => CLOCK_50,
				reset => '0',
				k => x"02FAF080",
				clkOut => s_clk_1hz
			);
	
	drink_machine : work.DrinksFSM(Behavioral)
			port map(
				clk       => not KEY(1),
				reset     => not KEY(0),
				sensor20  => SW(0),
				sensor50  => SW(1),
				dispenser => s_dispenser_out);
	
	timer1 : work.TimerN(Sequential)
	generic map(N => 50_000_000)
			port map(
				clk => CLOCK_50,
				reset => not KEY(0),
				enable => '1',
				start => s_dispenser_out,
				timerOut => LEDG(0));

	LEDG(1) <= s_clk_1hz;
	
end Behavioral;