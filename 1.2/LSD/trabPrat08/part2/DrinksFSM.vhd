library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity DrinksFSM is
	port(clk       : in std_logic;
		  reset     : in std_logic;
		  sensor20  : in std_logic;
		  sensor50  : in std_logic;
		  dispenser : out std_logic);
end DrinksFSM;

architecture Behavioral of DrinksFSM is

	type TState is (S0, S20, S40, S60_50, S80_70, SMAX);
	signal s_currentState, s_nextState : TState;

begin
	sync_proc : process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_currentState <= S0;
			else
				s_currentState <= s_nextState;
			end if;
		end if;
	end process;

	comb_proc : process(s_currentState, sensor20, sensor50)
	begin
		case (s_currentState) is
		when S0 =>
			dispenser <= '0';
			if (sensor20 = '1') then
				s_nextState <= S20;
			elsif (sensor50 = '1') then
				s_nextState <= S60_50;
			else
				s_nextState <= S0;
			end if;

		when S20 =>
			dispenser <= '0';
			if (sensor20 = '1') then
				s_nextState <= S40;
			elsif (sensor50 = '1') then
				s_nextState <= S80_70;
			else
				s_nextState <= S20;
			end if;
			
		when S40 =>
			dispenser <= '0';
			if (sensor20 = '1') then
				s_nextState <= S60_50;
			elsif (sensor50 = '1') then
				s_nextState <= SMAX;
			else
				s_nextState <= S40;
			end if;
			
		when S60_50 =>
			dispenser <= '0';
			if (sensor20 = '1') then
				s_nextState <= S80_70;
			elsif (sensor50 = '1') then
				s_nextState <= SMAX;
			else
				s_nextState <= S60_50;
			end if;
			
		when S80_70 =>
			dispenser <= '0';
			if (sensor20 = '1') then
				s_nextState <= SMAX;
			elsif (sensor50 = '1') then
				s_nextState <= SMAX;
			else
				s_nextState <= S80_70;
			end if;
			
		when SMAX =>
			dispenser <= '1';
			s_nextState <= S0;
		when others =>
			dispenser <= '0';
			report "Reach undefined state";
		end case;

	end process;

end Behavioral;