-- vhdl/bchDecoder/bchDecoder.vhdl


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.config.all;
use work.bug.all;


entity bch_decoder17_top is
   port(
      inputSourceReady : in std_logic;
      inputData : in std_logic_vector(31 downto 0);
      inputDestinationReady : out std_logic;
      numberOfBitsToSkip : in std_logic_vector(4 downto 0);
      outputSourceReady : out std_logic;
      outputData : out std_logic_vector(31 downto 0);
      outputDestinationReady : in std_logic;
      --enableEccFlag : in std_logic;
      --history : out std_logic_vector(31 downto 0);
      --bug : out std_logic_vector(31 downto 0);
      clk : in std_logic;
      reset : in std_logic
   );
end entity;


architecture behavioral of bch_decoder17_top is

   signal bchDecoderBug : std_logic_vector(31 downto 0);
   signal errorIdentifierBug : std_logic_vector(31 downto 0);
   signal errorIdentifierHistory : std_logic_vector(31 downto 0);
   signal errorIdentifierOutputData : std_logic_vector(15 downto 0);
   signal errorIdentifierOutputDestinationReady : std_logic;
   signal errorIdentifierOutputSourceReady : std_logic;
   signal errorLocatorBug : std_logic_vector(31 downto 0);
   signal errorLocatorHistory : std_logic_vector(31 downto 0);
   signal innerData : std_logic_vector(15 downto 0);
   signal innerDestinationReady : std_logic;
   signal innerSourceReady : std_logic;
   signal postBchDecoderBug : std_logic_vector(31 downto 0);
   signal postBchDecoderHistory : std_logic_vector(31 downto 0);
   signal postBchDecoderOutputData : std_logic_vector(31 downto 0);
   signal postBchDecoderOutputSourceReady : std_logic;
   signal preBchDecoderBug : std_logic_vector(31 downto 0);
   signal preBchDecoderHistory : std_logic_vector(31 downto 0);
   signal preBchDecoderInputDestinationReady : std_logic;
   signal preBchDecoderInputSourceReady : std_logic;
   signal sigmaArray : work.errorLocatorPackage.sigmaArrayT;
   signal sigmaDestinationReady : std_logic;
   signal sigmaSourceReady : std_logic;
   signal syndromeArray : work.syndromeCalculatorPackage.syndromeArrayT;
   signal syndromeCalculatorBug : std_logic_vector(31 downto 0);
   signal syndromeCalculatorHistory : std_logic_vector(31 downto 0);
   signal syndromeCalculatorInputData : std_logic_vector(15 downto 0);
   signal syndromeCalculatorInputDestinationReady : std_logic;
   signal syndromeCalculatorInputSourceReady : std_logic;
   signal syndromeDestinationReady : std_logic;
   signal syndromeSourceReady : std_logic;
      
   signal enableEccFlag : std_logic;
   signal history : std_logic_vector(31 downto 0);
   signal bug : std_logic_vector(31 downto 0);

