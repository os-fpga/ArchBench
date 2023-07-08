-- vhdl/errorIdentifier/errorIdentifier.vhdl


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.config.all;
use work.bug.all;
use work.errorIdentifierPackage.all;


entity errorIdentifier is
   port(
      sigmaSourceReady : in std_logic;
      sigmaArray : in sigmaArrayT;
      sigmaDestinationReady : out std_logic;
      outputSourceReady : out std_logic;
      outputData : out std_logic_vector(15 downto 0);
      outputDestinationReady : in std_logic;
      history : out std_logic_vector(31 downto 0);
      bug : out std_logic_vector(31 downto 0);
      clk : in std_logic;
      reset : in std_logic
   );
end entity;


architecture behavioral of errorIdentifier is

   --      Set NUMBER_OF_BITS_IN_LAST_WORD to the number of bits in a sector's last word.  We set the unused bits to zero.

   constant NUMBER_OF_BITS_IN_LAST_WORD : integer := CONFIG_NUMBER_OF_PARITY_BITS mod 16;


   --      Set LAST_WORD_MASK to a mask to AND with the last word of a sector to clear unused bits in the last word.  We need
   -- this constant rather than using the value of the constant in the code because the compiler puts the bits into a different
   -- order if we don't use a constant, I guess the default meaning is for bits to be 0 to 15 rather than 15 downto 0.

   constant LAST_WORD_MASK : std_logic_vector(15 downto 0) :=
      (15 downto NUMBER_OF_BITS_IN_LAST_WORD => '0', NUMBER_OF_BITS_IN_LAST_WORD - 1 downto 0 => '1');


   --      Set <multiplierArrayT> to the type of an array of 13-bit values.  Each element is an element of GF(2**m).  The
   -- number of elements in the array is CONFIG_MAX_NUMBER_OF_BAD_BITS times eight.  The factor of eight corresponds to the
   -- number of bits in a byte.

   type multiplierSubArrayT is array(1 to CONFIG_MAX_NUMBER_OF_BAD_BITS) of std_logic_vector(12 downto 0);
   type multiplierArrayT is array(7 downto 0) of multiplierSubArrayT;


   --      Set <firstConstants> to an array of values we use to form the first byte for a sector.  This is an array of
   -- sub-arrays.  Each sub-array corresponds to a bit in a byte.  The number of elements in each sub-array equals the maximum
   -- number of bad bits we can fix in a sector.  The number of multipliers in this entity equals CONFIG_MAX_NUMBER_OF_BAD_BITS
   -- times eight; the eight comes from the number of bits in a byte.  The initial values of the multipliers use these
   -- constants and the sigma values from the error locator.

   constant firstConstants : multiplierArrayT := (
      multiplierSubArrayT'("1101101000110", "1110111101101", "0110110000011", "1011101111110", "0101001110011",
                           "1101101110000", "1101100000101", "0001100110110", "1001011001010", "0000001111110",
                           "0111110001000", "1100011111001", "0100000000100", "0110111101000", "1101001001010",
                           "0011010101100", "1000010001010"),
      multiplierSubArrayT'("0110110100011", "1111101110000", "0010110110011", "1010101111001", "1100101011000",
                           "0100001101011", "1011011111001", "0000001000011", "1111101100000", "1111111011001",
                           "0001011100000", "0001001011110", "1111100010101", "0001111001101", "0011010011111",
                           "1000000000101", "1101111101001"),
      multiplierSubArrayT'("1011011011100", "0011111011100", "0010010110101", "1111101011110", "0100011001100",
                           "0100010100111", "0101111101010", "1000100101101", "0001000001110", "0011001111101",
                           "1001010001100", "1001000111000", "1011110100100", "0000111010001", "1010110101001",
                           "1110011010011", "0111101000001"),
      multiplierSubArrayT'("0101101101110", "0000111110111", "0110010010011", "1010111111011", "0010001000101",
                           "1101010101000", "0010110010100", "0000001110001", "0101010100110", "1110110010001",
                           "1001010011110", "0100101010111", "1100101110111", "0110001111110", "0101111100000",
                           "1010100000001", "1110011011000"),
      multiplierSubArrayT'("0010110110111", "0100001111011", "0010110010001", "0001101011110", "1101100101000",
                           "0110001101111", "1101100000001", "1001011101100", "1111100101100", "0100110111001",
                           "0110101101111", "0111111001110", "0111100000001", "0110111111000", "1011011100111",
                           "0111101011100", "0010101000011"),
      multiplierSubArrayT'("1001011010110", "0101000011000", "1110010111010", "1010000111011", "1100011010010",
                           "0011010110011", "1000111111011", "1000010011111", "0110001001010", "1111101110011",
                           "0010100110110", "0101111010011", "1110011001111", "0110111110001", "1111101110100",
                           "1100100111001", "1110110000000"),
      multiplierSubArrayT'("0100101101011", "0001010000110", "1101110011100", "0001101000010", "1111011001111",
                           "0110010011111", "0100001100101", "1001110111100", "0011101100100", "1000011000010",
                           "0110000001101", "1101011111000", "1110100100101", "0001000001010", "0001111010010",
                           "1111010000100", "0011100001010"),
      multiplierSubArrayT'("1010010111000", "1000010101100", "1001101111110", "1110000111100", "0110111110011",
                           "0111010110110", "1111011011001", "0011010010001", "1001111001111", "0111001110000",
                           "1001110000001", "1110111011001", "1110100110011", "1000111010110", "1100100100100",
                           "0111111010111", "0011110001001")
   );


   --      Set <nextConstants> to an array of sub-arrays.  Each sub-array corresponds to a bit in a byte.  The number of
   -- elements in each sub-array equals the maximum number of bad bits we can fix in a sector.  The number of multipliers in
   -- this entity equals CONFIG_MAX_NUMBER_OF_BAD_BITS times eight; the eight comes from the number of bits in a byte.

   constant nextConstants : multiplierArrayT := (
      multiplierSubArrayT'("0000100000000", "0000011011000", "1100001011010", "1000101110110", "1101101110101",
                           "1111100000101", "0110001001000", "0110110010110", "1001100010100", "1100011101000",
                           "0001100000001", "0000001101000", "0100000101101", "0101111011011", "1110011110010",
                           "1101001100001", "0101111011101"),
      multiplierSubArrayT'("0000100000000", "0000011011000", "1100001011010", "1000101110110", "1101101110101",
                           "1111100000101", "0110001001000", "0110110010110", "1001100010100", "1100011101000",
                           "0001100000001", "0000001101000", "0100000101101", "0101111011011", "1110011110010",
                           "1101001100001", "0101111011101"),
      multiplierSubArrayT'("0000100000000", "0000011011000", "1100001011010", "1000101110110", "1101101110101",
                           "1111100000101", "0110001001000", "0110110010110", "1001100010100", "1100011101000",
                           "0001100000001", "0000001101000", "0100000101101", "0101111011011", "1110011110010",
                           "1101001100001", "0101111011101"),
      multiplierSubArrayT'("0000100000000", "0000011011000", "1100001011010", "1000101110110", "1101101110101",
                           "1111100000101", "0110001001000", "0110110010110", "1001100010100", "1100011101000",
                           "0001100000001", "0000001101000", "0100000101101", "0101111011011", "1110011110010",
                           "1101001100001", "0101111011101"),
      multiplierSubArrayT'("0000100000000", "0000011011000", "1100001011010", "1000101110110", "1101101110101",
                           "1111100000101", "0110001001000", "0110110010110", "1001100010100", "1100011101000",
                           "0001100000001", "0000001101000", "0100000101101", "0101111011011", "1110011110010",
                           "1101001100001", "0101111011101"),
      multiplierSubArrayT'("0000100000000", "0000011011000", "1100001011010", "1000101110110", "1101101110101",
                           "1111100000101", "0110001001000", "0110110010110", "1001100010100", "1100011101000",
                           "0001100000001", "0000001101000", "0100000101101", "0101111011011", "1110011110010",
                           "1101001100001", "0101111011101"),
      multiplierSubArrayT'("0000100000000", "0000011011000", "1100001011010", "1000101110110", "1101101110101",
                           "1111100000101", "0110001001000", "0110110010110", "1001100010100", "1100011101000",
                           "0001100000001", "0000001101000", "0100000101101", "0101111011011", "1110011110010",
                           "1101001100001", "0101111011101"),
      multiplierSubArrayT'("0000100000000", "0000011011000", "1100001011010", "1000101110110", "1101101110101",
                           "1111100000101", "0110001001000", "0110110010110", "1001100010100", "1100011101000",
                           "0001100000001", "0000001101000", "0100000101101", "0101111011011", "1110011110010",
                           "1101001100001", "0101111011101")
   );


   --      Set NUMBER_OF_WORDS_PER_SECTOR to the number of 16-bit words in a sector.

   constant NUMBER_OF_WORDS_PER_SECTOR : integer := (4096 + 32 + 32 + CONFIG_NUMBER_OF_PARITY_BITS + 15) / 16;


   signal bytes : std_logic_vector(15 downto 0);                        --   This holds two bytes for an output word.  Bytes
                                                                        -- shift through this from the most significant half to
                                                                        -- the least significant half.  Each time two bytes
                                                                        -- that form an output word are in this, we transfer
                                                                        -- the word out of the entity.

   signal internalOutputSourceReady : std_logic;                        --   This drives <outputSourceReady>.

   signal multiplierArray : multiplierArrayT;                           --   This is an array of 13-bit values.  Each element
                                                                        -- is an element of GF(2**m).

   signal numberOfWords : integer range 0 to                            --   This counts the words in a sector.
                                       NUMBER_OF_WORDS_PER_SECTOR - 1;

   signal state : integer range 0 to 3;                                 --   This is zero when we're waiting for input.  When
                                                                        -- we get input sigma values, we initialize the
                                                                        -- multiplier array and go to state one.  Then we shift
                                                                        -- the first byte of a sector into <bytes> and set the
                                                                        -- state to two.  Then we shift the second byte of the
                                                                        -- first word into <bytes> and set the state to three.
                                                                        -- Then we transfer a word out, shift the first byte of
                                                                        -- the next word into <bytes>, and go back to state
                                                                        -- two.  We stay in states two and three until we've
                                                                        -- processed the entire sector and then the state goes
                                                                        -- back to zero.


   --      This function multiplies two elements of GF(2**m) and returns the resulting element of GF(2**m).

   function multiply(a : std_logic_vector(12 downto 0);
                     b : std_logic_vector(12 downto 0)) return std_logic_vector is
      constant MASK : std_logic_vector(12 downto 0) := "0000000011011";
      variable c : std_logic_vector(12 downto 0);
      variable shiftedA : std_logic_vector(12 downto 0);
   begin
      c := (others => '0');
      shiftedA := a;
      for i in 0 to 12 loop
         if b(i) = '1' then
            c := c xor shiftedA;
         end if;
         if shiftedA(12) = '1' then
            shiftedA := (shiftedA(11 downto 0) & '0') xor MASK;
         else
            shiftedA := shiftedA(11 downto 0) & '0';
         end if;
      end loop;
      return c;
   end function;

