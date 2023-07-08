-- vhdl/errorLocator/errorLocator.vhdl


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.config.all;
use work.bug.all;
use work.errorLocatorPackage.all;


entity errorLocator is
   port(
      syndromeSourceReady : in std_logic;
      syndromeArray : in syndromeArrayT;
      syndromeDestinationReady : out std_logic;
      sigmaSourceReady : out std_logic;
      sigmaArray : out sigmaArrayT;
      sigmaDestinationReady : in std_logic;
      history : out std_logic_vector(31 downto 0);
      bug : out std_logic_vector(31 downto 0);
      clk : in std_logic;
      reset : in std_logic
   );
end entity;


architecture behavioral of errorLocator is

   signal copyOfSyndromeArray : syndromeArrayT;                         --   We copy <syndromeArray> to this when we transfer
                                                                        -- the syndromes into this entity.

   signal degreeOfSigma :                                               --   This is the degree of the polynomial in <sigma>.
                     integer range 0 to CONFIG_MAX_NUMBER_OF_BAD_BITS;

   signal degreeOfTau :                                                 --   This is the degree of the polynomial in <tau>.  ??
                 integer range 0 to CONFIG_MAX_NUMBER_OF_BAD_BITS * 2;  -- But how can the degree grow bigger than the number
                                                                        -- of elements that can fit into the array?

   signal delta : std_logic_vector(12 downto 0);                        --   This is the value of <delta> in the algorithm.

   signal deltaTerms : syndromeArrayT;                                  --   This holds terms we have to exclusive-OR together
                                                                        -- to get <delta>.  We need this to break up the delta
                                                                        -- calculation to meet timing.

   signal k : integer range 0 to CONFIG_MAX_NUMBER_OF_BAD_BITS - 1;     --   This is the value of <k> in the algorithm.

   signal minorState : integer range 0 to 17;                           --   State zero means we're not calculating.  State one
                                                                        -- calculates <deltaTerms>.  State two calculates
                                                                        -- <delta>.  States three through 16 calculate the
                                                                        -- inverse of delta.  State 17 calculates everything
                                                                        -- else.

   signal oneOverDelta : std_logic_vector(12 downto 0);                 --   This is the inverse of <delta>.

   signal powerOfDelta : std_logic_vector(12 downto 0);                 --   This holds a power of delta.  We use this in logic
                                                                        -- that calculates the inverse of delta.

   signal sigma : sigmaArrayT;                                          --   This is the sigma polynomial.

   signal state : integer range 0 to 2;                                 --   This is zero when we're waiting for syndromes, one
                                                                        -- when we executing the algorithm, and two when we're
                                                                        -- waiting for the error identifier to take the sigma
                                                                        -- coefficients.

   signal tau : sigmaArrayT;                                            --   This is the tau polynomial.


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


   --      This function inverts an element of GF(2**m) and returns the resulting element of GF(2**m).

   function invert(a : std_logic_vector(12 downto 0)) return std_logic_vector is
      variable p : std_logic_vector(12 downto 0);
      variable result : std_logic_vector(12 downto 0);
   begin
      assert a /= "0000000000000";
      result := "0000000000001";
      p := a;
      for i in 0 to 11 loop
         p := multiply(p, p);
         result := multiply(result, p);
      end loop;
      assert multiply(result, a) = "0000000000001";
      return result;
   end function;

