-- vhdl/crc/crcPackage.vhdl


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


--      This package implements part of a CRC algorithm.  The CRC algorithm is a cyclic redundancy check the drive uses to
-- verify that no bit errors occurred in a sector.  If a sector contains more errors than the ECC algorithm can correct, the
-- ECC algorithm can fail without an indication that there were too many errors; the CRC reduces the probability this can
-- happen by providing a very reliable indication of whether errors occurred.  This package contains a function named updateCrc
-- that updates a CRC value according to a dword.  The user of this package invokes the function once for each dword in an
-- array of dwords.  The CRC calculation uses the polynomial x^32 + x^7 + x^5 + x^3 + x^2 + x + 1.  To calculate the CRC, start
-- with a 32-bit variable named <crc> equal to 0xFFFFFFFF.  For each dword in the array of dwords, perform the following steps
-- to update the variable:  First, exclusive-OR the 32-bit value into <crc>.  Then iterate in a loop 32 times.  Each iteration
-- of the loop, if the least significant bit of <crc> is one, shift <crc> right one bit and then exclusive-OR 0xF5000000 into
-- <crc>; otherwise, just shift <crc> right one bit.  After processing all of the dwords, set <crc> to its ones' complement.
-- The resulting value of <crc> is the CRC value to use for the sector.


package crcPackage is

   --      Given a 32-bit intermediate CRC value and a new 32-bit data value, this function updates the CRC value according to
   -- the new data value and returns the result.

   function updateCrc(crc : std_logic_vector(31 downto 0);
                      data : std_logic_vector(31 downto 0)) return std_logic_vector;

end package;


package body crcPackage is

   function updateCrc(crc : std_logic_vector(31 downto 0);
                      data : std_logic_vector(31 downto 0)) return std_logic_vector is

      variable newCrc : std_logic_vector(31 downto 0);                  --   This holds the new CRC value as we calculate it.
                                                                        -- When we finish calculating the new value, we return
                                                                        -- this to the caller.

   begin

      --      Exclusive-OR <data> with <crc> and set <newCrc> to the result.

      newCrc := crc xor data;


      --      Iterate in a loop 32 times.  Each iteration of the loop, if the least significant bit of <newCrc> is one, shift
      -- <newCrc> right one bit and then exclusive-OR 0xF5000000 into <newCrc>; otherwise, just shift <newCrc> right one bit.

      for i in 0 to 31 loop
         if newCrc(0) = '1' then
            newCrc := '0' & newCrc(31 downto 1);
            newCrc := newCrc xor X"F5000000";
         else
            newCrc := '0' & newCrc(31 downto 1);
         end if;
      end loop;


      --      Return to the caller with the new CRC value.

      return newCrc;

   end;

end package body;


-- end of crcPackage.vhdl
