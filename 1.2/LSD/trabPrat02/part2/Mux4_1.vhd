library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mux4_1 is
	port(dataIn0  : in std_logic;
			  dataIn1  : in std_logic;
			  dataIn2  : in std_logic;
			  dataIn3  : in std_logic;
			  sel		  : in std_logic_vector(1 downto 0);
			  dataOut  : out std_logic);
end Mux4_1;

--architecture BehavConditional of Mux4_1 is
--begin
--	process(dataIn0, dataIn1, dataIn2, dataIn3, sel)
--	begin
--		if (sel = "00") then
--			dataOut <= dataIn0;
--		elsif (sel = "01") then
--			dataOut <= dataIn1;
--		elsif (sel = "10") then
--			dataOut <= dataIn2;
--		else
--			dataOut <= dataIn3;
--		end if;
--	end process;
--end BehavConditional;

architecture BehavModel of Mux4_1 is
begin
	dataOut <= (sel(1) and sel(0) and dataIn0) or (sel(1) and not( sel(0)) and dataIn1) or (not( sel(1)) and sel(0) and dataIn2) or (not( sel(1)) and not( sel(0)) and dataIn3);
end BehavModel;