begin

   --      Create <bug>.  Set it to zero.

   bug <= (others => '0');


   --      Create <history>.  Set it to zero.

   history <= (others => '0');


   --      Create <sigmaArray>.  If <state> is two, set it to <sigma>; otherwise, set it to X.

   sigmaArray <= sigma when state = 2 else
                 (others => "XXXXXXXXXXXXX");


   --      Create <sigmaSourceReady>.  If <state> is two, set it to one; otherwise, set it to zero.

   sigmaSourceReady <= '1' when state = 2 else
                           '0';


   --      Create <syndromeDestinationReady>.  If <state> is zero, set it to one; otherwise, set it to zero.

   syndromeDestinationReady <= '1' when state = 0 else
                               '0';


   process(reset, clk)

      variable newDelta : std_logic_vector(12 downto 0);

   begin

      if reset = '1' then

         copyOfSyndromeArray <= (others => "0000000000000");
         deltaTerms <= (others => "0000000000000");
         degreeOfSigma <= 0;
         degreeOfTau <= 0;
         delta <= "0000000000000";
         k <= 0;
         minorState <= 0;
         powerOfDelta <= "0000000000000";
         sigma <= (others => "0000000000000");
         state <= 0;
         tau <= (others => "0000000000000");

      elsif rising_edge(clk) then

         --      Create <copyOfSyndromeArray>.

         if state = 0 and syndromeSourceReady = '1' then
            copyOfSyndromeArray <= syndromeArray;
         end if;


         --      Create <degreeOfSigma>.

         if state /= 1 then
            degreeOfSigma <= 0;
         else
            if minorState = 17 then
               if delta /= "0000000000000" then
                  if degreeOfTau + 1 > degreeOfSigma then
                     degreeOfSigma <= degreeOfTau + 1;
                  end if;
               end if;
            end if;
         end if;


         --      Create <degreeOfTau>.

         if state /= 1 then
            degreeOfTau <= 0;
         else
            if minorState = 17 then
               if delta = "0000000000000" or degreeOfSigma > k then
                  degreeOfTau <= degreeOfTau + 2;
               else
                  degreeOfTau <= degreeOfSigma + 1;
               end if;
            end if;
         end if;


         --      Create <deltaTerms>.

         if minorState = 1 then
            deltaTerms <= (others => "0000000000000");
            for i in 0 to CONFIG_MAX_NUMBER_OF_BAD_BITS loop
               if i <= degreeOfSigma then
                  deltaTerms(i) <= multiply(sigma(i), copyOfSyndromeArray(2 * k - i));
               end if;
            end loop;
         end if;


         --      Create <delta>.  Set it to the coefficient of z**(2 * k + 1) in the product of (1 + S) and <sigma>.  To
         -- calculate the value, initialize <delta> to zero and then execute a loop that iterates for each coefficient of
         -- sigma.  Each iteration of the loop multiplies a coefficient of sigma by one of the syndromes and then exclusive-ORs
         -- the result to <delta>.  The first syndrome is the coefficient of z in (1 + S), the second syndrome is the
         -- coefficient of z**2 in (1 + S), etc.

         if minorState = 2 then
            newDelta := (others => '0');
            for i in 0 to CONFIG_MAX_NUMBER_OF_BAD_BITS loop
               if i <= degreeOfSigma then
                  newDelta := newDelta xor deltaTerms(i);
               end if;
            end loop;
            delta <= newDelta;
         end if;


         --      Create <k>.

         if minorState = 17 then
            if k = CONFIG_MAX_NUMBER_OF_BAD_BITS - 1 then
               k <= 0;
            else
               k <= k + 1;
            end if;
         end if;


         --      Create <minorState>.

         if state = 0 then
            if syndromeSourceReady = '1' then
               minorState <= 1;
            end if;
         elsif state = 1 then
            if minorState = 17 then
               if k = CONFIG_MAX_NUMBER_OF_BAD_BITS - 1 then
                  minorState <= 0;
               else
                  minorState <= 1;
               end if;
            else
               minorState <= minorState + 1;
            end if;
         elsif state = 2 then
            minorState <= 0;
         end if;


         --      Create <oneOverDelta>.

         if minorState = 4 then
            oneOverDelta <= "0000000000001";
         elsif minorState >= 5 and minorState <= 16 then
            oneOverDelta <= multiply(oneOverDelta, powerOfDelta);
         end if;


         --      Create <powerOfDelta>.

         if minorState = 3 then
            powerOfDelta <= delta;
         elsif minorState >= 4 and minorState <= 15 then
            powerOfDelta <= multiply(powerOfDelta, powerOfDelta);
         end if;


         --      Create <sigma>.  Set it to the value of sigma for 2 * k + 2.  If <delta> is zero, set it to the value of
         -- <sigma> for 2 * k; otherwise, set it to <sigma> + <delta> * <z> * <tau>.  ??:  If the degree of the new value of
         -- sigma is about to grow bigger than <t>, return to the caller with a question mark rather than a list of
         -- coefficients to tell the caller that there are too many errors.

         if state = 0 then
            sigma <= (0 => "0000000000001", others => "0000000000000");
         else
            if minorState = 17 then
               if delta /= "0000000000000" then
                  for i in 0 to CONFIG_MAX_NUMBER_OF_BAD_BITS - 1 loop
                     if i <= degreeOfTau then
                        sigma(i + 1) <= sigma(i + 1) xor multiply(delta, tau(i));
                     end if;
                  end loop;
               end if;
            end if;
         end if;


         --      Create <state>.

         if state = 0 and syndromeSourceReady = '1' then
            state <= 1;
         elsif state = 1 and minorState = 17 and k = CONFIG_MAX_NUMBER_OF_BAD_BITS - 1 then
            state <= 2;
         elsif state = 2 and sigmaDestinationReady = '1' then
            state <= 0;
         end if;


         --      Create <tau>.  Set it to the value of tau for 2 * k + 2.

         if state /= 1 then
            tau <= (0 => "0000000000001", others => "0000000000000");
         else
            if minorState = 17 then
               if delta = "0000000000000" or degreeOfSigma > k then
                  tau(0 to 1) <= (others => "0000000000000");
                  tau(2 to CONFIG_MAX_NUMBER_OF_BAD_BITS) <= tau(0 to CONFIG_MAX_NUMBER_OF_BAD_BITS - 2);
               else
                  assert multiply(delta, oneOverDelta) = "0000000000001";
                  tau(0) <= "0000000000000";
                  for i in 1 to CONFIG_MAX_NUMBER_OF_BAD_BITS loop
                     tau(i) <= multiply(oneOverDelta, sigma(i - 1));
                  end loop;
               end if;
            end if;
         end if;

      end if;

   end process;

end architecture;


-- end of errorLocator.vhdl
