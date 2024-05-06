library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;
entity ShiftRegisterN is
	generic(N: positive := 8);
	port(clk    : in std_logic;
         sIn    : in std_logic;
		 dataOut : out std_logic_vector(N-1 downto 0));
end ShiftRegisterN;

architecture Behavioral of ShiftRegisterN is
	signal s_register: std_logic_vector(N-1 downto 0);
begin
	process(clk)
	begin
		if (rising_edge(clk)) then
			s_register <= s_register(N-2 downto 0) & sIn;
		end if;
	end process;
	dataOut <= s_register;
end Behavioral;