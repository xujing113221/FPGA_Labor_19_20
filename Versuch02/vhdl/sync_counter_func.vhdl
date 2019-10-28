library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity sync_counter_func is
    port(
        clock : in std_ulogic;
        clock_enable : in std_ulogic;
        reset : in std_ulogic;
        --
        q : out std_logic_vector(3 downto 0)
    );
end sync_counter_func;

---- normale
--architecture rtl of sync_counter_func is
--	signal q_out : std_logic_vector(3 downto 0);
--	signal q_out_next: std_logic_vector(3 downto 0);
--begin
--    process(clock, reset)
--    begin
--        if reset = '1' then
--            q_out <= (others => '0');
--				q <= (others => '0');
--        elsif rising_edge(clock) then 
--				q_out <= q_out_next;
--				q <= q_out_next;
--		  end if;
--	 end process;
--	 
--	 process(q_out)
--	 begin 
--			if clock_enable = '1' then
--				 if q_out < 15 then 
--					q_out_next <= q_out + 1;
--				 else q_out_next <= (others => '0');
--				 end if;
--			end if;
--    end process;
--	 
--end architecture;

-- normale
architecture rtl of sync_counter_func is
	signal q_out : std_logic_vector(3 downto 0);
begin
    process(clock, reset)
    begin
        if reset = '1' then
            q_out <= (others => '0');
        elsif (clock'event and clock = '1') then 
            if clock_enable = '1' then
                if q_out < 15 then 
						q_out <= q_out + 1;
                else q_out <= (others => '0');
                end if;
            end if;			
        end if; 
    end process;
	 
	 process(q_out)
	 begin
		q <= q_out;
	 end process;
	 
end architecture;

-- normale
--architecture rtl of sync_counter_func is
--begin
--    process(clock, reset)
--        variable q_out : std_logic_vector(3 downto 0);
--    begin
--        if reset = '1' then
--            q_out := (others => '0');
--        elsif (clock'event and clock = '1') then 
--            if clock_enable = '1' then
--                if q_out < 15 then 
--						q_out := q_out + 1;
--                else q_out := (others => '0');
--                end if;
--            end if;
--				
--        end if; 
--        q <= q_out;
--    end process;
--end architecture;

---- reset of '5'
--architecture rtl of sync_counter_func is
--begin
--    process(clock, reset)
--        variable q_out : std_logic_vector(3 downto 0);
--    begin
--        if reset = '1' then
--            q_out := "0101";
--        elsif (clock'event and clock = '1') then 
--            if clock_enable = '1' then
--                if q_out < 15 then 
--						q_out := q_out + 1;
--                else q_out := (others => '0');
--                end if;
--            end if;
--				
--        end if; 
--        q <= q_out;
--    end process;
--end architecture;

---- rueckzaehlen methode 1
--architecture rtl of sync_counter_func is
--begin
--    process(clock, reset)
--        variable q_out : std_logic_vector(3 downto 0);
--    begin
--        if reset = '1' then
--            q_out := (others => '0');
--        elsif (clock'event and clock = '1') then 
--				if clock_enable = '1' then
--                if (q_out = 0 OR q_out >15) then 
--						 q_out := "1111";
--                else q_out := q_out - 1;
--                end if;
--            end if;
--				
--        end if; 
--        q <= q_out;
--    end process;
--end architecture;
--
---- rueckzaehlen methode 2
--architecture rtl of sync_counter_func is
--begin
--    process(clock, reset)
--        variable q_out : std_logic_vector(3 downto 0);
--    begin
--        if reset = '1' then
--            q_out := (others => '0');
--        elsif (clock'event and clock = '1') then 
--            if clock_enable = '1' then
--                if q_out < 15 then 
--						q_out := q_out + 1;
--                else q_out := (others => '0');
--                end if;
--            end if;
--				
--        end if; 
--        q <= not q_out;
--    end process;
--end architecture;


---- lauflicht
--architecture rtl of sync_counter_func is
--begin
--    process(clock, reset)
--        variable q_out : std_logic_vector(3 downto 0);
--    begin
--        if reset = '1' then
--            q_out := (others => '0');
--        elsif (clock'event and clock = '1') then 
--            if clock_enable = '1' then
--                if q_out < 7 then 
--						q_out := q_out + 1;
--                else q_out := (others => '0');
--                end if;
--            end if;
--				
--        end if; 
--        q <= q_out;
--    end process;
--end architecture;