begin

   --      Create <bug>.  Set it to zero.

   bug <= (others => '0');


   --      Create <history>.  Set it to zero.

   history <= (others => '0');


   --      Create <internalOutputSourceReady>.  Set it to one if the state is three; otherwise, set it to zero.

   internalOutputSourceReady <= '1' when state = 3 else
                                '0';


   --      Create <outputData>.  If <internalOutputSourceReady> is zero, set it to X; otherwise, if the next word isn't the
   -- last word of a sector or the last word contains 16 bits, set it to <bytes>; otherwise, set it to <bytes> but with zero in
   -- the unused bits in the last word.

   outputData <= "XXXXXXXXXXXXXXXX" when internalOutputSourceReady = '0' else
                 bytes when numberOfWords /= NUMBER_OF_WORDS_PER_SECTOR - 1 or NUMBER_OF_BITS_IN_LAST_WORD = 16 else
                 bytes and LAST_WORD_MASK;


   --      Create <outputSourceReady>.  Set it equal to <internalOutputSourceReady>.

   outputSourceReady <= internalOutputSourceReady;


   --      Create <sigmaDestinationReady>.  If <state> is zero, set it to one; otherwise, set it to zero.

   sigmaDestinationReady <= '1' when state = 0 else
                            '0';


   process(reset, clk)

      variable byte : std_logic_vector(7 downto 0);                     --   This is a new byte that we might shift into the
                                                                        -- most significant half of <bytes>.

      variable sum : std_logic_vector(12 downto 0);                     --   This is the exclusive-OR of the outputs of the
                                                                        -- multipliers that correspond to a bit in
                                                                        -- <outputData>.

   begin

      if reset = '1' then

         bytes <= (others => 'X');
         multiplierArray <= (others => multiplierSubArrayT'(others => "XXXXXXXXXXXXX"));
         numberOfWords <= 0;
         state <= 0;

      elsif rising_edge(clk) then

         --      Set <byte> according to <multiplierArray>.

         byte := X"00";
         for bit in 0 to 7 loop
            sum := "0000000000001";
            for i in 1 to CONFIG_MAX_NUMBER_OF_BAD_BITS loop
               sum := sum xor multiplierArray(bit)(i);
            end loop;
            if sum = "0000000000000" then
               byte(bit) := '1';
            end if;
         end loop;


         --      Create <bytes>.  If <outputDestinationReady> is one, shift the most significant byte to the least significant
         -- byte and then set the most significant byte to <byte>; otherwise, don't do anything.

         if outputDestinationReady = '1' then
            bytes <= byte & bytes(15 downto 8);
         end if;


         --      Create <multiplierArray>.

         for bit in 0 to 7 loop
            for i in 1 to CONFIG_MAX_NUMBER_OF_BAD_BITS loop
               if state = 0 then
                  multiplierArray(bit)(i) <= multiply(sigmaArray(i), firstConstants(bit)(i));
               else
                  if outputDestinationReady = '1' then
                     multiplierArray(bit)(i) <= multiply(multiplierArray(bit)(i), nextConstants(bit)(i));
                  end if;
               end if;
            end loop;
         end loop;


         --      Create <numberOfWords>.  If a word is transferring out during this clock period, increment <numberOfWords>,
         -- wrapping from NUMBER_OF_WORDS_PER_SECTOR minus one to zero if necessary.

         if internalOutputSourceReady = '1' and outputDestinationReady = '1' then
            if numberOfWords = NUMBER_OF_WORDS_PER_SECTOR - 1 then
               numberOfWords <= 0;
            else
               numberOfWords <= numberOfWords + 1;
            end if;
         end if;


         --      Create <state>.

         case state is
            when 0 =>
               if sigmaSourceReady = '1' then
                  state <= 1;
               end if;

            when 1 =>
               if outputDestinationReady = '1' then
                  state <= 2;
               end if;

            when 2 =>
               if outputDestinationReady = '1' then
                  state <= 3;
               end if;

            when 3 =>
               if outputDestinationReady = '1' then
                  if numberOfWords = NUMBER_OF_WORDS_PER_SECTOR - 1 then
                     state <= 0;
                  else
                     state <= 2;
                  end if;
               end if;

         end case;

      end if;

   end process;

end architecture;


-- end of errorIdentifier.vhdl
