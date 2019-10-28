library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library altera;
use altera.altera_primitives_components.all;

entity sync_counter is
    port(
        clock : in std_ulogic;
        clock_enable : in std_ulogic;
        reset : in std_ulogic;
        --
        q : out std_ulogic_vector(3 downto 0)
    );
end entity sync_counter;

architecture rtl of sync_counter is
    --ff_jk
    component ff_jk
    port(
        j     : in std_ulogic;
        k     : in std_ulogic;
        clk   : in std_ulogic;
        ena   : in std_ulogic;
        clrn  : in std_ulogic;
        prn   : in std_ulogic;
        q     : out std_ulogic
    );
    end component;

    --signal
    signal j_ff: std_ulogic_vector(3 downto 0);
    signal q_ff: std_ulogic_vector(3 downto 0);    
	signal k_ff: std_ulogic_vector(3 downto 0);
	 
    signal clk_ff: std_ulogic;
    signal ena_ff: std_ulogic;
    signal clrn_ff: std_ulogic;
    signal prn_ff: std_ulogic;
    
    begin
        ff: for i in 0 to 3 generate
        f: ff_jk
        port map(
            j => j_ff(i),   
            k => k_ff(i),
			q => q_ff(i),
				
            clk  => clk_ff,
            ena  => ena_ff,
            clrn => clrn_ff,
            prn  => prn_ff
            
        );
        end generate;

        j_ff(0) <= '1';
        k_ff(0) <= '1';
        j_ff(1) <= q_ff(0);
        k_ff(1) <= q_ff(0);
        j_ff(2) <= q_ff(0) and q_ff(1);
        k_ff(2) <= q_ff(0) and q_ff(1);
        j_ff(3) <= q_ff(0) and q_ff(1) and q_ff(2);
        k_ff(3) <= q_ff(0) and q_ff(1) and q_ff(2);
        q <= q_ff;
		  	  
		clk_ff  <= clock;
		ena_ff  <= clock_enable;
		clrn_ff <= not reset;
		prn_ff  <= '1';
		  
		  


end architecture;
