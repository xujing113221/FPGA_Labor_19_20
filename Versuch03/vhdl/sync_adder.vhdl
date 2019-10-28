library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity sync_adder is
	port(
		clk  : in std_logic;
		op_1 : in std_logic_vector (3 downto 0);
		op_2 : in std_logic_vector (3 downto 0) ;
		sum  : out std_logic_vector (4 downto 0)
		);
end sync_adder;

architecture sync of sync_adder is 
	signal op_1_2er :  std_logic_vector (4 downto 0);
	signal op_2_2er :  std_logic_vector (4 downto 0);

begin

process(clk)
begin
	if (clk'event and clk = '1') then
		if op_1(3) = '1' then
			op_1_2er <= ('1'&op_1);
		else op_1_2er <= ('0'&op_1);
		end if;
		if op_2(3) = '1' then
			op_2_2er <= ('1'&op_2) ;
		else op_2_2er <= ('0'&op_2);
		end if;
		sum <= op_1_2er + op_2_2er;
	end if;
end process;

end architecture;
