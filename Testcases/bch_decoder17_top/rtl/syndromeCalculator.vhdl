-- vhdl/syndromeCalculator/syndromeCalculator.vhdl


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.config.all;
use work.bug.all;
use work.syndromeCalculatorPackage.all;


entity syndromeCalculator is
   port(
      inputSourceReady : in std_logic;
      inputData : in std_logic_vector(15 downto 0);
      inputDestinationReady : out std_logic;
      syndromeSourceReady : out std_logic;
      syndromeArray : out syndromeArrayT;
      syndromeDestinationReady : in std_logic;
      history : out std_logic_vector(31 downto 0);
      bug : out std_logic_vector(31 downto 0);
      clk : in std_logic;
      reset : in std_logic
   );
end entity;


architecture behavioral of syndromeCalculator is

   constant NUMBER_OF_BITS_IN_LAST_WORD : integer :=                    --   This is the number of bits we use in the last word
                                  CONFIG_NUMBER_OF_PARITY_BITS mod 16;  -- of a sector.

   constant NUMBER_OF_SHIFTERS : integer :=                             --   This is the number of shift registers this entity
                                        CONFIG_MAX_NUMBER_OF_BAD_BITS;  -- contains.

   constant NUMBER_OF_WORDS_PER_SECTOR : integer :=                     --   This is the number of words we process for a
               256 + 2 + 2 + (CONFIG_NUMBER_OF_PARITY_BITS + 15) / 16;  -- sector.

   constant SIZE_OF_SHIFTER : integer := 13;                            --   This is the number of bits in each shift register.

   type shifterArrayT is array(0 to NUMBER_OF_SHIFTERS - 1) of          --   This is the type for MASKS and <shifters>.  This
                       std_logic_vector(SIZE_OF_SHIFTER - 1 downto 0);  -- is an array of shift-register values.

   constant MASKS : shifterArrayT := (                                  --   This array contains a mask for each shift
      "0000000011011",                                                  -- register.
      "0011010110001",
      "0100110010011",
      "0011101001111",
      "1000111100001",
      "0001110100011",
      "1000001111001",
      "0001010111111",
      "0111111111111",
      "1101000101001",
      "1100111010011",
      "1100000100111",
      "1010101011101",
      "1001100010101",
      "1111101000101",
      "1110101001101",
      "0110000111111"
   );

   signal inputBuffer : std_logic_vector(15 downto 0);                  --   This holds a word from <inputData>.  Each input
                                                                        -- word transfers from <inputData> into this.  This
                                                                        -- buffer makes it easier for the synthesizer to meet
                                                                        -- timing.  This contains a word if <inputBufferFlag>
                                                                        -- is one.

   signal inputBufferFlag : std_logic;                                  --   This is one if <inputBuffer> contains a word;
                                                                        -- otherwise, this is zero.

   signal internalInputDestinationReady : std_logic;                    --   This drives <inputDestinationReady>.

   signal internalSyndromeSourceReady : std_logic;                      --   This drives <syndromeSourceReady>.

   signal shifters : shifterArrayT;                                     --   This is an array of shift registers.

   signal wordCounter : integer range                                   --   This keeps track of the number of input words
                                 0 to NUMBER_OF_WORDS_PER_SECTOR - 1;   -- we've processed so far during the current sector.


   --      This function exclusive-ORs all of the bits in a 13-bit value together and returns the resulting bit.

   function xorBits(v : std_logic_vector(12 downto 0)) return std_logic is
      variable result : std_logic;
   begin
      result := '0';
      for i in 0 to 12 loop
         result := result xor v(i);
      end loop;
      return result;
   end function;

