-- vhdl/preBchDecoder/preBchDecoder.vhdl


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.config.all;
use work.bug.all;


entity preBchDecoder is
   port(
      inputSourceReady : in std_logic;
      inputData : in std_logic_vector(31 downto 0);
      inputDestinationReady : out std_logic;
      numberOfBitsToSkip : in std_logic_vector(4 downto 0);
      outputSourceReady0 : out std_logic;
      outputData0 : out std_logic_vector(15 downto 0);
      outputDestinationReady0 : in std_logic;
      outputSourceReady1 : out std_logic;
      outputData1 : out std_logic_vector(15 downto 0);
      outputDestinationReady1 : in std_logic;
      history : out std_logic_vector(31 downto 0);
      bug : out std_logic_vector(31 downto 0);
      clk : in std_logic;
      reset : in std_logic
   );
end entity;


architecture behavioral of preBchDecoder is

   constant NUMBER_OF_WORDS_PER_SECTOR : integer :=                     --   This is the number of words we output for a
               256 + 2 + 2 + (CONFIG_NUMBER_OF_PARITY_BITS + 15) / 16;  -- sector.  This counts a sector tag as two words even
                                                                        -- though a sector tag contains fewer than 32 bits.
                                                                        -- This counts the last word as a full word even if it
                                                                        -- contains fewer than 16 bits.

   constant NUMBER_OF_BITS_IN_LAST_WORD : integer :=                    --   This is the number of bits we take out of the
                                  CONFIG_NUMBER_OF_PARITY_BITS mod 16;  -- queue of bits for the last word of a sector.  We set
                                                                        -- the remaining bits in the word to zero.

   constant SIZE_OF_QUEUE : integer := 64;                              --   This is the number of bits that can fit in a queue
                                                                        -- of bits we maintain.

   signal bits : std_logic_vector(SIZE_OF_QUEUE - 1 downto 0) :=        --   This is the buffer for the queue of bits.  The
                                                      (others => 'X');  -- queue is empty if <head> equals <tail>.

   signal bugFlag : std_logic;                                          --   This drives the ECC_BUG bit in <bug>.

   signal head : integer range 0 to SIZE_OF_QUEUE * 2 - 1;              --   This modulo SIZE_OF_QUEUE indexes <bits> at the
                                                                        -- location of the next bit to take out of the queue.
                                                                        -- We increment this after removing a bit from the
                                                                        -- queue, wrapping from SIZE_OF_QUEUE * 2 - 1 to zero
                                                                        -- if necessary.

   signal internalInputDestinationReady : std_logic;                    --   This drives <inputDestinationReady>.

   signal internalOutputSourceReady0 : std_logic;                       --   This drives <outputSourceReady0>.

   signal internalOutputSourceReady1 : std_logic;                       --   This drives <outputSourceReady1>.

   signal numberOfBits : integer range 0 to SIZE_OF_QUEUE;              --   This is the number of bits that are in the queue.

   signal numberOfWords : integer range                                 --   This is the number of words we've formed so far
                                  0 to NUMBER_OF_WORDS_PER_SECTOR - 1;  -- while processing the current sector.

   signal oneAheadFlag0 : std_logic;                                    --   This is one if a word transferred out of
                                                                        -- <outputData0> but it didn't transfer out of
                                                                        -- <outputData1> yet; otherwise, this is zero.

   signal oneAheadFlag1 : std_logic;                                    --   This is one if a word transferred out of
                                                                        -- <outputData1> but it didn't transfer out of
                                                                        -- <outputData0> yet; otherwise, this is zero.

   signal outputWord : std_logic_vector(15 downto 0);                   --   This is the value of the word at the head of the
                                                                        -- queue of bits.

   signal skipCounter : integer range 0 to 62;                          --   This is the number of bits to skip at the start of
                                                                        -- the next sector.  We add <numberOfBitsToSkip> to
                                                                        -- this each clock period.  We subtract from this when
                                                                        -- we skip bits at the start of a sector.

   signal tail : integer range 0 to SIZE_OF_QUEUE * 2 - 1;              --   This modulo SIZE_OF_QUEUE indexes <bits> at the
                                                                        -- location where the next input bit will go.  We
                                                                        -- increment this after inserting a bit into the queue,
                                                                        -- wrapping from SIZE_OF_QUEUE * 2 - 1 to zero if
                                                                        -- necessary.

