-- vhdl/postBchDecoder/postBchDecoder.vhdl


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.config.all;
use work.crcPackage.all;


entity postBchDecoder is
   port(
      inputSourceReady0 : in std_logic;
      inputData0 : in std_logic_vector(15 downto 0);
      inputDestinationReady0 : out std_logic;
      inputSourceReady1 : in std_logic;
      inputData1 : in std_logic_vector(15 downto 0);
      inputDestinationReady1 : out std_logic;
      outputSourceReady : out std_logic;
      outputData : out std_logic_vector(31 downto 0);
      outputDestinationReady : in std_logic;
      history : out std_logic_vector(31 downto 0);
      bug : out std_logic_vector(31 downto 0);
      clk : in std_logic;
      reset : in std_logic
   );
end entity;


architecture behavioral of postBchDecoder is

   constant NUMBER_OF_WORDS_PER_SECTOR : integer :=                     --   This is the number of words in an encoded sector.
               256 + 2 + 2 + (CONFIG_NUMBER_OF_PARITY_BITS + 15) / 16;  -- This counts the most significant half of the
                                                                        -- sector-tag dword as a word even though we don't use
                                                                        -- all of the bits in the sector-tag dword.  This
                                                                        -- counts the last word as a word even if it doesn't
                                                                        -- contain 16 bits.

   constant SIZE_OF_QUEUE : integer := 512;                             --   This is the number of words that fit in a queue of
                                                                        -- words.  The queue contains room for almost two
                                                                        -- sectors of data.

   signal abcCounter : integer range 0 to 2;                            --   This is the number of words in <abcRegister>.

   signal abcRegister : std_logic_vector(31 downto 0);                  --   This holds two words that form a dword that's
                                                                        -- ready to go to <outputData>.  New words enter into
                                                                        -- the most significant half of this, and the most
                                                                        -- significant half transfers to the least significant
                                                                        -- half.

   signal crc : std_logic_vector(31 downto 0);                          --   This is a 32-bit intermediate CRC value.  We
                                                                        -- initialize this to 0xFFFFFFFF at the start of a
                                                                        -- sector and then we update this each time we transfer
                                                                        -- a dword to <outputData>.  After processing the last
                                                                        -- data dword in a sector, we take the ones' complement
                                                                        -- of this and then compare the result to a CRC value
                                                                        -- that follows the last data dword of the sector.

   signal crcErrorFlag : std_logic;                                     --   This is one if <crc> doesn't equal a CRC from
                                                                        -- NAND; otherwise, this is zero.

   signal internalInputDestinationReady0 : std_logic;                   --   This drives <inputDestinationReady0>.

   signal internalInputDestinationReady1 : std_logic;                   --   This drives <inputDestinationReady1>.

   signal internalOutputSourceReady : std_logic;                        --   This drives <outputSourceReady>.

   signal nonrecoverableEccErrorFlag : std_logic;                       --   This is the value for bit six in the
                                                                        -- error-information dword that we output at the end of
                                                                        -- a sector.  This is one if the decoder wasn't able to
                                                                        -- correct all of the bit errors in the sector.  We set
                                                                        -- this to one if the number of bit errors is greater
                                                                        -- than CONFIG_MAX_NUMBER_OF_BAD_BITS.

   signal numberOfBadBits : std_logic_vector(4 downto 0);               --   This is the number of bad bits the decoder
                                                                        -- detected.  This is in the range 0 through
                                                                        -- CONFIG_MAX_NUMBER_OF_BAD_BITS.

   signal numberOfWords : integer range                                 --   This counts words in a sector as we process them.
                                      0 to NUMBER_OF_WORDS_PER_SECTOR;  -- We increment this each time we transfer a word into
                                                                        -- <abcRegister>.  A value of zero means we haven't
                                                                        -- copied the first word of a sector to <abcRegsiter>
                                                                        -- yet.  Values in the range one through 256 correspond
                                                                        -- to 256 words of sector data.  A value of 257
                                                                        -- corresponds to the least significant half of the
                                                                        -- sector-tag dword.  A value of 258 corresponds to the
                                                                        -- most significant half of the sector-tag dword.
                                                                        -- Values of 259 and 260 correspond to the CRC dword.
                                                                        -- Values in the range 261 through
                                                                        -- NUMBER_OF_WORDS_PER_SECTOR correspond to words that
                                                                        -- contain parity information.

   type queueBufferT is array(0 to SIZE_OF_QUEUE - 1) of                --   This is a buffer that holds up to two sectors of
      std_logic_vector(15 downto 0);                                    -- data.
   signal queueBuffer : queueBufferT :=
                                       (others => "XXXXXXXXXXXXXXXX");

   signal queueHead : integer range 0 to SIZE_OF_QUEUE * 2 - 1;         --   This is the queue's head index.  This modulo
                                                                        -- SIZE_OF_QUEUE is the index into <queueBuffer> of the
                                                                        -- next word to remove from the queue.  A removal from
                                                                        -- the queue increments this, wrapping from
                                                                        -- SIZE_OF_QUEUE * 2 - 1 to 0 if necessary.

   signal queueTail : integer range 0 to SIZE_OF_QUEUE * 2 - 1;         --   This is the queue's tail index.  This modulo
                                                                        -- SIZE_OF_QUEUE is the index into <queueBuffer> for
                                                                        -- the next insertion into the queue.  An insertion
                                                                        -- into the queue increments this, wrapping from
                                                                        -- SIZE_OF_QUEUE * 2 - 1 to 0 if necessary.

   signal word : std_logic_vector(15 downto 0);                         --   This is the exclusive-OR of the word at the head
                                                                        -- of the queue and the word at <inputData1>.

