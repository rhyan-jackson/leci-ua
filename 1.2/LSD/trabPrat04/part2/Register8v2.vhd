library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity Register8v2 is
		port(clk     : in std_logic;
			  wrEn    : in std_logic;
		     dataIn  : in std_logic_vector(7 downto 0);
			  dataOut : out std_logic_vector(7 downto 0));
end Register8v2;

architecture Synchronous of Register8v2 is
begin
	process(clk)
	begin
		if (rising_edge(clk) and (wrEn = '1')) then
			dataOut <= dataIn;
		end if;
	end process;
end Synchronous;
	