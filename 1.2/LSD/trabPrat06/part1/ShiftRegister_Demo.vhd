library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity ShiftRegister_Demo is
	port(CLOCK_50    : in std_logic;
                   SW    : in std_logic_vector(9 downto 0);
		   LEDG  : out std_logic_vector(7 downto 0));
end ShiftRegister_Demo;

architecture Structural of ShiftRegister_Demo is
	signal sync_sw: std_logic_vector(9 downto 0);
	signal clk_1hz: std_logic;
begin
	process(CLOCK_50)
	begin
        if (rising_edge(CLOCK_50)) then
            sync_sw <= SW;
        end if;
    end process;

    clock_1hz : work.ClkDividerN(Behavioral)
            generic map(divFactor => 50_000_000)
            port map(clkIn  => CLOCK_50,
                 clkOut => clk_1hz
            );

    shift_register : work.ShiftRegisterLoadN(Behavioral)
            generic map(N => 8)
            port map(clk     => clk_1hz,
                     sIn     => sync_sw(0),
                     load    => sync_sw(1),
                     bitsIn  => sync_sw(9 downto 2),
                     dataOut => LEDG(7 downto 0)
            );

end Structural;