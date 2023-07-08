-- vhdl/errorLocator/errorLocatorPackage.vhdl


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


package errorLocatorPackage is
   type sigmaArrayT is array(0 to 17) of std_logic_vector(12 downto 0);
   type syndromeArrayT is array(0 to 33) of std_logic_vector(12 downto 0);
end package;


-- end of errorLocatorPackage.vhdl
