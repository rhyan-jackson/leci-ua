library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity SeqDetFSM is
	port(clk    : in std_logic;
		  reset : in std_logic;
		  xIn   : in std_logic;
	      zOut  : out std_logic);
end SeqDetFSM;

architecture MealyArch of SeqDetFSM is

	type TState is (INI, S1, S10, S100);
	signal PS, NS : TState;

begin
	sync_proc : process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				PS <= INI;
			else
				PS <= NS;
			end if;
		end if;
	end process;

	comb_proc : process(PS, xIn)
	begin
		zOut <= '0';
		case (PS) is
		when INI =>
			if (xIn = '1') then NS <= S1;
			else NS <= INI;
			end if;

		when S1 =>
			if (xIn = '0') then NS <= S10;
			else NS <= S1;
			end if;

		when S10 =>
			if (xIn = '0') then NS <= S100;
			else NS <= S1;
			end if;

		when S100 =>
			if (xIn = '1') then
				NS <= INI;
				zOut <= '1';
			else NS <= INI;
			end if;

		when others =>
			NS <= INI;
			report "Reach undefined state";
		end case;

	end process;

end MealyArch;