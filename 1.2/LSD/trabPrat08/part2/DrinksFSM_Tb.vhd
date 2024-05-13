library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity DrinksFSM_Tb is

end DrinksFSM_Tb;

architecture Stimulus of DrinksFSM_Tb is
	signal s_clk : std_logic;
	signal s_reset : std_logic;
	signal s_sensor20 : std_logic;
	signal s_sensor50 : std_logic;
	signal s_dispenser : std_logic;
	
begin
	uut: entity work.DrinksFSM(Behavioral)
	port map(clk       => s_clk,
		     reset     => s_reset,
		     sensor20  => s_sensor20,
		     sensor50  => s_sensor50,
		     dispenser => s_dispenser);
	
	--Process clock
	clock_control : process
	begin
		s_clk <= '0';
		wait for 50 ns;
		s_clk<='1';
		wait for 50 ns;
	end process;
	
	--Process stim
	stim_proc : process
	begin
		s_sensor20 <= '1';
		s_sensor50 <= '0';
		wait for 500 ns;
		
		s_reset <= '1';
		wait for 100 ns;
		
		s_reset <= '0';
		s_sensor20 <= '0';
		s_sensor50 <= '1';
		wait for 400 ns;
		
		wait;
	end process;
end Stimulus;
	