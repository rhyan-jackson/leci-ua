library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity miniProjeto is
	port(
    CLOCK_50 : in  std_logic;
	SW 		 : in  std_logic_vector(1 downto 0);
    LEDR     : out std_logic_vector(4 downto 0);
    LEDG     : out std_logic_vector(3 downto 0);
    HEX0     : out std_logic_vector(6 downto 0);
    HEX4     : out std_logic_vector(6 downto 0);
    HEX6     : out std_logic_vector(6 downto 0));
end miniProjeto;

architecture Structural of miniProjeto is
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
    signal s_pulseCounter_2hz: std_logic;

    signal s_pulse_4seg: std_logic;

    -- count blinks variable
    signal s_count_green : std_logic_vector(3 downto 0);
    signal s_count_red : std_logic_vector(3 downto 0);

	 -- control program4 variables
    signal control_program4 : std_logic;

begin
    process(CLOCK_50) -- synchronizing sw input with general clock
    begin
         if (rising_edge(CLOCK_50)) then
               sync_sw <= SW;
         end if;
    end process;

    pulse_4seg : work.PulseGenerator(Behavioral)
		  generic map(MAX => 200_000_000)
		  port map(clk   => CLOCK_50,
					 reset  => '0',
					 pulse  => s_pulse_4seg
	 );


    process(CLOCK_50)
    begin
		if (rising_edge(CLOCK_50)) then
         if (s_pulse_4seg = '1') then
				if (control_program4 = '1') then
					control_program4 <= '0';
				else
					control_program4 <= '1';
				end if;
			end if;
		end if;
    end process;
	 
    sevenSegProgransHEX0: work.program7Seg(Behavioral)
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
	 
	 process(CLOCK_50)
	 begin
		if (control_program4 = '0') then
			s_leds_program4 <= s_leds_program3; --green blink
		else
			s_leds_program4 <= s_leds_program2; --red blink
		end if;
	 end process;

    pulse_1hz : work.PulseGenerator(Behavioral)
		  generic map(MAX => 50_000_000)
		  port map(clk   => CLOCK_50,
					 reset  => '0',
					 pulse  => s_pulseCounter_1hz
	);

    pulse_2hz : work.PulseGenerator(Behavioral)
		  generic map(MAX => 25_000_000)
		  port map(clk   => CLOCK_50,
					 reset  => '0',
					 pulse  => s_pulseCounter_2hz
	);

    counter_greenBlink: work.CounterUp15(Behavioral)
        port map(clk => CLOCK_50,
                 enable => s_pulseCounter_1hz and (not control_program4),
                 reset => (not (sync_sw(0) and sync_sw(1))),
                 count => s_count_green

        );

    counter_redBlink: work.CounterUp15(Behavioral)
    port map(clk => CLOCK_50,
             enable => s_pulseCounter_2hz and control_program4,
             reset => (not (sync_sw(0) and sync_sw(1))),
             count => s_count_red

    );
    
    sevenSegCountGreen: work.Bin7SegDecoder(Behavioral)
	port map(binInput => s_count_green,
			 enable   => sync_sw(0) and sync_sw(1),
			 decOut_n => HEX4(6 downto 0)
	);

    sevenSegCountRed: work.Bin7SegDecoder(Behavioral)
	port map(binInput => s_count_red,
			 enable   => sync_sw(0) and sync_sw(1),
			 decOut_n => HEX6(6 downto 0)
	);


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