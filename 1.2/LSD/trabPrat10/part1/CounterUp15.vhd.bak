library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity CounterUp15 is 
	port(clk	   : in std_logic;
		  enable   : in std_logic;
		  reset	: in std_logic;
		  count    : out std_logic_vector(3 downto 0));
end CounterUp15;

architecture Behavioral of CounterUp15 is
	signal s_count: integer := 0;
begin
	process(clk)
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				s_count <= 0;
			else
				if (enable = '1') then
					if (s_count = 15) then
						s_count <= 0;
					else
						s_count <= s_count + 1;
					end if;
				end if;
			end if;
		end if;
	end process;
	count <= std_logic_vector(to_unsigned(s_count, 4));
end Behavioral;

