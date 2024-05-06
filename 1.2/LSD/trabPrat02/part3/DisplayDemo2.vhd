library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity DisplayDemo2 is
	port(SW 	   : in std_logic_vector(3 downto 0);
		  KEY : in std_logic;
		  HEX0  : out std_logic_vector(6 downto 0);
		  LEDR  : out std_logic_vector(6 downto 0);
		  LEDG  : out std_logic_vector(3 downto 0));
		  
end DisplayDemo2;

architecture Shell of DisplayDemo2 is
signal aux : std_logic_vector(6 downto 0);
begin
	system_core : entity work.Bin7SegDecoder(Behavioral)
					  port map(binInput	=> SW,
								  enable	=> KEY,
								  decOut_n => aux);
	LEDG <= SW;
	LEDR <= aux;
	HEX0 <= aux;
end Shell;