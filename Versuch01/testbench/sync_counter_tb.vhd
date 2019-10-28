library ieee;                                               
use ieee.std_logic_1164.all;        

entity sync_counter_tb is
end sync_counter_tb;

architecture rtl of sync_counter_tb is
	constant T          :time := 100 ns;
	signal clock        :std_ulogic;
	signal clock_enable :std_ulogic;
	signal reset        :std_ulogic;
	signal q            :std_ulogic_vector(3 downto 0);
	
component sync_counter
    port(
        clock           : in std_ulogic;
        clock_enable    : in std_ulogic;
        reset           : in std_ulogic;
        --
        q               : out std_ulogic_vector(3 downto 0)
    );
end component;

begin
	c0:sync_counter
		port map (
		clock        => clock,
		clock_enable => clock_enable,
		reset        => reset,
		q            => q
		);

	--clock_enable <= '1';
	--reset        <= '0';
	
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
		wait for T/2;
		clock    <= '1';
		wait for T/2;
	end process clk;
	
end rtl;
