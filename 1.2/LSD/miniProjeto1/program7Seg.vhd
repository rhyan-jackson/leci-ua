library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity program7Seg is
		port(binInput : in std_logic_vector(3 downto 0);
				  enable : in std_logic;
				 decOut_n : out std_logic_vector(6 downto 0));
end program7Seg;

architecture Behavioral of program7Seg is
begin	
	decOut_n <=   "1111111" when enable='0' else
									"0100100" when (binInput = "0001") else --1
									"0110000" when (binInput="0010") else	--2
									"0011001" when (binInput = "0011") else --3
									"1111001"; 							    --0

end Behavioral;