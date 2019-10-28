library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity adder_demo is
	port (
		clk	 : in std_logic;		-- for snyc adder
		op_a   : in std_logic_vector(3 downto 0);
		op_b   : in std_logic_vector(3 downto 0);
		hex0_n : out std_ulogic_vector(6 downto 0);
		hex1_n : out std_ulogic_vector(6 downto 0);
		hex2_n : out std_ulogic_vector(6 downto 0)
	);
end adder_demo;


architecture rtl of adder_demo is
	component segment_decoder 
		port (
			data   : in  std_logic_vector(4 downto 0);
			hex0_n : out std_ulogic_vector(6 downto 0);
			hex1_n : out std_ulogic_vector(6 downto 0);
			hex2_n : out std_ulogic_vector(6 downto 0) 
			); 
	end component;
	
--	component async_adder
--		port(
--			a, b : in std_logic_vector(3 downto 0);
--			sum : out std_logic_vector(4 downto 0)
--		);
--	end component;
	
	component sync_adder
		port(
		clk  : in std_logic;
		op_1 : in std_logic_vector (3 downto 0);
		op_2 : in std_logic_vector (3 downto 0) ;
		sum  : out std_logic_vector (4 downto 0)
		);
	end component;
	
	signal sum_to_data : std_logic_vector(4 downto 0);
	
begin 
--	async_add: async_adder 
--	port map(
--		a => op_a,
--		b => op_b,
--		sum => sum_to_data
--		);

	sync_add: sync_adder 
	port map(
		clk => clk,
		op_1 => op_a,
		op_2 => op_b,
		sum => sum_to_data
		);
		
	seg: segment_decoder
	port map(
		data => sum_to_data,
		hex0_n => hex0_n,
		hex1_n => hex1_n,
		hex2_n => hex2_n
		);
	
end architecture;