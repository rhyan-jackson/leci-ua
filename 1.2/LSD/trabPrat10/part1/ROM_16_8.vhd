library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ROM_16_8 is
	port (adress  : in std_logic_vector(3 downto 0);
			dataOut : out std_logic_vector(7 downto 0)
	);
end entity ROM_16_8;

architecture Behavioral of ROM_16_8 is
	type TMemory is array (0 to 15) of std_logic_vector(7 downto 0);
	constant c_memory: TMemory := (x"01", x"02", x"03", x"04",
										 x"05", x"06", x"07", x"08",
										 x"09", x"0A", x"0B", x"0C",
										 x"0D", x"0E", x"10", x"11");
begin
	dataOut <= c_memory(to_integer(unsigned(adress)));
end architecture Behavioral;