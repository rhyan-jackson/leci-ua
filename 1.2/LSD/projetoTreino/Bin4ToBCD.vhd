library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Bin4ToBCD is
	port(
	bIn 		:	in  std_logic_vector(3 downto 0);
	bcdLow	:	out std_logic_vector(3 downto 0);
	bcdHigh	:	out std_logic_vector(3 downto 0));
end Bin4ToBCD;

architecture Behavioral of Bin4ToBCD is
	signal s_bIn, s_dez: unsigned(3 downto 0);
	
begin
	s_dez <= to_unsigned(10, 4);
	s_bIn <= unsigned(bIn);
	
	bcdLow <=  std_logic_vector(s_bIn rem s_dez);
	bcdHigh <= std_logic_vector(s_bIn  /  s_dez);
	
end Behavioral;