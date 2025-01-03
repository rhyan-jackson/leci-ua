library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity ROM_Demo is
   port (CLOCK_50 : in std_logic;
         LEDR     : out std_logic_vector(7 downto 0)

   );
end entity ROM_Demo;

architecture Behavioral of ROM_Demo is
   signal s_clk_1hz : std_logic;
   signal s_count : std_logic_vector(3 downto 0);
begin
   
   clk_1hz : entity work.ClkDividerN(RTL)
      generic map(divFactor => 100_000_000)
		port map(clkIn		=> CLOCK_50,
					clkOut		=> s_clk_1hz);

   counter : entity work.CounterUp15(Behavioral)
      port map(clk    => s_clk_1hz,
               enable => '1',
               reset	 => '0',
               count  => s_count);
   
   memory : entity work.ROM_16_8(Behavioral)
      port map(adress  => s_count,
               dataOut => LEDR(7 downto 0));
   
end architecture Behavioral;