begin

   --      Create <bug>.  Set the ECC_BUG bit in <bug> to <bugFlag> and set the other bits in <bug> to zero.

   bug <= (ECC_BUG => bugFlag, others => '0');


   --      Create <bugFlag>.  If both of the one-ahead flags are one at the same time, set <bugFlag> to one; otherwise, set
   -- <bugFlag> to zero.

   bugFlag <= '1' when oneAheadFlag0 = '1' and oneAheadFlag1 = '1' else
              '0';


   --      Create <history>.  Set it to zero.

   history <= (others => '0');


   --      Create <inputDestinationReady>.  Set it to <internalInputDestinationReady>.

   inputDestinationReady <= internalInputDestinationReady;


   --      Create <internalInputDestinationReady>.  If the queue contains room for 32 or more bits, set it to one; otherwise,
   -- set it to zero.

   internalInputDestinationReady <= '1' when numberOfBits + 32 <= SIZE_OF_QUEUE else
                                    '0';


   --      Create <internalOutputSourceReady0>.  If <oneAheadFlag0> is one, set it to zero; otherwise, if we're at the start of
   -- a sector and we might have to skip one or more bits before we get to the sector's first bit, set it to zero; otherwise,
   -- if the next word in the queue is a parity word, set it to zero because we don't send parity words to <outputData0>;
   -- otherwise, if the queue contains 16 or more bits, set it to one; otherwise, if the next word is the most significant half
   -- of a sector-tag dword and the queue contains CONFIG_NUMBER_OF_BITS_IN_SECTOR_TAG minus 16 or more bits, set it to one;
   -- otherwise, set it to zero.

   internalOutputSourceReady0 <= '0' when oneAheadFlag0 = '1' else
                                 '0' when numberOfWords = 0 and (skipCounter /= 0 or numberOfBits < 32) else
                                 '0' when numberOfWords >= 260 else
                                 '1' when numberOfBits >= 16 else
                                 '1' when numberOfWords = 257 and numberOfBits >= CONFIG_NUMBER_OF_BITS_IN_SECTOR_TAG - 16 else
                                 '0';


   --      Create <internalOutputSourceReady1>.  If <oneAheadFlag1> is one, set it to zero; otherwise, if we're at the start of
   -- a sector and might we have to skip one or more bits before we get to the sector's first bit, set it to zero; otherwise,
   -- if the queue contains 16 or more bits, set it to one; otherwise, if the next word is the most significant half of a
   -- sector-tag dword and the queue contains CONFIG_NUMBER_OF_BITS_IN_SECTOR_TAG minus 16 or more bits, set it to one;
   -- otherwise, if the next word is the last word of a sector and the queue contains NUMBER_OF_BITS_IN_LAST_WORD or more bits,
   -- set it to one; otherwise, set it to zero.

   internalOutputSourceReady1 <=
      '0' when oneAheadFlag1 = '1' else
      '0' when numberOfWords = 0 and (skipCounter /= 0 or numberOfBits < 32) else
      '1' when numberOfBits >= 16 else
      '1' when numberOfWords = 257 and numberOfBits >= CONFIG_NUMBER_OF_BITS_IN_SECTOR_TAG - 16 else
      '1' when numberOfWords = NUMBER_OF_WORDS_PER_SECTOR - 1 and numberOfBits >= NUMBER_OF_BITS_IN_LAST_WORD else
      '0';


   --      Create <numberOfBits>.  Set it to the number of bits that are in the queue of bits.  The number of bits equals the
   -- tail minus the head, but we have to account for the fact that the tail and head wrap to zero when they reach their
   -- maximum values.

   numberOfBits <= (tail + SIZE_OF_QUEUE * 2 - head) mod (SIZE_OF_QUEUE * 2);


   --      Create <outputData0>.  If <internalOutputSourceReady0> is one, set it to <outputWord>; otherwise, set it to X.

   outputData0 <= outputWord when internalOutputSourceReady0 = '1' else
                  (others => 'X');


   --      Create <outputData1>.  If <internalOutputSourceReady1> is one, set it to <outputWord>; otherwise, set it to X.

   outputData1 <= outputWord when internalOutputSourceReady1 = '1' else
                  (others => 'X');


   --      Set <outputWord> to the next word in the queue of bits.  This is valid when the queue contains the bits the word
   -- needs.  If the next word is the most significant half of a sector-tag dword, use only CONFIG_NUMBER_OF_BITS_IN_SECTOR_TAG
   -- minus 16 bits and set the remaining bits to zero.  If the next word is the last word of the current sector, use only
   -- NUMBER_OF_BITS_IN_LAST_WORD bits and set the remaining bits to zero.

   label0 : for i in 0 to 15 generate
      outputWord(i) <= '0' when numberOfWords = 257 and i >= CONFIG_NUMBER_OF_BITS_IN_SECTOR_TAG mod 16 else
                       '0' when numberOfWords = NUMBER_OF_WORDS_PER_SECTOR - 1 and i >= NUMBER_OF_BITS_IN_LAST_WORD else
                       bits((head + i) mod SIZE_OF_QUEUE);
   end generate;


   --      Create <outputSourceReady0>.  Set it to <internalOutputSourceReady0>.

   outputSourceReady0 <= internalOutputSourceReady0;


   --      Create <outputSourceReady1>.  Set it to <internalOutputSourceReady1>.

   outputSourceReady1 <= internalOutputSourceReady1;


   process(reset, clk) is

      variable newSkipCounter : integer range 0 to 62;                  --   This is a new value for <skipCounter>.  This is
                                                                        -- <skipCounter> plus <numberOfBitsToSkip> minus
                                                                        -- <numberOfBitsToSkipDuringThisClockPeriod>.

      variable numberOfBitsToSkipDuringThisClockPeriod :                --   This is the number of bits to skip during the
                                                integer range 0 to 62;  -- current clock period.  If we're not between sectors,
                                                                        -- this is zero because we skip only between sectors.
                                                                        -- If we are between sectors, this is the minimum of
                                                                        -- the skip counter and the number of bits that are in
                                                                        -- the queue.

   begin

      if reset = '1' then

         bits <= (others => 'X');
         head <= 0;
         numberOfWords <= 0;
         oneAheadFlag0 <= '0';
         oneAheadFlag1 <= '0';
         skipCounter <= 0;
         tail <= 0;

      elsif rising_edge(clk) then

         --      Create <newSkipCounter> and <numberOfBitsToSkipDuringThisClockPeriod>.  They are both variables (as opposed to
         -- signals).  We add <numberOfBitsToSkip> to <skipCounter> each period.  We skip bits only when we're before the start
         -- of a new sector.  The bits we skip are bits that we didn't need in the last dword of the previous sector, bits that
         -- we don't need in the first dword of the next sector, or both.  The maximum number of bits to skip is 62; this
         -- occurs if the last dword of the previous sector contained only one important bit and the first dword of the next
         -- sector also contains only one important bit.  First, set <newSkipCounter> to the sum of <skipCounter> and
         -- <numberOfBitsToSkip> and set <numberOfBitsToSkipDuringThisClockPeriod> to zero; then, if <numberOfWords> is zero,
         -- decide if we should skip bits during this clock period.

         newSkipCounter := skipCounter + to_integer(unsigned(numberOfBitsToSkip));
         numberOfBitsToSkipDuringThisClockPeriod := 0;
         if numberOfWords = 0 then

            --      Set <numberOfBitsToSkipDuringThisClockPeriod> to the total number of bits that we have to skip.  If the
            -- number of bits to skip is greater than the number of bits in the queue, set
            -- <numberOfBitsToSkipDuringThisClockPeriod> to the number of bits in the queue.

            numberOfBitsToSkipDuringThisClockPeriod := newSkipCounter;
            if numberOfBitsToSkipDuringThisClockPeriod > numberOfBits then
               numberOfBitsToSkipDuringThisClockPeriod := numberOfBits;
            end if;


            --      Subtract the number of bits we are going to skip from <newSkipCounter>.

            newSkipCounter := newSkipCounter - numberOfBitsToSkipDuringThisClockPeriod;

         end if;


         --      Create <bits>.  If we're receiving an input dword during this clock period, copy the input dword to the next
         -- 32 locations in the bit queue.

         if inputSourceReady = '1' and internalInputDestinationReady = '1' then
            for i in 0 to 31 loop
               bits((tail + i) mod SIZE_OF_QUEUE) <= inputData(i);
            end loop;
         end if;


         --      Create <head>.  If the next word we need is the first word of a sector but we have to skip one or more bits to
         -- get to the first bit of the sector, skip as many of the bits as we can; otherwise, if the next word is the most
         -- significant word in a sector-tag dword, remove CONFIG_NUMBER_OF_BITS_IN_SECTOR_TAG minus 16 bits from the queue;
         -- otherwise, if the next word is the last word of a sector, remove NUMBER_OF_BITS_IN_LAST_WORD bits from the queue;
         -- otherwise, if the next word needs needs 16 bits, remove 16 bits from the queue.

         if numberOfWords = 0 and numberOfBitsToSkipDuringThisClockPeriod /= 0 then
            head <= (head + numberOfBitsToSkipDuringThisClockPeriod) mod (SIZE_OF_QUEUE * 2);
         elsif (numberOfWords >= 260 or
                oneAheadFlag0 = '1' or (internalOutputSourceReady0 = '1' and outputDestinationReady0 = '1')) and
               (oneAheadFlag1 = '1' or (internalOutputSourceReady1 = '1' and outputDestinationReady1 = '1')) then
            if numberOfWords = 257 then
               head <= (head + CONFIG_NUMBER_OF_BITS_IN_SECTOR_TAG - 16) mod (SIZE_OF_QUEUE * 2);
            elsif numberOfWords = NUMBER_OF_WORDS_PER_SECTOR - 1 then
               head <= (head + NUMBER_OF_BITS_IN_LAST_WORD) mod (SIZE_OF_QUEUE * 2);
            else
               head <= (head + 16) mod (SIZE_OF_QUEUE * 2);
            end if;
         end if;


         --      Create <numberOfWords>.  If we're removing a word from the queue, increment the number of words we've
         -- processed in the current sector, wrapping from NUMBER_OF_WORDS_PER_SECTOR to zero if we've reached the end of the
         -- sector.

         if (numberOfWords >= 260 or
             oneAheadFlag0 = '1' or (internalOutputSourceReady0 = '1' and outputDestinationReady0 = '1')) and
            (oneAheadFlag1 = '1' or (internalOutputSourceReady1 = '1' and outputDestinationReady1 = '1')) then
            if numberOfWords = NUMBER_OF_WORDS_PER_SECTOR - 1 then
               numberOfWords <= 0;
            else
               numberOfWords <= numberOfWords + 1;
            end if;
         end if;


         --      Create <oneAheadFlag0>.  If <outputDestinationReady1> is one or <oneAheadFlag1> is one, set it to zero;
         -- otherwise, if a word is transferring out <outputData0>, set it to one; otherwise, leave it alone.

         if (internalOutputSourceReady1 = '1' and outputDestinationReady1 = '1') or oneAheadFlag1 = '1' then
            oneAheadFlag0 <= '0';
         elsif internalOutputSourceReady0 = '1' and outputDestinationReady0 = '1' then
            oneAheadFlag0 <= '1';
         end if;


         --      Create <oneAheadFlag1>.  If <outputDestinationReady0> is one, <oneAheadFlag0> is one, or the next word is a
         -- parity word, set it to zero; otherwise, if a word is transferring out <outputData1>, set it to one; otherwise,
         -- leave it alone.

         if (internalOutputSourceReady0 = '1' and outputDestinationReady0 = '1') or
            numberOfWords >= 260 or
            oneAheadFlag0 = '1' then
            oneAheadFlag1 <= '0';
         elsif internalOutputSourceReady1 = '1' and outputDestinationReady1 = '1' then
            oneAheadFlag1 <= '1';
         end if;


         --      Create <skipCounter>.  Set it to <newSkipCounter>.

         skipCounter <= newSkipCounter;


         --      Create <tail>.  If we're receiving an input dword during this clock period, add 32 to the tail to account for
         -- the fact that we're inserting a dword into the queue.

         if inputSourceReady = '1' and internalInputDestinationReady = '1' then
            tail <= (tail + 32) mod (SIZE_OF_QUEUE * 2);
         end if;

      end if;

   end process;

end architecture;


-- end of preBchDecoder.vhdl
