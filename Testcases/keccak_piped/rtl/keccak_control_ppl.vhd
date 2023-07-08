-- =====================================================================
-- Copyright © 2010-2012 by Cryptographic Engineering Research Group (CERG),
-- ECE Department, George Mason University
-- Fairfax, VA, U.S.A.
-- =====================================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all; 
use work.sha3_pkg.all;
use work.keccak_pkg.all;


entity keccak_control_ppl is
	generic (hs : integer := HASH_SIZE_256; PPL : integer := 2; UF : integer := 1);
	port (					
		clk						: in std_logic;
		rst						: in std_logic;	
		
		-- fifo signals
		src_ready				: in std_logic_vector(ppl-1 downto 0);
		src_read				: out std_logic_vector(ppl-1 downto 0);
		dst_ready 				: in std_logic;
		dst_write				: out std_logic;

		-- input			  
		smsg 					: out std_logic_vector(log2(ppl)-1 downto 0);
		ein						: out std_logic_vector(ppl-1 downto 0);	
		en_ctr					: out std_logic_vector(ppl-1 downto 0);
		en_len					: out std_logic_vector(ppl-1 downto 0);		
		load_id					: out std_logic_vector(ppl-1 downto 0);
		final_segment			: in std_logic_vector(ppl-1 downto 0);	
		zc0						: in std_logic_vector(ppl-1 downto 0);	
			-- output						  				 
		load_hash 				: out std_logic_vector(ppl-1 downto 0);
		shift_dout				: out std_logic_vector(ppl-1 downto 0);
		sout 					: out std_logic_vector(log2(ppl)-1 downto 0);
		sid 					: out std_logic;
		
		sel_xor 				: out std_logic;
		sel_final				: out std_logic;
		ld_rdctr				: out std_logic;
		en_rdctr 				: out std_logic; 
		wr_state				: out std_logic);
end keccak_control_ppl;

architecture struct of keccak_control_ppl is	
	constant capacity : integer := get_keccak_capacity( hs );	  
	-- fsm1
	signal block_ready_set, msg_end_set, load_next_block : std_logic_vector(ppl-1 downto 0);	
	-- fsm2
		-- fsm1 communications
	signal block_ready_clr, msg_end_clr : std_logic_vector(ppl-1 downto 0); --out
	signal block_ready, msg_end : std_logic_vector(ppl-1 downto 0); --in	   
	
		-- fsm2 communications
	signal output_busy_set : std_logic_vector(ppl-1 downto 0); --out
	signal output_busy : std_logic_vector(ppl-1 downto 0); --in  
	
	-- fsm3										
	signal output_busy_clr : std_logic_vector(ppl-1 downto 0); 
	signal shift_dout_fsm3, load_hash_fsm2 : std_logic_vector(ppl-1 downto 0);
				 
	-- pipelined signals
	signal sel_xor_wire, wr_state_wire 	: std_logic;
	signal sel_final_wire				: std_logic;
	signal ld_rdctr_wire				: std_logic;
	signal en_rdctr_wire 				: std_logic; 
	signal smsg_wire : std_logic_vector(log2(ppl)-1 downto 0);
	
	-- output	
	signal sout_wire : std_logic_vector(log2(ppl)-1 downto 0);
	signal sid_wire  : std_logic;
	signal dst_write_wire : std_logic;
	
begin

	Fsm1Gen: for i in 0 to ppl-1 generate
		Fsm1Inst : entity work.keccak_fsm1(nocounter) 
			generic map (mw=>capacity)
			port map (clk => clk, rst => rst, final_segment=>final_segment(i), zc0 => zc0(i), en_ctr=>en_ctr(i), en_len=>en_len(i),
			ein => ein(i), load_next_block => load_next_block(i), block_ready_set => block_ready_set(i),
			msg_end_set => msg_end_set(i),  src_ready => src_ready(i), src_read => src_read(i), load_id => load_id(i));	 
	end generate;

		
		
	fsm2_gen : entity work.keccak_fsm2(beh)
		generic map (ppl => ppl, UF => UF)
		port map ( 
			clk => clk, 
			rst => rst,  						
			msg_end_clr => msg_end_clr,
			msg_end => msg_end, 
			block_ready => block_ready,
			block_ready_clr => block_ready_clr, 
			output_busy => output_busy, 
			output_busy_set => output_busy_set,
			load_hash => load_hash_fsm2, 
			smsg => smsg_wire,			
			-- shared control
			wr_state=>wr_state_wire,		
			sel_xor=>sel_xor_wire, 
			sel_final =>sel_final_wire, 
			ld_rdctr=>ld_rdctr_wire, 
			en_rdctr=>en_rdctr_wire
		); 
										  										
	fsm3_gen : entity work.sha3_fsm3_ppl(beh)
		generic map ( h => HS, w=> w, ppl => ppl )
		port map (
		clk => clk, rst => rst, 
		shift_dout => shift_dout_fsm3, sout => sout_wire,  sid => sid_wire,
		output_busy => output_busy, output_busy_clr => output_busy_clr,
		dst_ready => dst_ready, dst_write => dst_write_wire
	);	 

	
	reg_out: process( clk )
	begin
		if rising_edge( clk ) then 	  
			wr_state <= wr_state_wire;
			sel_xor <= sel_xor_wire;
			sel_final <= sel_final_wire;
			ld_rdctr <= ld_rdctr_wire;
			en_rdctr <= en_rdctr_wire;
			
			-- output  
			smsg <= smsg_wire;
			sout <= sout_wire;
			sid <= sid_wire;			
			shift_dout <= shift_dout_fsm3 or load_hash_fsm2; 
			load_hash  <= load_hash_fsm2;	
			dst_write <= dst_write_wire;	
		end if;
	end process;			   
	
	CommGen :  for i in 0 to ppl-1 generate
		load_next_block(i) <= not block_ready(i);
		sr_blk_ready : sr_reg 
			port map ( rst => rst, clk => clk, set => block_ready_set(i), clr => block_ready_clr(i), output => block_ready(i));	
		sr_msg_end : sr_reg 
			port map ( rst => rst, clk => clk, set => msg_end_set(i), clr => msg_end_clr(i), output => msg_end(i));	
		sr_output_write : sr_reg 
			port map ( rst => rst, clk => clk, set => output_busy_set(i), clr => output_busy_clr(i), output => output_busy(i));			
	end generate; 
end struct;