library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ClkBuffer4Bits is
  port (clk    : in std_logic;
        bitIn  : in std_logic_vector(3 downto 0);
		  enable : in std_logic;
        bitOut : out std_logic_vector(3 downto 0));
end ClkBuffer4Bits ;

architecture Behavioral of ClkBuffer4Bits is
begin
    buffer_proc: process(clk, enable)
    begin
        if rising_edge(clk) then
			  if (enable = '1') then
					bitOut <= bitIn;
			  else
					bitOut <= "0000";
			  end if;
        end if;
    end process;
end Behavioral;