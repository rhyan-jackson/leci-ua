library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity AccN is
		generic(N: positive := 8);
		port(clk     : in std_logic;
			  reset   : in std_logic;
			  enable  : in std_logic;
		     dataIn  : in std_logic_vector(N-1 downto 0);
			  overflow   : out std_logic;
			  dataOut : out std_logic_vector(N-1 downto 0));
end AccN;

--architecture Structural of AccN is
--signal s_adderOut: std_logic_vector(N-1 downto 0);
--signal s_regOut: std_logic_vector(N-1 downto 0);		
--begin
--	Adder: work.AdderN(Behavioral)
--			generic map(N => N)
--			port map(operand0 => dataIn,
--						operand1 => s_regOut,
--						result =>	s_adderOut);
--						
--	Registo: work.RegN(Synchronous)
--		generic map(N => N)
--		port map(clk      => clk,
--					reset    => reset,
--					enable   => enable,
--					dataIn   => s_adderOut,
--					dataOut  => s_regOut);
--	dataOut <= s_regOut;
--end Structural;

architecture Behavioral of AccN is
signal accumulator: unsigned(N downto 0);
begin
	process(clk)
	begin
		if (rising_edge(clk)) then
			overflow <= '0';
			if (reset = '1') then
				accumulator <= (others => '0');
				overflow <= '0';
			elsif (enable = '1') then
				accumulator <= accumulator + unsigned('0' & dataIn);
				if (accumulator(N) = '1') then
					accumulator(N) <= '0';
					overflow <= '1';
				end if;
			end if;
			dataOut <= std_logic_vector(accumulator(N-1 downto 0));
		end if;
	end process;
end Behavioral;
			
			
			