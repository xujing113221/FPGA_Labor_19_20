library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sync_adder is
	port(
		clk  : in std_ulogic;
		a : in std_ulogic_vector (3 downto 0);
		b : in std_ulogic_vector (3 downto 0) ;
		sum  : out std_ulogic_vector (4 downto 0)
		);
end sync_adder;

architecture sync of sync_adder is 
begin

process(clk)
begin
	if (clk'event and clk = '1') then
		sum <= std_ulogic_vector(resize(signed(a), 5)+resize(signed(b), 5));
	end if;
end process;

end architecture;
