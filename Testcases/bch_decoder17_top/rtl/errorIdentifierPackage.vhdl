-- vhdl/errorIdentifier/errorIdentifierPackage.vhdl


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


package errorIdentifierPackage is
   type sigmaArrayT is array(0 to 17) of std_logic_vector(12 downto 0);
end package;


-- end of errorIdentifierPackage.vhdl
