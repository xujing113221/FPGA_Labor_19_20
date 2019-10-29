library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;


entity counter_demo is
port(
	clock : in std_ulogic;  
	key3_n: in std_ulogic;
	key_speed : in std_ulogic_vector(3 downto 0);
	hex0_n:out std_ulogic_vector(6 downto 0);
	hex1_n:out std_ulogic_vector(6 downto 0)
	);
end counter_demo;


architecture rtl of counter_demo is

component segment_decoder is
	port (
		data   : in  std_ulogic_vector(3 downto 0);
		hex0_n : out std_ulogic_vector(6 downto 0);
		hex1_n : out std_ulogic_vector(6 downto 0)
		);
end component;

component sync_counter_func_top is
	port (
		  clock        : in std_ulogic;
        clock_enable : in std_ulogic;
        reset        : in std_ulogic;
        -- 
        q            : out std_ulogic_vector(3 downto 0)
		  );
end component;

component enableGen
	port(
		  resetValue_in : in std_ulogic_vector(25 downto 0);
		  clk           : in std_ulogic;
		  nReset        : in std_ulogic;
		  clkEnable_out : out std_ulogic
		 );
end component;

constant FREQ_10HZ : std_ulogic_vector(25 downto 0)  := to_stdulogicvector(conv_std_logic_vector(5000000,26));
constant FREQ_8HZ : std_ulogic_vector(25 downto 0)   := to_stdulogicvector(conv_std_logic_vector(6250000,26));
constant FREQ_5HZ : std_ulogic_vector(25 downto 0)   := to_stdulogicvector(conv_std_logic_vector(10000000,26));
constant FREQ_2HZ : std_ulogic_vector(25 downto 0)   := to_stdulogicvector(conv_std_logic_vector(25000000,26));
constant FREQ_1HZ : std_ulogic_vector(25 downto 0)   := to_stdulogicvector(conv_std_logic_vector(50000000,26));

signal q_to_data : std_ulogic_vector(3 downto 0);
signal out_to_clkena : std_ulogic; 
signal frequency : std_ulogic_vector(25 downto 0):= FreQ_1HZ;


begin		
	sync_C: sync_counter_func_top
	port map (
		clock        => clock,
		reset        => not key3_n,
		clock_enable => out_to_clkena,
		q            => q_to_data
		);
				 
	ena_Gen : enableGen
	port map(
		resetValue_in => frequency,
		clk           => clock,      
		nReset        => key3_n,
		clkEnable_out => out_to_clkena
		); 
				
	seg : segment_decoder
	port map(
	   data      => q_to_data,
		hex0_n    => hex0_n,
		hex1_n    => hex1_n
		);
	
	frequency <= FREQ_2HZ when key_speed = "0001" else
					 FREQ_5HZ when key_speed = "0010" else
					 FREQ_8HZ when key_speed = "0100" else 
					 FREQ_10HZ when key_speed = "1000" else
					 FREQ_1HZ;	
		
end rtl;