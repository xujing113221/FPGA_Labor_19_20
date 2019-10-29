library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity sync_counter_func_top is
	port(
	    clock : in std_ulogic;
        clock_enable : in std_ulogic;
        reset : in std_ulogic;
        --
        q : out std_ulogic_vector(3 downto 0)
	);	
end sync_counter_func_top;

architecture rtl of sync_counter_func_top is
constant module : natural := 1; --(0=normal, 1=reset_of_5, 2=countdown_1, 3=countdown_2, 4=light)

--normal
component sync_counter_func_normal is
port(
	clock : in std_ulogic;
    clock_enable : in std_ulogic;
    reset : in std_ulogic;
    --
    q : out std_ulogic_vector(3 downto 0)
);
end component;


--reset of '5'
component sync_counter_func_reset_5 is
port(
	clock : in std_ulogic;
    clock_enable : in std_ulogic;
    reset : in std_ulogic;
    --
    q : out std_ulogic_vector(3 downto 0)
);
end component;

--countdown_1
component sync_counter_func_countdown_1 is
port(
	clock : in std_ulogic;
    clock_enable : in std_ulogic;
    reset : in std_ulogic;
    --
    q : out std_ulogic_vector(3 downto 0)
);
end component;	

--countdown_2
component sync_counter_func_countdown_2 is
port(
	clock : in std_ulogic;
    clock_enable : in std_ulogic;
    reset : in std_ulogic;
    --
    q : out std_ulogic_vector(3 downto 0)
);
end component;	

--light
component sync_counter_func_light is
port(
	clock : in std_ulogic;
    clock_enable : in std_ulogic;
    reset : in std_ulogic;
    --
    q : out std_ulogic_vector(3 downto 0)
);
end component;	


begin
M0 : if module = 0 generate
normal : sync_counter_func_normal
	port map(
	clock => clock,
	clock_enable => clock_enable,
	reset => reset,
	q => q
	);
end generate;

M1 : if module = 1 generate
reset_5 : sync_counter_func_reset_5
	port map(
	clock => clock,
	clock_enable => clock_enable,
	reset => reset,
	q => q
	);
end generate;
	
M2 : if module = 2 generate
countdown_1 : sync_counter_func_countdown_1
	port map(
	clock => clock,
	clock_enable => clock_enable,
	reset => reset,
	q => q
	);
end generate;

M3 : if module = 3 generate
countdown_2 : sync_counter_func_countdown_2
	port map(
	clock => clock,
	clock_enable => clock_enable,
	reset => reset,
	q => q
	);
end generate;


M4 : if module = 4 generate
light : sync_counter_func_light
	port map(
	clock => clock,
	clock_enable => clock_enable,
	reset => reset,
	q => q
	);
end generate;

end rtl;