begin

   --      Create <bug>.  Set it to zero.

   bug <= (others => '0');


   --      Create <history>.  Set it to zero.

   history <= (others => '0');


   --      Create <inputDestinationReady>.  If <inputBuffer> contains a word, set <inputDestinationReady> to one; otherwise, if
   -- we'll use the word in <inputBuffer> during this clock period, set <inputDestinationReady> to one; otherwise, set
   -- <inputDestinationReady> to zero.

   inputDestinationReady <= '1' when inputBufferFlag = '0' else
                            '1' when internalSyndromeSourceReady = '0' or syndromeDestinationReady = '1' else
                            '0';


   --      Create <syndromeSourceReady>.  Set it equal to <internalSyndromeSourceReady>.

   syndromeSourceReady <= internalSyndromeSourceReady;


   --      Create <syndromeArray>.

   syndromeArray(0) <= (others => 'X') when reset = '1' or internalSyndromeSourceReady = '0' else
                       xorBits("1000000000000" and shifters(0)) &
                       xorBits("0100000000000" and shifters(0)) &
                       xorBits("0010000000000" and shifters(0)) &
                       xorBits("0001000000000" and shifters(0)) &
                       xorBits("0000100000000" and shifters(0)) &
                       xorBits("0000010000000" and shifters(0)) &
                       xorBits("0000001000000" and shifters(0)) &
                       xorBits("0000000100000" and shifters(0)) &
                       xorBits("0000000010000" and shifters(0)) &
                       xorBits("0000000001000" and shifters(0)) &
                       xorBits("0000000000100" and shifters(0)) &
                       xorBits("0000000000010" and shifters(0)) &
                       xorBits("0000000000001" and shifters(0));
   syndromeArray(1) <= (others => 'X') when reset = '1' or internalSyndromeSourceReady = '0' else
                       xorBits("1100001000000" and shifters(0)) &
                       xorBits("1010000000000" and shifters(0)) &
                       xorBits("0110000100000" and shifters(0)) &
                       xorBits("0101000000000" and shifters(0)) &
                       xorBits("0011000010000" and shifters(0)) &
                       xorBits("0010100000000" and shifters(0)) &
                       xorBits("1001100001000" and shifters(0)) &
                       xorBits("0001010000000" and shifters(0)) &
                       xorBits("1100110000100" and shifters(0)) &
                       xorBits("1100100000000" and shifters(0)) &
                       xorBits("0000010000010" and shifters(0)) &
                       xorBits("1100010000000" and shifters(0)) &
                       xorBits("0100000000001" and shifters(0));
   syndromeArray(2) <= (others => 'X') when reset = '1' or internalSyndromeSourceReady = '0' else
                       xorBits("1010110010000" and shifters(1)) &
                       xorBits("0000110000000" and shifters(1)) &
                       xorBits("1010000000000" and shifters(1)) &
                       xorBits("1101011001000" and shifters(1)) &
                       xorBits("1000011000000" and shifters(1)) &
                       xorBits("1101000000000" and shifters(1)) &
                       xorBits("0110101100100" and shifters(1)) &
                       xorBits("1100001100000" and shifters(1)) &
                       xorBits("1110100000000" and shifters(1)) &
                       xorBits("1001100100010" and shifters(1)) &
                       xorBits("0100000100000" and shifters(1)) &
                       xorBits("0101100000000" and shifters(1)) &
                       xorBits("0100000000001" and shifters(1));
   syndromeArray(3) <= (others => 'X') when reset = '1' or internalSyndromeSourceReady = '0' else
                       xorBits("1111101001000" and shifters(0)) &
                       xorBits("1010001100000" and shifters(0)) &
                       xorBits("1101010100000" and shifters(0)) &
                       xorBits("1111000000000" and shifters(0)) &
                       xorBits("1111110100100" and shifters(0)) &
                       xorBits("0101000110000" and shifters(0)) &
                       xorBits("0110101010000" and shifters(0)) &
                       xorBits("0111100000000" and shifters(0)) &
                       xorBits("0111111010010" and shifters(0)) &
                       xorBits("0101001010000" and shifters(0)) &
                       xorBits("1110110000000" and shifters(0)) &
                       xorBits("0100101000000" and shifters(0)) &
                       xorBits("1110000000001" and shifters(0));
   syndromeArray(4) <= (others => 'X') when reset = '1' or internalSyndromeSourceReady = '0' else
                       xorBits("0010101100000" and shifters(2)) &
                       xorBits("0011110010000" and shifters(2)) &
                       xorBits("1111001010100" and shifters(2)) &
                       xorBits("0101110000000" and shifters(2)) &
                       xorBits("0001110010000" and shifters(2)) &
                       xorBits("1001010110000" and shifters(2)) &
                       xorBits("1001111001000" and shifters(2)) &
                       xorBits("0111100101010" and shifters(2)) &
                       xorBits("1010111000000" and shifters(2)) &
                       xorBits("1010010101000" and shifters(2)) &
                       xorBits("0101110101000" and shifters(2)) &
                       xorBits("1000000100000" and shifters(2)) &
                       xorBits("0011100100001" and shifters(2));
   syndromeArray(5) <= (others => 'X') when reset = '1' or internalSyndromeSourceReady = '0' else
                       xorBits("1100101110100" and shifters(1)) &
                       xorBits("0000110010000" and shifters(1)) &
                       xorBits("0110111100000" and shifters(1)) &
                       xorBits("1101101001000" and shifters(1)) &
                       xorBits("1001111001000" and shifters(1)) &
                       xorBits("0010011000000" and shifters(1)) &
                       xorBits("0110010111010" and shifters(1)) &
                       xorBits("0000011001000" and shifters(1)) &
                       xorBits("1011011110000" and shifters(1)) &
                       xorBits("0010011010000" and shifters(1)) &
                       xorBits("1000100000000" and shifters(1)) &
                       xorBits("0111000010000" and shifters(1)) &
                       xorBits("0100110000001" and shifters(1));
   syndromeArray(6) <= (others => 'X') when reset = '1' or internalSyndromeSourceReady = '0' else
                       xorBits("0000010001000" and shifters(3)) &
                       xorBits("1000111101000" and shifters(3)) &
                       xorBits("1011111010000" and shifters(3)) &
                       xorBits("1101010101000" and shifters(3)) &
                       xorBits("0100001111000" and shifters(3)) &
                       xorBits("0011001100010" and shifters(3)) &
                       xorBits("0011101100000" and shifters(3)) &
                       xorBits("1000001000100" and shifters(3)) &
                       xorBits("1100011110100" and shifters(3)) &
                       xorBits("0101101100000" and shifters(3)) &
                       xorBits("1110000110100" and shifters(3)) &
                       xorBits("0001000000100" and shifters(3)) &
                       xorBits("0111011000001" and shifters(3));
   syndromeArray(7) <= (others => 'X') when reset = '1' or internalSyndromeSourceReady = '0' else
                       xorBits("0011001111000" and shifters(0)) &
                       xorBits("0010111101000" and shifters(0)) &
                       xorBits("0000111000000" and shifters(0)) &
                       xorBits("0101001100000" and shifters(0)) &
                       xorBits("0101101110010" and shifters(0)) &
                       xorBits("0010100000100" and shifters(0)) &
                       xorBits("1010010111100" and shifters(0)) &
                       xorBits("1010000110000" and shifters(0)) &
                       xorBits("0001100111100" and shifters(0)) &
                       xorBits("1010010001100" and shifters(0)) &
                       xorBits("0001101110000" and shifters(0)) &
                       xorBits("0000100011000" and shifters(0)) &
                       xorBits("0100001100001" and shifters(0));
   syndromeArray(8) <= (others => 'X') when reset = '1' or internalSyndromeSourceReady = '0' else
                       xorBits("0001100010000" and shifters(4)) &
                       xorBits("0010000100000" and shifters(4)) &
                       xorBits("0010010110000" and shifters(4)) &
                       xorBits("1100111111110" and shifters(4)) &
                       xorBits("0101101110100" and shifters(4)) &
                       xorBits("1001010111000" and shifters(4)) &
                       xorBits("0101010100100" and shifters(4)) &
                       xorBits("1000000110100" and shifters(4)) &
                       xorBits("1000101010000" and shifters(4)) &
                       xorBits("1001010011000" and shifters(4)) &
                       xorBits("1010100100000" and shifters(4)) &
                       xorBits("0001011001000" and shifters(4)) &
                       xorBits("0001010100001" and shifters(4));
   syndromeArray(9) <= (others => 'X') when reset = '1' or internalSyndromeSourceReady = '0' else
                       xorBits("1000100111000" and shifters(2)) &
                       xorBits("1101100110100" and shifters(2)) &
                       xorBits("1011011101110" and shifters(2)) &
                       xorBits("0110000010000" and shifters(2)) &
                       xorBits("0000000010100" and shifters(2)) &
                       xorBits("1110111000100" and shifters(2)) &
                       xorBits("1100111011000" and shifters(2)) &
                       xorBits("1100100110000" and shifters(2)) &
                       xorBits("1100001111000" and shifters(2)) &
                       xorBits("0000101100000" and shifters(2)) &
                       xorBits("0001010010000" and shifters(2)) &
                       xorBits("1000001000000" and shifters(2)) &
                       xorBits("0000010110001" and shifters(2));
   syndromeArray(10) <= (others => 'X') when reset = '1' or internalSyndromeSourceReady = '0' else
                       xorBits("0100001010100" and shifters(5)) &
                       xorBits("0110000000010" and shifters(5)) &
                       xorBits("1000001110100" and shifters(5)) &
                       xorBits("1011111111100" and shifters(5)) &
                       xorBits("0101110010000" and shifters(5)) &
                       xorBits("1110000011000" and shifters(5)) &
                       xorBits("0111001011000" and shifters(5)) &
                       xorBits("1110000111000" and shifters(5)) &
                       xorBits("1110010011100" and shifters(5)) &
                       xorBits("1100010010100" and shifters(5)) &
                       xorBits("1100010111000" and shifters(5)) &
                       xorBits("1100001011100" and shifters(5)) &
                       xorBits("1100111011101" and shifters(5));
   syndromeArray(11) <= (others => 'X') when reset = '1' or internalSyndromeSourceReady = '0' else
                       xorBits("1010001011110" and shifters(1)) &
                       xorBits("1010010010100" and shifters(1)) &
                       xorBits("0110010111000" and shifters(1)) &
                       xorBits("1101011011000" and shifters(1)) &
                       xorBits("0000001011000" and shifters(1)) &
                       xorBits("1111000101000" and shifters(1)) &
                       xorBits("1010100100100" and shifters(1)) &
                       xorBits("1111110001000" and shifters(1)) &
                       xorBits("1111011101100" and shifters(1)) &
                       xorBits("0101100101100" and shifters(1)) &
                       xorBits("0101011010000" and shifters(1)) &
                       xorBits("1110000100100" and shifters(1)) &
                       xorBits("0100000010001" and shifters(1));
   syndromeArray(12) <= (others => 'X') when reset = '1' or internalSyndromeSourceReady = '0' else
                       xorBits("0001010111000" and shifters(6)) &
                       xorBits("1111110101000" and shifters(6)) &
                       xorBits("0100001001000" and shifters(6)) &
                       xorBits("1001001100000" and shifters(6)) &
                       xorBits("1111000101100" and shifters(6)) &
                       xorBits("1011000011000" and shifters(6)) &
                       xorBits("0100000010100" and shifters(6)) &
                       xorBits("1110101101000" and shifters(6)) &
                       xorBits("0101001001010" and shifters(6)) &
                       xorBits("0110111110010" and shifters(6)) &
                       xorBits("1001100101100" and shifters(6)) &
                       xorBits("0000001001010" and shifters(6)) &
                       xorBits("0111100011111" and shifters(6));
   syndromeArray(13) <= (others => 'X') when reset = '1' or internalSyndromeSourceReady = '0' else
                       xorBits("1011000000000" and shifters(3)) &
                       xorBits("1011101011000" and shifters(3)) &
                       xorBits("1011001111100" and shifters(3)) &
                       xorBits("0101101000000" and shifters(3)) &
                       xorBits("1010110001100" and shifters(3)) &
                       xorBits("1111110101000" and shifters(3)) &
                       xorBits("1100100111000" and shifters(3)) &
                       xorBits("1110011001010" and shifters(3)) &
                       xorBits("0001101001110" and shifters(3)) &
                       xorBits("1100100011000" and shifters(3)) &
                       xorBits("0010001100110" and shifters(3)) &
                       xorBits("1011100000010" and shifters(3)) &
                       xorBits("1111100101001" and shifters(3));
   syndromeArray(14) <= (others => 'X') when reset = '1' or internalSyndromeSourceReady = '0' else
                       xorBits("1011110100100" and shifters(7)) &
                       xorBits("1010101101000" and shifters(7)) &
                       xorBits("0111101011100" and shifters(7)) &
                       xorBits("1110000001000" and shifters(7)) &
                       xorBits("1101000001000" and shifters(7)) &
                       xorBits("1101100111000" and shifters(7)) &
                       xorBits("0001110111110" and shifters(7)) &
                       xorBits("0111100001010" and shifters(7)) &
                       xorBits("0100110010100" and shifters(7)) &
                       xorBits("1100010110010" and shifters(7)) &
                       xorBits("0110001101010" and shifters(7)) &
                       xorBits("1111110010000" and shifters(7)) &
                       xorBits("1011000001001" and shifters(7));
   syndromeArray(15) <= (others => 'X') when reset = '1' or internalSyndromeSourceReady = '0' else
                       xorBits("1011100101100" and shifters(0)) &
                       xorBits("0011110111000" and shifters(0)) &
                       xorBits("1000000011000" and shifters(0)) &
                       xorBits("0111110001000" and shifters(0)) &
                       xorBits("0100010011100" and shifters(0)) &
                       xorBits("0101010110010" and shifters(0)) &
                       xorBits("1001111100110" and shifters(0)) &
                       xorBits("0111101100100" and shifters(0)) &
                       xorBits("0111010010110" and shifters(0)) &
                       xorBits("0100011100010" and shifters(0)) &
                       xorBits("0010000011100" and shifters(0)) &
                       xorBits("0011010010100" and shifters(0)) &
                       xorBits("0110110001001" and shifters(0));
   syndromeArray(16) <= (others => 'X') when reset = '1' or internalSyndromeSourceReady = '0' else
                       xorBits("0011001111000" and shifters(8)) &
                       xorBits("1000111111000" and shifters(8)) &
                       xorBits("1010010100100" and shifters(8)) &
                       xorBits("0010111000000" and shifters(8)) &
                       xorBits("1011100010110" and shifters(8)) &
                       xorBits("0110100000110" and shifters(8)) &
                       xorBits("0001110101100" and shifters(8)) &
                       xorBits("1101010111110" and shifters(8)) &
                       xorBits("0001110010010" and shifters(8)) &
                       xorBits("0001110111100" and shifters(8)) &
                       xorBits("0000100000100" and shifters(8)) &
                       xorBits("0100000010100" and shifters(8)) &
                       xorBits("1011110001001" and shifters(8));
   syndromeArray(17) <= (others => 'X') when reset = '1' or internalSyndromeSourceReady = '0' else
                       xorBits("0110110010100" and shifters(4)) &
                       xorBits("0011110100000" and shifters(4)) &
                       xorBits("1000010100100" and shifters(4)) &
                       xorBits("1110111011110" and shifters(4)) &
                       xorBits("0110000011110" and shifters(4)) &
                       xorBits("0111111000100" and shifters(4)) &
                       xorBits("0001100000010" and shifters(4)) &
                       xorBits("0101101000110" and shifters(4)) &
                       xorBits("0101111011100" and shifters(4)) &
                       xorBits("0110001000100" and shifters(4)) &
                       xorBits("1000001110000" and shifters(4)) &
                       xorBits("1010110001000" and shifters(4)) &
                       xorBits("0011010000001" and shifters(4));
   syndromeArray(18) <= (others => 'X') when reset = '1' or internalSyndromeSourceReady = '0' else
                       xorBits("0000100011100" and shifters(9)) &
                       xorBits("1001111001100" and shifters(9)) &
                       xorBits("1111011000110" and shifters(9)) &
                       xorBits("0001001000110" and shifters(9)) &
                       xorBits("1011011010000" and shifters(9)) &
                       xorBits("0100100011110" and shifters(9)) &
                       xorBits("0000011000110" and shifters(9)) &
                       xorBits("1000111100000" and shifters(9)) &
                       xorBits("1011111101100" and shifters(9)) &
                       xorBits("0101010000000" and shifters(9)) &
                       xorBits("1100011100100" and shifters(9)) &
                       xorBits("1100011010100" and shifters(9)) &
                       xorBits("0101101010001" and shifters(9));
   syndromeArray(19) <= (others => 'X') when reset = '1' or internalSyndromeSourceReady = '0' else
                       xorBits("1001111010100" and shifters(2)) &
                       xorBits("0011111010110" and shifters(2)) &
                       xorBits("1010011101010" and shifters(2)) &
                       xorBits("1011100100100" and shifters(2)) &
                       xorBits("0001010000110" and shifters(2)) &
                       xorBits("1011011111010" and shifters(2)) &
                       xorBits("1110001011100" and shifters(2)) &
                       xorBits("1000111010100" and shifters(2)) &
                       xorBits("1010101001100" and shifters(2)) &
                       xorBits("0101000011000" and shifters(2)) &
                       xorBits("0110110000100" and shifters(2)) &
                       xorBits("1011111001000" and shifters(2)) &
                       xorBits("1101110000101" and shifters(2));
   syndromeArray(20) <= (others => 'X') when reset = '1' or internalSyndromeSourceReady = '0' else
                       xorBits("0000111100010" and shifters(10)) &
                       xorBits("0110101010110" and shifters(10)) &
                       xorBits("0000111011100" and shifters(10)) &
                       xorBits("0001011011010" and shifters(10)) &
                       xorBits("1110110000110" and shifters(10)) &
                       xorBits("1101111001100" and shifters(10)) &
                       xorBits("0000110101100" and shifters(10)) &
                       xorBits("0000100010100" and shifters(10)) &
                       xorBits("1110001110100" and shifters(10)) &
                       xorBits("0111110101100" and shifters(10)) &
                       xorBits("0110000010000" and shifters(10)) &
                       xorBits("1010111101000" and shifters(10)) &
                       xorBits("0100101001101" and shifters(10));
   syndromeArray(21) <= (others => 'X') when reset = '1' or internalSyndromeSourceReady = '0' else
                       xorBits("0101000001110" and shifters(5)) &
                       xorBits("1100000100000" and shifters(5)) &
                       xorBits("0000001001110" and shifters(5)) &
                       xorBits("1101111111110" and shifters(5)) &
                       xorBits("1101100010100" and shifters(5)) &
                       xorBits("1101111100100" and shifters(5)) &
                       xorBits("0110010101100" and shifters(5)) &
                       xorBits("0101111100100" and shifters(5)) &
                       xorBits("0101101100110" and shifters(5)) &
                       xorBits("0111111000110" and shifters(5)) &
                       xorBits("0010001000100" and shifters(5)) &
                       xorBits("1100001001110" and shifters(5)) &
                       xorBits("1010111011111" and shifters(5));
   syndromeArray(22) <= (others => 'X') when reset = '1' or internalSyndromeSourceReady = '0' else
                       xorBits("0010110111100" and shifters(11)) &
                       xorBits("1001101100110" and shifters(11)) &
                       xorBits("1010011100110" and shifters(11)) &
                       xorBits("0100001101100" and shifters(11)) &
                       xorBits("0101001000100" and shifters(11)) &
                       xorBits("0010000100100" and shifters(11)) &
                       xorBits("1010011101100" and shifters(11)) &
                       xorBits("1101011101010" and shifters(11)) &
                       xorBits("1000110000000" and shifters(11)) &
                       xorBits("0000101111110" and shifters(11)) &
                       xorBits("1101111101010" and shifters(11)) &
                       xorBits("1010101111100" and shifters(11)) &
                       xorBits("0011111011011" and shifters(11));
   syndromeArray(23) <= (others => 'X') when reset = '1' or internalSyndromeSourceReady = '0' else
                       xorBits("1010111101110" and shifters(1)) &
                       xorBits("1100011100110" and shifters(1)) &
                       xorBits("0011110100100" and shifters(1)) &
                       xorBits("0111001001100" and shifters(1)) &
                       xorBits("0100010001100" and shifters(1)) &
                       xorBits("0110011100000" and shifters(1)) &
                       xorBits("0010111110010" and shifters(1)) &
                       xorBits("0010011110000" and shifters(1)) &
                       xorBits("1010001101010" and shifters(1)) &
                       xorBits("0000010010010" and shifters(1)) &
                       xorBits("0001000001100" and shifters(1)) &
                       xorBits("1111011100010" and shifters(1)) &
                       xorBits("1110010000101" and shifters(1));
   syndromeArray(24) <= (others => 'X') when reset = '1' or internalSyndromeSourceReady = '0' else
                       xorBits("0010011101110" and shifters(12)) &
                       xorBits("0001101101100" and shifters(12)) &
                       xorBits("1100101110100" and shifters(12)) &
                       xorBits("0100101110000" and shifters(12)) &
                       xorBits("0001010100000" and shifters(12)) &
                       xorBits("1001110011010" and shifters(12)) &
                       xorBits("0010110101000" and shifters(12)) &
                       xorBits("1111001000110" and shifters(12)) &
                       xorBits("1100110000100" and shifters(12)) &
                       xorBits("0110000001110" and shifters(12)) &
                       xorBits("1000101101010" and shifters(12)) &
                       xorBits("0100101000010" and shifters(12)) &
                       xorBits("0110011000111" and shifters(12));
   syndromeArray(25) <= (others => 'X') when reset = '1' or internalSyndromeSourceReady = '0' else
                       xorBits("1010100000100" and shifters(6)) &
                       xorBits("0101011110000" and shifters(6)) &
                       xorBits("0101010001000" and shifters(6)) &
                       xorBits("0110111001000" and shifters(6)) &
                       xorBits("1000001100010" and shifters(6)) &
                       xorBits("1011001100100" and shifters(6)) &
                       xorBits("0001100000110" and shifters(6)) &
                       xorBits("0010001111000" and shifters(6)) &
                       xorBits("0011000001000" and shifters(6)) &
                       xorBits("0001100111100" and shifters(6)) &
                       xorBits("1011001010010" and shifters(6)) &
                       xorBits("0101100001000" and shifters(6)) &
                       xorBits("1000010110111" and shifters(6));
   syndromeArray(26) <= (others => 'X') when reset = '1' or internalSyndromeSourceReady = '0' else
                       xorBits("0101000101000" and shifters(13)) &
                       xorBits("0000001000000" and shifters(13)) &
                       xorBits("0001100100000" and shifters(13)) &
                       xorBits("1001110010110" and shifters(13)) &
                       xorBits("1011000101100" and shifters(13)) &
                       xorBits("0101011111010" and shifters(13)) &
                       xorBits("0001001101000" and shifters(13)) &
                       xorBits("1011001110000" and shifters(13)) &
                       xorBits("0110001010100" and shifters(13)) &
                       xorBits("1101010011010" and shifters(13)) &
                       xorBits("1001100010000" and shifters(13)) &
                       xorBits("0101100101110" and shifters(13)) &
                       xorBits("0111001101001" and shifters(13));
   syndromeArray(27) <= (others => 'X') when reset = '1' or internalSyndromeSourceReady = '0' else
                       xorBits("1100001100000" and shifters(3)) &
                       xorBits("0000001111100" and shifters(3)) &
                       xorBits("1110111101110" and shifters(3)) &
                       xorBits("1110000011000" and shifters(3)) &
                       xorBits("1111001110010" and shifters(3)) &
                       xorBits("0001111110000" and shifters(3)) &
                       xorBits("1000111010100" and shifters(3)) &
                       xorBits("1010011101000" and shifters(3)) &
                       xorBits("0111100011010" and shifters(3)) &
                       xorBits("1010011010100" and shifters(3)) &
                       xorBits("0100010101010" and shifters(3)) &
                       xorBits("1111011110000" and shifters(3)) &
                       xorBits("0100001110001" and shifters(3));
   syndromeArray(28) <= (others => 'X') when reset = '1' or internalSyndromeSourceReady = '0' else
                       xorBits("1000111111100" and shifters(14)) &
                       xorBits("1000001010010" and shifters(14)) &
                       xorBits("0101010110000" and shifters(14)) &
                       xorBits("1000110000010" and shifters(14)) &
                       xorBits("0001100111100" and shifters(14)) &
                       xorBits("0000011111000" and shifters(14)) &
                       xorBits("1011001110000" and shifters(14)) &
                       xorBits("1011101100110" and shifters(14)) &
                       xorBits("0101110100100" and shifters(14)) &
                       xorBits("0100110101110" and shifters(14)) &
                       xorBits("1000011111000" and shifters(14)) &
                       xorBits("1101100110100" and shifters(14)) &
                       xorBits("0011011111101" and shifters(14));
   syndromeArray(29) <= (others => 'X') when reset = '1' or internalSyndromeSourceReady = '0' else
                       xorBits("0000101110010" and shifters(7)) &
                       xorBits("1100011111000" and shifters(7)) &
                       xorBits("1010100111110" and shifters(7)) &
                       xorBits("0100101100000" and shifters(7)) &
                       xorBits("1101011000000" and shifters(7)) &
                       xorBits("1010101010100" and shifters(7)) &
                       xorBits("0100100010110" and shifters(7)) &
                       xorBits("0011100110000" and shifters(7)) &
                       xorBits("0111110010110" and shifters(7)) &
                       xorBits("1100011000100" and shifters(7)) &
                       xorBits("0010010101000" and shifters(7)) &
                       xorBits("1100111110100" and shifters(7)) &
                       xorBits("0001101100001" and shifters(7));
   syndromeArray(30) <= (others => 'X') when reset = '1' or internalSyndromeSourceReady = '0' else
                       xorBits("1010100000100" and shifters(15)) &
                       xorBits("0110110010010" and shifters(15)) &
                       xorBits("0110110110000" and shifters(15)) &
                       xorBits("0001000010100" and shifters(15)) &
                       xorBits("1001000110100" and shifters(15)) &
                       xorBits("0101000110010" and shifters(15)) &
                       xorBits("0010001100100" and shifters(15)) &
                       xorBits("0110000010110" and shifters(15)) &
                       xorBits("0101101100010" and shifters(15)) &
                       xorBits("0011010001110" and shifters(15)) &
                       xorBits("0001010001000" and shifters(15)) &
                       xorBits("0010000110010" and shifters(15)) &
                       xorBits("1101101001011" and shifters(15));
   syndromeArray(31) <= (others => 'X') when reset = '1' or internalSyndromeSourceReady = '0' else
                       xorBits("0001101110010" and shifters(0)) &
                       xorBits("0011100110100" and shifters(0)) &
                       xorBits("1100011000100" and shifters(0)) &
                       xorBits("0100000110000" and shifters(0)) &
                       xorBits("1000100000110" and shifters(0)) &
                       xorBits("1100010000100" and shifters(0)) &
                       xorBits("1100011011010" and shifters(0)) &
                       xorBits("0010100111010" and shifters(0)) &
                       xorBits("1011010100110" and shifters(0)) &
                       xorBits("1100000001000" and shifters(0)) &
                       xorBits("0110000100110" and shifters(0)) &
                       xorBits("1101000100110" and shifters(0)) &
                       xorBits("0101000110001" and shifters(0));
   syndromeArray(32) <= (others => 'X') when reset = '1' or internalSyndromeSourceReady = '0' else
                       xorBits("1001001000100" and shifters(16)) &
                       xorBits("1110110000000" and shifters(16)) &
                       xorBits("1100000110100" and shifters(16)) &
                       xorBits("1010101111110" and shifters(16)) &
                       xorBits("0010111101000" and shifters(16)) &
                       xorBits("1001111110010" and shifters(16)) &
                       xorBits("0110000001110" and shifters(16)) &
                       xorBits("0100001110010" and shifters(16)) &
                       xorBits("1111011110010" and shifters(16)) &
                       xorBits("0111011110000" and shifters(16)) &
                       xorBits("1100010110010" and shifters(16)) &
                       xorBits("0011100110110" and shifters(16)) &
                       xorBits("0101110010111" and shifters(16));
   syndromeArray(33) <= (others => 'X') when reset = '1' or internalSyndromeSourceReady = '0' else
                       xorBits("1010000101100" and shifters(8)) &
                       xorBits("1001011011100" and shifters(8)) &
                       xorBits("1111111100010" and shifters(8)) &
                       xorBits("1010000111000" and shifters(8)) &
                       xorBits("1001011110110" and shifters(8)) &
                       xorBits("0001110110010" and shifters(8)) &
                       xorBits("1011100010010" and shifters(8)) &
                       xorBits("0100011000110" and shifters(8)) &
                       xorBits("0110010010100" and shifters(8)) &
                       xorBits("0000010010110" and shifters(8)) &
                       xorBits("0010100010010" and shifters(8)) &
                       xorBits("1101010000110" and shifters(8)) &
                       xorBits("0011001110001" and shifters(8));


   process(reset, clk)

      variable newShifter :                                             --   This holds a new value for a shift register.
                       std_logic_vector(SIZE_OF_SHIFTER - 1 downto 0);

   begin

      if reset = '1' then

         inputBuffer <= (others => '0');  -- Should this be X?
         inputBufferFlag <= '0';
         internalSyndromeSourceReady <= '0';
         shifters <= (others => "0000000000000");  -- Should this be X?
         wordCounter <= 0;

      elsif rising_edge(clk) then

         --      Create <inputBuffer>.

         if inputSourceReady = '1' and
            (inputBufferFlag = '0' or internalSyndromeSourceReady = '0' or syndromeDestinationReady = '1') then
            inputBuffer <= inputData;
         end if;


         --      Create <inputBufferFlag>.

         if inputSourceReady = '1' then
            inputBufferFlag <= '1';
         elsif internalSyndromeSourceReady = '0' or syndromeDestinationReady = '1' then
            inputBufferFlag <= '0';
         end if;


         --      Create <internalSyndromeSourceReady>.  Set it to one when we take the last word of a sector out of
         -- <inputBuffer>.  Set it to zero when syndromes transfer out of the entity.  If neither condition is true, leave it
         -- alone.  ?? Can both of these conditions be true at the same time?  If they are, should the value go to one?

         if inputBufferFlag = '1' and
            (internalSyndromeSourceReady = '0' or syndromeDestinationReady = '1') and
            wordCounter = NUMBER_OF_WORDS_PER_SECTOR - 1 then
            internalSyndromeSourceReady <= '1';
         elsif internalSyndromeSourceReady = '1' and syndromeDestinationReady = '1' then
            internalSyndromeSourceReady <= '0';
         end if;


         --      Create <shifters>.  If a word is transferring out of <inputBuffer> during this clock period, shift the word's
         -- bits into each of the shift registers.  If <wordCounter> is zero, set the shift register's value to zero before
         -- processing the new word.  If we're processing the last word of the sector, shift only NUMBER_OF_BITS_IN_LAST_WORD
         -- bits into each shift register.  For each bit in the word, shift each shift register left one bit.  If a one shifts
         -- out of the most significant bit of a shift register, exclusive-OR the shift register's mask into the shift register
         -- after the shift.

         if inputBufferFlag = '1' and (internalSyndromeSourceReady = '0' or syndromeDestinationReady = '1') then
            for i in 0 to NUMBER_OF_SHIFTERS - 1 loop
               if wordCounter = 0 then
                  newShifter := (others => '0');
               else
                  newShifter := shifters(i);
               end if;
               for j in 0 to 15 loop
                  if wordCounter = NUMBER_OF_WORDS_PER_SECTOR - 1 and j = NUMBER_OF_BITS_IN_LAST_WORD then
                     exit;
                  end if;
                  if newShifter(SIZE_OF_SHIFTER - 1) = '1' then
                     newShifter := (newShifter(SIZE_OF_SHIFTER - 2 downto 0) & inputBuffer(j)) xor MASKS(i);
                  else
                     newShifter := newShifter(SIZE_OF_SHIFTER - 2 downto 0) & inputBuffer(j);
                  end if;
               end loop;
               shifters(i) <= newShifter;
            end loop;
         end if;


         --      Create <wordCounter>.  Increment it each time we take a word out of <inputBuffer>.

         if inputBufferFlag = '1' and (internalSyndromeSourceReady = '0' or syndromeDestinationReady = '1') then
            if wordCounter = NUMBER_OF_WORDS_PER_SECTOR - 1 then
               wordCounter <= 0;
            else
               wordCounter <= wordCounter + 1;
            end if;
         end if;

      end if;

   end process;

end architecture;


-- end of syndromeCalculator.vhdl
