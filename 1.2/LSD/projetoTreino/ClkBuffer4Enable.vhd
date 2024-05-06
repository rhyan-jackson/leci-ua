library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ClkBuffer4Enable is
  port (clk    : in std_logic;
        bitIn  : in std_logic_vector(3 downto 0);
        bitOut : out std_logic_vector(3 downto 0));
end ClkBuffer4Enable ;

architecture Behavioral of ClkBuffer4Enable is
begin
    buffer_proc: process(clk)
    begin
        if rising_edge(clk) then
            bitOut <= bitIn;
        end if;
    end process;
end Behavioral;