begin

  enableEccFlag <= '1';

   --      Create <bug>.  Set the ECC bug bit to one if one of the sub-entities reports a bug or if <postBchDecoder> has data
   -- to output when <enableEccFlag> is zero.

   bug <= preBchDecoderBug or
          syndromeCalculatorBug or
          errorLocatorBug or
          errorIdentifierBug or
          postBchDecoderBug or
          bchDecoderBug;
   bchDecoderBug <= (ECC_BUG => not enableEccFlag and postBchDecoderOutputSourceReady, others => '0');


   --      Create <history>.  Set it to the OR of the sub-entities' bug signals.

   history <= preBchDecoderHistory or
              syndromeCalculatorHistory or
              errorLocatorHistory or
              errorIdentifierHistory or
              postBchDecoderHistory;


   --      When <enableEccFlag> is one, make the <bchDecoder> input data go to <preBchDecoder> and make the <bchDecoder> output
   -- data come from <postBchDecoder>.  When <enableEccFlag> is zero, make the <bchDecoder> input data go to the <bchDecoder>
   -- output data, skipping the sub-entities.

   outputSourceReady <= postBchDecoderOutputSourceReady when enableEccFlag = '1' else
                        inputSourceReady;
   outputData <= postBchDecoderOutputData when enableEccFlag = '1' else
                 inputData;
   inputDestinationReady <= preBchDecoderInputDestinationReady when enableEccFlag = '1' else
                            outputDestinationReady;


   --      Instantiate <preBchDecoder>.  When <enableEccFlag> is one, connect the <bchDecoder> <inputSourceReady> signal to the
   -- <preBchDecoder> <inputSourceReady> signal.  When <enableEccFlag> is zero, set the <preBchDecoder> <inputSourceReady>
   -- signal to zero to prevent data from entering <preBchDecoder>.

   preBchDecoderInputSourceReady <= inputSourceReady when enableEccFlag = '1' else
                                    '0';
   preBchDecoderEntity : entity work.preBchDecoder
      port map(
         inputSourceReady => preBchDecoderInputSourceReady,
         inputData => inputData,
         inputDestinationReady => preBchDecoderInputDestinationReady,
         numberOfBitsToSkip => numberOfBitsToSkip,
         outputSourceReady0 => innerSourceReady,
         outputData0 => innerData,
         outputDestinationReady0 => innerDestinationReady,
         outputSourceReady1 => syndromeCalculatorInputSourceReady,
         outputData1 => syndromeCalculatorInputData,
         outputDestinationReady1 => syndromeCalculatorInputDestinationReady,
         history => preBchDecoderHistory,
         bug => preBchDecoderBug,
         clk => clk,
         reset => reset
      );


   --      Instantiate <syndromeCalculator>.  Get input data from <preBchDecoder> and send output data to <errorLocator>.

   syndromeCalculatorEntity : entity work.syndromeCalculator
      port map(
         inputSourceReady => syndromeCalculatorInputSourceReady,
         inputData => syndromeCalculatorInputData,
         inputDestinationReady => syndromeCalculatorInputDestinationReady,
         syndromeSourceReady => syndromeSourceReady,
         syndromeArray => syndromeArray,
         syndromeDestinationReady => syndromeDestinationReady,
         history => syndromeCalculatorHistory,
         bug => syndromeCalculatorBug,
         clk => clk,
         reset => reset
      );


   --      Instantiate <errorLocator>.  Get input data from <syndromeCalculator> and send output data to <errorIdentifier>.

   errorLocatorEntity : entity work.errorLocator
      port map(
         syndromeSourceReady => syndromeSourceReady,
         syndromeArray => work.errorLocatorPackage.syndromeArrayT(syndromeArray),
         syndromeDestinationReady => syndromeDestinationReady,
         sigmaSourceReady => sigmaSourceReady,
         sigmaArray => sigmaArray,
         sigmaDestinationReady => sigmaDestinationReady,
         history => errorLocatorHistory,
         bug => errorLocatorBug,
         clk => clk,
         reset => reset
      );


   --      Instantiate <errorIdentifier>.  Get input data from <errorLocator> and send output data to <postBchDecoder>.

   errorIdentifierEntity : entity work.errorIdentifier
      port map(
         sigmaSourceReady => sigmaSourceReady,
         sigmaArray => work.errorIdentifierPackage.sigmaArrayT(sigmaArray),
         sigmaDestinationReady => sigmaDestinationReady,
         outputSourceReady => errorIdentifierOutputSourceReady,
         outputData => errorIdentifierOutputData,
         outputDestinationReady => errorIdentifierOutputDestinationReady,
         history => errorIdentifierHistory,
         bug => errorIdentifierBug,
         clk => clk,
         reset => reset
      );


   --      Instantiate <postBchDecoder>.

   postBchDecoderEntity : entity work.postBchDecoder
      port map(
         inputSourceReady0 => innerSourceReady,
         inputData0 => innerData,
         inputDestinationReady0 => innerDestinationReady,
         inputSourceReady1 => errorIdentifierOutputSourceReady,
         inputData1 => errorIdentifierOutputData,
         inputDestinationReady1 => errorIdentifierOutputDestinationReady,
         outputSourceReady => postBchDecoderOutputSourceReady,
         outputData => postBchDecoderOutputData,
         outputDestinationReady => outputDestinationReady,
         history => postBchDecoderHistory,
         bug => postBchDecoderBug,
         clk => clk,
         reset => reset
      );

end architecture;


-- end of bchDecoder.vhdl
