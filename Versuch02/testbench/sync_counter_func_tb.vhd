library ieee;
use ieee.std_logic_1164.all;

entity sync_counter_func_tb is
end sync_counter_func_tb;

architecture rtl of sync_counter_func_tb is
	constant T          :time := 100 ns;
	signal clock        :std_ulogic;
	signal clock_enable :std_ulogic;
	signal reset        :std_ulogic;
	signal q            :std_logic_vector(3 downto 0);
	
component sync_counter_func
    port(
        clock           : in std_ulogic;
        clock_enable    : in std_ulogic;
        reset           : in std_ulogic;
        --
        q               : out std_logic_vector(3 downto 0)
    );
end component;

begin
	c0:sync_counter_func
		port map (
		clock        => clock,
		clock_enable => clock_enable,
		reset        => reset,
		q            => q
		);

	rst: process
	begin
		reset <= '1';
		wait for T;
		reset <= '0';
		wait;
	end process rst;
	
	ena: process
	begin
		clock_enable <= '0';
		wait for 5* T;
		clock_enable <= '1';
		wait;
	end process ena;
	
	clk: process
	begin
		clock    <= '0';
		wait for T/4;
		clock    <= '1';
		wait for 3*T/4;
	end process clk;
	
end rtl;
