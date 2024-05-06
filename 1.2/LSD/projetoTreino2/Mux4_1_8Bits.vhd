library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mux4_1_8Bits is
	port(dataIn0 :	in std_logic_vector(7 downto 0);
		 dataIn1 :	in std_logic_vector(7 downto 0);
		 dataIn2 :	in std_logic_vector(7 downto 0);
		 dataIn3 :	in std_logic_vector(7 downto 0);
		 sel     :  in std_logic_vector(1 downto 0);
		 dataOut :	out std_logic_vector(7 downto 0));
end Mux4_1_8Bits;

architecture Behavioral of Mux4_1_8Bits is
begin
	process(dataIn0, dataIn1,dataIn2, dataIn3, sel)
	begin
		if (sel = "01") then
			dataOut <= dataIn1;
        elsif (sel = "10") then
			dataOut <= dataIn2;
        elsif (sel = "11") then
            dataOut <= dataIn3;
		else
			dataOut <= dataIn0;
		end if;
	end process;
end Behavioral;