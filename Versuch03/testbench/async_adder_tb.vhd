library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;
use ieee. std_logic_signed.all;

entity async_adder_tb is
end async_adder_tb;


architecture rtl of async_adder_tb is
    signal a ,b: std_logic_vector(3 downto 0);
    signal sum : std_logic_vector(4 downto 0);
   
    component async_adder
	port(
	    a, b : in std_logic_vector(3 downto 0);
	    sum : out std_logic_vector(4 downto 0)
	);
    end component;
begin
    add: async_adder port map(a,b,sum);

    test: process 
    begin 
	a <= "1000";
    	b <= "1000";
	wait for 1 ns;
	a <= "0101";
    	b <= "1001";
	wait for 1 ns;
	a <= "0111";
    	b <= "0111";
	wait ;
    end process test;

end architecture;
