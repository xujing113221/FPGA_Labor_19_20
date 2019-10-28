library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_signed.all;

entity async_adder is
	port(
		a, b : in std_logic_vector(3 downto 0);
		sum : out std_logic_vector(4 downto 0)
	);
end async_adder;

architecture async of async_adder is

begin
	sum <= conv_std_logic_vector(conv_integer(a)+conv_integer(b), 5);
end architecture;