-- include/config.vhdl


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


package config is
   constant CONFIG_DEFECT_NUMBER_OF_BAD_BITS : integer := 6;
   constant CONFIG_MAX_NUMBER_OF_BAD_BITS : integer := 17;
   constant CONFIG_NUMBER_OF_BITS_IN_PHYSICAL_SECTOR_NUMBER : integer := 26;
   constant CONFIG_NUMBER_OF_BITS_IN_SECTOR_TAG : integer := 26;
   constant CONFIG_NUMBER_OF_BITS_PER_PHYSICAL_SECTOR : integer := 4375;
   constant CONFIG_NUMBER_OF_CHANNELS : integer := 4;
   constant CONFIG_NUMBER_OF_DUMP_SECTORS_PER_CHANNEL : integer := 32;
   constant CONFIG_NUMBER_OF_DWORDS_PER_SUPER_PAGE : integer := 4224;
   constant CONFIG_NUMBER_OF_ELEMENTS_PER_SUBTABLE : integer := 157;
   constant CONFIG_NUMBER_OF_LEVEL_ONE_ELEMENTS_PER_CHANNEL : integer := 311008;
   constant CONFIG_NUMBER_OF_LEVEL_TWO_ELEMENTS_PER_CHANNEL : integer := 48828125;
   constant CONFIG_NUMBER_OF_LEVEL_ZERO_ELEMENTS_PER_CHANNEL : integer := 1981;
   constant CONFIG_NUMBER_OF_LRAM_DWORDS_PER_CHANNEL : integer := 12032;
   constant CONFIG_NUMBER_OF_LRAM_SECTORS_PER_CHANNEL : integer := 94;
   constant CONFIG_NUMBER_OF_SEBT_DWORDS_PER_CHANNEL : integer := 131072;
   constant CONFIG_NUMBER_OF_PARITY_BITS : integer := 221;
   constant CONFIG_NUMBER_OF_SECTORS_PER_READ_OR_WRITE_IN_PHYSICAL_MODE : integer := 33;
   constant CONFIG_NUMBER_OF_SECTORS_PER_SUPER_ERASE_BLOCK : integer := 1920;
   constant CONFIG_NUMBER_OF_SECTORS_PER_SUPER_PAGE : integer := 30;
   constant CONFIG_NUMBER_OF_SUPER_DICE_PER_CHANNEL : integer := 8;
   constant CONFIG_NUMBER_OF_SUPER_ERASE_BLOCKS_PER_CHANNEL : integer := 32768;
   constant CONFIG_NUMBER_OF_SUPER_ERASE_BLOCKS_PER_SUPER_DIE : integer := 4096;
   constant CONFIG_NUMBER_OF_SUPER_PAGES_PER_CHANNEL : integer := 2097152;
   constant CONFIG_NUMBER_OF_SUPER_PAGES_PER_SUPER_ERASE_BLOCK : integer := 64;
   constant CONFIG_NUMBER_OF_UNUSED_BITS_PER_SUBTABLE : integer := 14;
   constant CONFIG_NUMBER_OF_XRAM_DWORDS_PER_CHANNEL : integer := 65536;
   constant CONFIG_NUMBER_OF_XRAM_INFO_SECTORS_PER_CHANNEL : integer := 17;
   constant CONFIG_RECYCLE_NUMBER_OF_BAD_BITS : integer := 3;
   constant CONFIG_XRAM_CHANNEL_0_START : integer := 524288;
   constant CONFIG_XRAM_CHANNEL_1_START : integer := 589824;
   constant CONFIG_XRAM_MPU_END : integer := 1048575;
   constant CONFIG_XRAM_MPU_START : integer := 786432;
   constant CONFIG_XRAM_SEBT_END : integer := 524287;
   constant CONFIG_XRAM_SEBT_START : integer := 0;
end package;


-- end of config.vhdl
