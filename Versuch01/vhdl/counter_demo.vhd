library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity counter_demo is
port(
	clock : in std_ulogic;  
	key3_n: in std_ulogic;
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

component sync_counter is
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

signal q_to_data : std_ulogic_vector(3 downto 0);
signal out_to_clkena : std_ulogic;
--constant frequency : std_ulogic_vector(25 downto 0) := conv_std_ulogic_vector(50000000,26);

begin
				
	sync_C: sync_counter
	port map (
	          clock        => clock,
				 reset        => not key3_n,
				 clock_enable => out_to_clkena,
				 q            => q_to_data
	          );
				 
	ena_Gen : enableGen
	port map(
				resetValue_in => "10111110101111000010000000",
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
				
end rtl;