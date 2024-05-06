library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Register8 is
	port(clk   : in  std_logic;
		  set   : in  std_logic;
		  reset : in  std_logic;
		  d     : in  std_logic_vector(7 downto 0);
		  q     : out std_logic_vector(7 downto 0));
end Register8;

architecture Synchronous of Register8 is
begin
	ff_0 : work.FlipFlopD(Synchronous)
			port map(clk   => clk,
						d     => d(0),
						set   => set,
						reset => reset,
						q     => q(0));

	ff_1 : work.FlipFlopD(Synchronous)
			port map(clk   => clk,
						d     => d(1),
						set   => set,
						reset => reset,
						q     => q(1));

	ff_2 : work.FlipFlopD(Synchronous)
			port map(clk   => clk,
						d     => d(2),
						set   => set,
						reset => reset,
						q     => q(2));

	ff_3 : work.FlipFlopD(Synchronous)
			port map(clk   => clk,
						d     => d(3),
						set   => set,
						reset => reset,
						q     => q(3));

	ff_4 : work.FlipFlopD(Synchronous)
			port map(clk   => clk,
						d     => d(4),
						set   => set,
						reset => reset,
						q     => q(4));

	ff_5 : work.FlipFlopD(Synchronous)
			port map(clk   => clk,
						d     => d(5),
						set   => set,
						reset => reset,
						q     => q(5));

	ff_6 : work.FlipFlopD(Synchronous)
			port map(clk   => clk,
						d     => d(6),
						set   => set,
						reset => reset,
						q     => q(6));

	ff_7 : work.FlipFlopD(Synchronous)
			port map(clk   => clk,
						d     => d(7),
						set   => set,
						reset => reset,
						q     => q(7));
end Synchronous;