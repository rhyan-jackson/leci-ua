library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity AdderN is
	generic(N: positive := 8);
	port(a, b : in std_logic_vector(N-1 downto 0);
		  s	 : out std_logic_vector(N-1 downto 0);
end AdderN;

architecture Behavioral of AdderN is
	signal carryOut : std_logic_vector(N-1 downto 0);
	begin
		s <= std_logic_vector(unsigned(a) + unsigned(b));
end Behavioral;