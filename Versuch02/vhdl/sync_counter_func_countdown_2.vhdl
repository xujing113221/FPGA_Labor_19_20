library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity sync_counter_func_countdown_2 is
    port(
        clock : in std_ulogic;
        clock_enable : in std_ulogic;
        reset : in std_ulogic;
        --
        q : out std_ulogic_vector(3 downto 0)
    );
end sync_counter_func_countdown_2;

architecture rtl of sync_counter_func_countdown_2 is
signal q_out : std_ulogic_vector(3 downto 0);
signal q_out_next: std_ulogic_vector(3 downto 0);

begin
process(clock, reset, clock_enable)
begin
	if reset = '1' then
		q_out <= (others => '0');
	elsif rising_edge(clock) then
		if clock_enable = '1' then
			q_out <= q_out_next;
			q <= not q_out;
		end if;
	end if;
end process;
	
process(q_out)
begin
	if q_out < "1111" then
		q_out_next <= std_ulogic_vector(unsigned(q_out) + 1);
	else q_out_next <= (others => '0');
	end if;
end process;
	
end architecture;