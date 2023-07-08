-- vhdl/packages/bug.vhdl


--      This file implements a vhdl package named <bug> that defines constants that index <bug[31..0]>.


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


package bug is
   constant CIPHER_BUG          : integer := 0;
   constant CPUREGISTERS_BUG    : integer := 1;
   constant ECC_BUG             : integer := 2;
   constant LRAM_ROUTER_BUG     : integer := 3;
   constant MPUREGISTERS_BUG    : integer := 4;
   constant NAND_INTERFACE_BUG  : integer := 5;
   constant PACKET_ROUTER_BUG   : integer := 6;
   constant XRAM_CONTROLLER_BUG : integer := 7;
   constant SATA_CONTROLLER_BUG : integer := 8;
end package;


-- end of bug.vhdl