begin

   --      Create <bug>.  Set it to zero.

   bug <= (others => '0');


   --      Create <history>.  Set it to zero.

   history <= (others => '0');


   --      Create <inputDestinationReady0>.  Set it to <internalInputDestinationReady0>.

   inputDestinationReady0 <= internalInputDestinationReady0;


   --      Create <inputDestinationReady1>.  Set it to <internalInputDestinationReady1>.

   inputDestinationReady1 <= internalInputDestinationReady1;


   --      Create <internalInputDestinationReady0>.  If the queue isn't full, set it to one; otherwise, set it to zero.  The
   -- queue can hold up to SIZE_OF_QUEUE elements.  The queue is full if the head and tail are equal except for their most
   -- significant bits.

   internalInputDestinationReady0 <= '1' when queueTail / SIZE_OF_QUEUE = queueHead / SIZE_OF_QUEUE else
                                     '1' when queueTail mod SIZE_OF_QUEUE /= queueHead mod SIZE_OF_QUEUE else
                                     '0';


   --      Create <internalInputDestinationReady1>.  If <abcRegister> can't take a word, set it to zero; otherwise, if the next
   -- word requires a word from the queue but the queue is empty, set it to zero; otherwise, set it to one.

   internalInputDestinationReady1 <= '0' when outputDestinationReady = '0' or numberOfWords = NUMBER_OF_WORDS_PER_SECTOR else
                                     '0' when numberOfWords < 260 and queueHead = queueTail else
                                     '1';


   --      Create <internalOutputSourceReady>.  If we're processing one of the 128 data dwords or the sector-tag dword and
   -- <abcRegister> contains a dword, set it to one; otherwise, if we're ready to output the error-information dword that
   -- follows a sector, set it to one; otherwise, set it to zero.

   internalOutputSourceReady <= '1' when numberOfWords <= 258 and abcCounter = 2 else
                                '1' when numberOfWords = NUMBER_OF_WORDS_PER_SECTOR else
                                '0';


   --      Create <outputData>.  If we're processing one of the 128 data dwords or the sector-tag dword and <abcRegister>
   -- contains a dword, set it to <abcRegister>; otherwise, if we're ready to output the error-information dword that follows a
   -- sector, set it to error information; otherwise, set it to X.

   outputData <= abcRegister when numberOfWords <= 258 and abcCounter = 2 else
                 X"000000" & crcErrorFlag & nonrecoverableEccErrorFlag & '0' & numberOfBadBits when numberOfWords =
                                                                                                NUMBER_OF_WORDS_PER_SECTOR else
                 (others => 'X');


   --      Create <outputSourceReady>.  Set it to <internalOutputSourceReady>.

   outputSourceReady <= internalOutputSourceReady;


   --      Create <word>.  If the queue contains one or more words and <inputSourceReady1> is one, set it to the exclusive-OR
   -- of the word at the head of the queue and <inputData1>; otherwise, set it to X.

   word <= queueBuffer(queueHead mod SIZE_OF_QUEUE) xor inputData1 when queueHead /= queueTail and inputSourceReady1 = '1' else
           (others => 'X');


   process(reset, clk) is

      variable newNumberOfBadBits : integer range 0 to CONFIG_MAX_NUMBER_OF_BAD_BITS;

      variable numberOfNonzeroBits : integer range 0 to 16;

   begin
      if reset = '1' then

         abcCounter <= 0;
         abcRegister <= (others => '0');
         crc <= (others => 'X');
         crcErrorFlag <= '0';
         nonrecoverableEccErrorFlag <= '0';
         numberOfBadBits <= (others => '0');
         numberOfWords <= 0;
         queueBuffer <= (others => "XXXXXXXXXXXXXXXX");
         queueHead <= 0;
         queueTail <= 0;

      elsif rising_edge(clk) then

         --      Create <abcCounter>.

         if (abcCounter = 2 or numberOfWords = NUMBER_OF_WORDS_PER_SECTOR) and outputDestinationReady = '1' then
            abcCounter <= 0;
         end if;
         if inputSourceReady1 = '1' and internalInputDestinationReady1 = '1' then
            if abcCounter = 2 then
               abcCounter <= 1;
            else
               abcCounter <= abcCounter + 1;
            end if;
         end if;


         --      Create <abcRegister>.

         if (abcCounter = 2 or numberOfWords = NUMBER_OF_WORDS_PER_SECTOR) and outputDestinationReady = '1' then
            abcRegister <= (others => 'X');
         end if;
         if inputSourceReady1 = '1' and internalInputDestinationReady1 = '1' then
            abcRegister(15 downto 0) <= abcRegister(31 downto 16);
            abcRegister(31 downto 16) <= word;
         end if;


         --      Create <crc>.

         if numberOfWords = 0 then
            crc <= (others => '1');
         elsif internalOutputSourceReady = '1' and outputDestinationReady = '1' and numberOfWords <= 258 then
            crc <= updateCrc(crc, abcRegister);
         end if;


         --      Create <crcErrorFlag>.  Set it to one if the dword we're processing doesn't equal <crc>; otherwise, set it to
         -- zero.  The value is important only when the dword is the CRC dword at position 129 in the encoded sector.

         if numberOfWords = 260 and abcCounter = 2 then
            if abcRegister = not crc then
               crcErrorFlag <= '0';
            else
               crcErrorFlag <= '1';
            end if;
         end if;


         --      Create <nonrecoverableEccErrorFlag> and <numberOfBadBits>.  If a word is transferring into <inputData1>, add
         -- the number of nonzero bits the word contains to <numberOfBadBits>, but don't let it go above
         -- CONFIG_MAX_NUMBER_OF_BAD_BITS; otherwise, if we're reached the end of a sector, clear <nonrecoverableEccErrorFlag>
         -- and <numberOfBadBits> in preparation for the next sector.  If the number of bad bits in a sector goes above
         -- CONFIG_MAX_NUMBER_OF_BAD_BITS, set <nonrecoverableEccErrorFlag> to one.

         if inputSourceReady1 = '1' and internalInputDestinationReady1 = '1' then
            numberOfNonzeroBits := 0;
            for i in 0 to 15 loop
               if inputData1(i) = '1' then
                  numberOfNonzeroBits := numberOfNonzeroBits + 1;
               end if;
            end loop;
            newNumberOfBadBits := to_integer(unsigned(numberOfBadBits));
            if newNumberOfBadBits + numberOfNonzeroBits <= CONFIG_MAX_NUMBER_OF_BAD_BITS then
               newNumberOfBadBits := newNumberOfBadBits + numberOfNonzeroBits;
            else
               newNumberOfBadBits := 0;
               nonrecoverableEccErrorFlag <= '1';
            end if;
            numberOfBadBits <= std_logic_vector(to_unsigned(newNumberOfBadBits, 5));
         elsif numberOfWords = NUMBER_OF_WORDS_PER_SECTOR and outputDestinationReady = '1' then
            nonrecoverableEccErrorFlag <= '0';
            numberOfBadBits <= (others => '0');
         end if;


         --      Create <numberOfWords>.  If a word is transferring into <abcRegister>, increment <numberOfWords>; otherwise,
         -- if the error-information dword at the end of a sector is transferring out <outputData>, set <numberOfWords> to
         -- zero.

         if inputSourceReady1 = '1' and internalInputDestinationReady1 = '1' then
            numberOfWords <= numberOfWords + 1;
         elsif numberOfWords = NUMBER_OF_WORDS_PER_SECTOR and outputDestinationReady = '1' then
            numberOfWords <= 0;
         end if;


         --      Create <queueBuffer>.  If we're inserting a word into the queue during this clock period, set the element at
         -- the tail of the queue to <inputData0>.

         if inputSourceReady0 = '1' and internalInputDestinationReady0 = '1' then
            queueBuffer(queueTail mod SIZE_OF_QUEUE) <= inputData0;
         end if;


         --      Create <queueHead>.  If we're removing a word from the queue during this clock period, increment the queue's
         -- head index.  We're removing a word if either (1) a word is transferring to <outputData> and the word isn't the
         -- error-information word after the sector or (2) the next word is the CRC word, the queue isn't empty, and a word is
         -- available at <inputData1>.

         if outputDestinationReady = '1' and numberOfWords < 260 and queueHead /= queueTail and inputSourceReady1 = '1' then
            queueHead <= (queueHead + 1) mod (SIZE_OF_QUEUE * 2);
         end if;


         --      Create <queueTail>.  If we're inserting a word into the queue during this clock period, increment the tail
         -- index.

         if inputSourceReady0 = '1' and internalInputDestinationReady0 = '1' then
            queueTail <= (queueTail + 1) mod (SIZE_OF_QUEUE * 2);
         end if;

      end if;

   end process;

end architecture;


-- end of postBchDecoder.vhdl
