-- =====================================================================
-- Copyright © 2010-2012 by Cryptographic Engineering Research Group (CERG),
-- ECE Department, George Mason University
-- Fairfax, VA, U.S.A.
-- =====================================================================

library ieee;
use ieee.std_logic_1164.all;	   
use ieee.std_logic_unsigned.all;	
use ieee.std_logic_arith.all;
use work.sha3_pkg.all;
use work.keccak_pkg.all;

-- keccak fsm2 is responsible for keccak computation processing 

entity keccak_fsm2 is  
	generic (
		PPL : integer := 2;
		UF : integer := 1
	);	
	port (
		clk 					: in std_logic;
		rst 					: in std_logic;
	   	  
		smsg 					: out std_logic_vector(log2(ppl)-1 downto 0);	 
		load_hash 				: out std_logic_vector(ppl-1 downto 0);
		wr_state				: out std_logic;
		sel_xor 				: out std_logic;		
		sel_final				: out std_logic;
		ld_rdctr				: out std_logic;
		en_rdctr 				: out std_logic; 
	
		-- control				   
			--fsm1 hand shake signals
		block_ready_clr : out std_logic_vector(ppl-1 downto 0);		
		msg_end_clr 	: out std_logic_vector(ppl-1 downto 0);
		
		block_ready		: in std_logic_vector(ppl-1 downto 0);
		msg_end 		: in std_logic_vector(ppl-1 downto 0);	
				
			--fsm3 handshake signals
		output_busy_set  : out std_logic_vector(ppl-1 downto 0);
		output_busy		 : in  std_logic_vector(ppl-1 downto 0)
	);
end keccak_fsm2;


architecture beh of keccak_fsm2 is					 
	
	constant roundnr 		: integer := 24/UF;  -- Add an additional round for block finalization
	constant log2roundnr	: integer := log2( roundnr );
	constant log2roundnrzeros : std_logic_vector(log2roundnr-1 downto 0) := (others => '0') ;
		
	signal pc : std_logic_vector(log2roundnr-1 downto 0);
	signal ziroundnr, ziround0, ei, li : std_logic;
	--signal output_data_s : std_logic_vector(ppl-1 downto 0);
	
	signal ppl_stage_cnt : std_logic_vector(log2(ppl)-1 downto 0);
	signal valid_set, valid_clr, valid : std_logic_vector(ppl-1 downto 0);
	signal sf_set, sf_clr, sf_sig : std_logic_vector(ppl-1 downto 0);
    signal done_clr, done_set, done_sig : std_logic_vector(ppl-1 downto 0);
	signal snb_sig : std_logic;
	signal block_ready_true: std_logic_vector(PPL-1 downto 0);
	
	constant log2pplzeros : std_logic_vector(log2(ppl)-1 downto 0) := (others =>'0');
	constant log2pplones : std_logic_vector(log2(ppl)-1 downto 0) := (others =>'1');
	
	type smsg_type is array ( 0 to ppl-2 ) of std_logic_vector(log2(ppl)-1 downto 0);
	signal smsg_reg : smsg_type;
