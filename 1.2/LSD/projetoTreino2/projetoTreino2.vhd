library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity projetoTreino2 is
	port(
    CLOCK_50 : in  std_logic;
	SW 		 : in  std_logic_vector(1 downto 0);
    LEDR     : out std_logic_vector(3 downto 0);
    LEDG     : out std_logic_vector(3 downto 0);
    HEX0     : out std_logic_vector(6 downto 0));
end projetoTreino2;

architecture Structural of projetoTreino2 is
	signal sync_sw: std_logic_vector(1 downto 0);

    signal s_general_ledsOut : std_logic_vector(7 downto 0); -- this is the final output for leds: MODEL (LEDR) & (LEDG)

    -- each program led output
    signal s_leds_program2  : std_logic_vector(7 downto 0);
    signal s_leds_program3  : std_logic_vector(7 downto 0);
    signal s_leds_program4  : std_logic_vector(7 downto 0);

    -- blink's & pulse's generators
    signal s_blinkLeds_2hz_4Bits  : std_logic_vector(3 downto 0);
    signal s_blinkLeds_2hz : std_logic;

    signal s_blinkLeds_1hz_4Bits  : std_logic_vector(3 downto 0);
    signal s_blinkLeds_1hz : std_logic;

    signal s_pulseCounter_1hz: std_logic;

    -- timer variables

    signal timer_out1 : std_logic;
    signal timer_out2 : std_logic;
    signal timer_out1_4bits : std_logic_vector(3 downto 0);
    signal timer_out2_4bits : std_logic_vector(3 downto 0);

begin
    process(CLOCK_50) -- synchronizing sw input with general clock
    begin
         if (rising_edge(CLOCK_50)) then
               sync_sw <= SW;
         end if;
    end process;
    
    
    sevenSegHEX0: work.Bin7SegDecoder(Behavioral)
	port map(binInput => "00" & sync_sw,
			 enable   => '1',
			 decOut_n => HEX0(6 downto 0)
	);
    
    blinkForLeds_2hz : work.BlinkGenerator(Behavioral)
		  generic map(NUMBER_STEPS => 25_000_000)
		  port map(clk   => CLOCK_50,
					 reset  => '0',
					 blink  => s_blinkLeds_2hz
	);

    s_blinkLeds_2hz_4Bits <= (others => s_blinkLeds_2hz);
    s_leds_program2 <= (s_blinkLeds_2hz_4Bits) & "0000"; -- LEDR Blink 2hz & LEDG OFF

    blinkForLeds_1hz : work.BlinkGenerator(Behavioral)
		  generic map(NUMBER_STEPS => 50_000_000)
		  port map(clk   => CLOCK_50,
					 reset  => '0',
					 blink  => s_blinkLeds_1hz
	);

    s_blinkLeds_1hz_4Bits <= (others => s_blinkLeds_1hz);
    s_leds_program3 <= "0000" & (s_blinkLeds_1hz_4Bits); -- LEDR OFF & LEDG Blink 1hz

    pulse_1hz : work.PulseGenerator(Behavioral)
		  generic map(MAX => 50_000_000)
		  port map(clk   => CLOCK_50,
					 reset  => '0',
					 pulse  => s_pulseCounter_1hz
	 );

    timer1 : work.TimerN(Sequential)
        generic map(N => 5)
	    port map(clk => CLOCK_50,
                 reset => '0',
                 enable => s_pulseCounter_1hz,
                 start => (SW(0) and SW(1)) and (not timer_out2),
                 timerOut => timer_out1
	);

    timer2 : work.TimerN(Sequential)
        generic map(N => 5)
	    port map(clk => CLOCK_50,
                 reset => '0',
                 enable => s_pulseCounter_1hz,
                 start => timer_out1,
                 timerOut => timer_out2
	);
    
    timer_out1_4bits <= (others => timer_out1);
    timer_out2_4bits <= (others => timer_out2);

    s_leds_program4 <= (timer_out1_4bits and ("0000" & s_blinkLeds_1hz_4Bits)) or (timer_out2_4bits and (s_blinkLeds_2hz_4Bits & "0000"));

    options_mux : work.Mux4_1_8Bits(Behavioral)
	    port map(dataIn0 => (others => '1'),
                dataIn1 => s_leds_program2,
                dataIn2 => s_leds_program3,
                dataIn3 => s_leds_program4,
                sel     => sync_sw,
                dataOut => s_general_ledsOut
	);

    LEDR(3 downto 0) <= s_general_ledsOut(7 downto 4);
    LEDG(3 downto 0) <= s_general_ledsOut(3 downto 0);

end Structural;