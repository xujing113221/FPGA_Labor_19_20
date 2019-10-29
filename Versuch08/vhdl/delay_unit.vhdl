-----------------------------------------------------------
--      Institute of Microelectronic Systems
--      Architectures and Systems
--      Leibniz Universitaet Hannover
-----------------------------------------------------------
--      lab :         Design Methods for FPGAs
--      file :        delay_unit.vhdl
--      authors :    
--      last update : 
--      description : 
-----------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library work;
use work.fpga_audiofx_pkg.all;

entity delay_unit is
  generic (
    BASE_ADDR_0        : natural := 16#00000000#;
    BASE_ADDR_1        : natural := 16#01000000#;
    BUFFER_SIZE        : natural := 16#01000000#;
    DELAY_SHIFT_FACTOR : natural;
    OUTPORTS           : natural
    );
  port (
    clock               : in  std_ulogic;
    reset               : in  std_ulogic;
    -- audio signals
    ain_sync_0          : in  std_ulogic;
    ain_data_0          : in  std_ulogic;
    ain_sync_1          : in  std_ulogic;
    ain_data_1          : in  std_ulogic;
    aout_sync_0         : out std_ulogic_vector(OUTPORTS-1 downto 0);
    aout_data_0         : out std_ulogic_vector(OUTPORTS-1 downto 0);
    aout_sync_1         : out std_ulogic_vector(OUTPORTS-1 downto 0);
    aout_data_1         : out std_ulogic_vector(OUTPORTS-1 downto 0);
    -- register interface
    regif_cs            : in  std_ulogic;
    regif_wen           : in  std_ulogic;
    regif_addr          : in  std_ulogic_vector(REGIF_ADDR_WIDTH-1 downto 0);
    regif_data_in       : in  std_ulogic_vector(REGIF_DATA_WIDTH-1 downto 0);
    regif_data_out      : out std_ulogic_vector(REGIF_DATA_WIDTH-1 downto 0);
    -- sdram interface
    sdram_select        : out std_ulogic;
    sdram_write_en      : out std_ulogic;
    sdram_address       : out std_ulogic_vector(25 downto 0);
    sdram_data_in       : in  std_ulogic_vector(15 downto 0);
    sdram_data_out      : out std_ulogic_vector(15 downto 0);
    sdram_request_en    : out std_ulogic;
    sdram_req_slot_free : in  std_ulogic;
    sdram_data_avail    : in  std_ulogic
    );
end entity delay_unit;

architecture rtl of delay_unit is


begin

  -- check valid generic-configuration
  assert ((OUTPORTS >= 1) and (OUTPORTS <= 7)) report "[Delay Unit] Illegal number of outports!" severity failure;
  assert (BASE_ADDR_0 /= BASE_ADDR_1) report "[Delay Unit] Buffer Base Addresses can't be identical!" severity failure;
  assert (BASE_ADDR_0 > BASE_ADDR_1) or ((BASE_ADDR_0 + BUFFER_SIZE - 1) < BASE_ADDR_1) report "[Delay Unit] Buffer Ranges do not match!" severity failure;
  assert (BASE_ADDR_0 < BASE_ADDR_1) or ((BASE_ADDR_1 + BUFFER_SIZE - 1) < BASE_ADDR_0) report "[Delay Unit] Buffer Ranges do not match!" severity failure;



end architecture rtl;