begin	
	-- Internals
	RoundCounterGen : 
        countern 
        generic map ( N => log2roundnr ) 
        port map ( clk => clk, rst => rst, load => li, en => ei, input => log2roundnrzeros, output => pc);
	
	PPLStageCntGen: process ( clk )
	begin
		if rising_edge( clk ) then
		
			if rst = '1' or ei = '1' or li = '1' then
				ppl_stage_cnt <= (others => '0');
			else
				ppl_stage_cnt <= ppl_stage_cnt + 1;
			end if;
		end if;
	end process;
	
	SmsgGen : process(clk)
	begin
		if rising_edge( clk ) then
			smsg_reg(0) <= ppl_stage_cnt;	 
			if ( ppl > 2 ) then
				for i in 1 to ppl-2 loop
					smsg_reg(i) <= smsg_reg(i-1);
				end loop;	   
			end if;
		end if;
	end process;	
	smsg <= smsg_reg(ppl-2);
		
	ziroundnr <= '1' when pc = conv_std_logic_vector(roundnr-1,log2roundnr) else '0';			 	
	ziround0 <= '1' when pc = 0 else '0';
	li <= '1' when (ziroundnr = '1' and ppl_stage_cnt = log2pplones) else '0';
	ei <= '1' when (ppl_stage_cnt = log2pplones) else '0';

	FlagGen: for i in 0 to ppl-1 generate	 				
		sf_gen : sr_reg 
			generic map ( init => '1' )
			port map ( rst => rst, clk => clk, set => sf_set(i), clr => sf_clr(i), output => sf_sig(i));
		
        valid_gen : sr_reg 
			generic map ( init => '0' )
			port map ( rst => rst, clk => clk, set => valid_set(i), clr => valid_clr(i), output => valid(i));		
		
		done_gen : sr_reg 
			generic map ( init => '0' )
			port map ( rst => rst, clk => clk, set => done_set(i), clr => done_clr(i), output => done_sig(i));
		
        sf_set(i) <= '1' when (ziroundnr = '1' and ppl_stage_cnt = conv_std_logic_vector((i),log2(ppl)) and done_sig(i) = '1' and sf_sig(i) = '0') else '0';		
		sf_clr(i) <= '1' when (snb_sig = '1' and smsg_reg(ppl-2) = conv_std_logic_vector((i),log2(ppl)) and sf_sig(i) = '1' and block_ready_true(i) = '1') else '0';
        valid_set(i) <= '1' when (snb_sig = '1' and smsg_reg(ppl-2) = conv_std_logic_vector((i),log2(ppl)) and block_ready_true(i) = '1') else '0';
		valid_clr(i) <= '1' when (snb_sig = '1' and smsg_reg(ppl-2) = conv_std_logic_vector((i),log2(ppl)) and block_ready_true(i) = '0') else '0';
		done_set(i) <= '1' when (snb_sig = '1' and smsg_reg(ppl-2) = conv_std_logic_vector((i),log2(ppl)) and block_ready_true(i) = '1' and msg_end(i) = '1') else '0';
        done_clr(i) <= '1' when (snb_sig = '1' and smsg_reg(ppl-2) = conv_std_logic_vector((i),log2(ppl)) and done_sig(i) = '1' and output_busy(i) = '0' and valid(i) = '1') else '0';
	end generate;	
    block_ready_clr <= valid_set;	
	output_busy_set	<= done_clr;
	load_hash		<= done_clr;	   
	msg_end_clr		<= valid_set;
    
    snb_sig <= '1' when (ziroundnr = '1' and ppl_stage_cnt = ppl-1) or 
						(ziround0 = '1' and ppl_stage_cnt /= ppl-1 ) else '0';

	BlockReadyTrueReg : process ( clk ) 	-- Allow everything to be synchronize to round number
	begin
		if rising_edge( clk ) then	 
			if rst = '1' then
				block_ready_true <= (others => '0');				
			elsif (pc = roundnr-2 and ppl_stage_cnt = ppl-1) then  				
				block_ready_true <= block_ready;
			end if;
		end if;
	end process;

    wr_state    <= '1';			
	sel_final   <= snb_sig;         
	ld_rdctr    <= '1' when (ziroundnr = '1' and ppl_stage_cnt = log2pplones) else '0';
    en_rdctr    <= '1' when (ppl_stage_cnt = log2pplones) else '0';	
    Ppl2Gen:
		if PPL = 2 generate
			sel_xor <= sf_sig(0) when smsg_reg(ppl-2) = 0 else sf_sig(1); 
		end generate;
	Ppl4Gen:
		if PPL = 4 generate
			with smsg_reg(ppl-2)(1 downto 0) select
			sel_xor <= sf_sig(0) when "00", sf_sig(1) when "01", sf_sig(2) when "10", sf_sig(3) when others;
		end generate;		
end beh;