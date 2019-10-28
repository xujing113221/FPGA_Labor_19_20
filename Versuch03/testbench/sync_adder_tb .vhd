library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;
use ieee. std_logic_signed.all;

entity sync_adder_tb is
end sync_adder_tb;


architecture rtl of sync_adder_tb is
    signal a ,b: std_logic_vector(3 downto 0);
    signal sum : std_logic_vector(4 downto 0);
    signal clk : std_logic;
    constant T : time := 100 ns;
   
    component sync_adder
	port(
		clk  : in std_logic;
		op_1 : in std_logic_vector (3 downto 0);
		op_2 : in std_logic_vector (3 downto 0) ;
		sum  : out std_logic_vector (4 downto 0)
		);
    end component;
begin

	clk: process
	begin
		clk    <= '0';
		wait for T/4;
		clk    <= '1';
		wait for 3*T/4;
	end process clk;
	
    add: sync_adder port map(clk,a,b,sum);

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
