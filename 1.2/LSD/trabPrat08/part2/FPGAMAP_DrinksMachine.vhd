library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity FPGAMAP_DrinksMachine is
	port(CLOCK_50    : in std_logic;
		  SW  : in std_logic_vector(1 downto 0);
		  KEY : in std_logic_vector(1 downto 0);
		  LEDG : out std_logic_vector(0 downto 0);
		  LEDR : out std_logic_vector(17 downto 17));
end FPGAMAP_DrinksMachine;

architecture Behavioral of FPGAMAP_DrinksMachine is
	signal s_clk_1hz : std_logic;
	signal s_dispenser_out : std_logic;
	signal s_debounced_sw0 : std_logic;
	signal s_debounced_sw1 : std_logic;
	signal s_debounced_key0 : std_logic;
	
begin
   freq_1hz : work.FreqDivider(Behavioral)
			port map(
				clkIn => CLOCK_50,
				reset => '0',
				k => x"02FAF080",
				clkOut => s_clk_1hz
			);
	
	debouncer_sw0 : work.DebounceUnit(Behavioral)
			generic map(kHzClkFreq		    => 50000,
							mSecMinInWidth	=> 100,
							inPolarity		=> '1',
							outPolarity		=> '1')
			port 	map(refClk		        => CLOCK_50,
							dirtyIn			=> SW(0),
							pulsedOut		=> s_debounced_sw0);

	debouncer_sw1 : work.DebounceUnit(Behavioral)
			generic map(kHzClkFreq		    => 50000,
							mSecMinInWidth	=> 100,
							inPolarity		=> '1',
							outPolarity		=> '1')
			port 	map(refClk		        => CLOCK_50,
							dirtyIn			=> SW(1),
							pulsedOut		=> s_debounced_sw1);
	
	debouncer_key0 : work.DebounceUnit(Behavioral)
			generic map(kHzClkFreq		    => 50000,
							mSecMinInWidth	=> 100,
							inPolarity		=> '0',
							outPolarity		=> '1')
			port 	map(refClk		        => CLOCK_50,
							dirtyIn			=> KEY(0),
							pulsedOut		=> s_debounced_key0);
	
	
	drink_machine : work.DrinksFSM(Behavioral)
			port map(
				clk       => CLOCK_50,
				reset     => s_debounced_key0,
				sensor20  => s_debounced_sw0,
				sensor50  => s_debounced_sw1,
				dispenser => s_dispenser_out);
	
	timer1 : work.TimerN(Sequential)
	generic map(N => 50_000_000)
			port map(
				clk => CLOCK_50,
				reset => s_debounced_key0,
				enable => '1',
				start => s_dispenser_out,
				timerOut => LEDG(0));

	LEDR(17) <= s_clk_1hz;
	
end Behavioral;