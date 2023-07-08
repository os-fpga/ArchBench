-- vhdl/syndromeCalculator/syndromeCalculatorPackage.vhdl


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


package syndromeCalculatorPackage is
   type syndromeArrayT is array(0 to 33) of std_logic_vector(12 downto 0);
end package;


-- end of syndromeCalculatorPackage.vhdl
