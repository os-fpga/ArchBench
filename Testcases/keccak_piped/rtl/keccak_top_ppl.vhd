-- =====================================================================
-- Copyright © 2010-2012 by Cryptographic Engineering Research Group (CERG),
-- ECE Department, George Mason University
-- Fairfax, VA, U.S.A.
-- =====================================================================

-- Possible generics values: 
-- HS = {HASH_SIZE_256, HASH_SIZE_512} 
-- UF = {1, 2}
-- PPL = {2, 4}

-- Valid combinations:
-- (UF, PPL) = (1,2),(2,2),(2,4)

library ieee;
use ieee.std_logic_1164.all;	
use work.sha3_pkg.all;
use work.keccak_pkg.all;


entity keccak_top_ppl is		
generic (   HS : integer := HASH_SIZE_256;	 
	    UF : integer := 2;
            PPL: integer := 1); 											
port (		
		rst 			: in std_logic;
		clk 			: in std_logic;
		src_ready 		: in std_logic_vector(ppl-1 downto 0);
		src_read  		: out std_logic_vector(ppl-1 downto 0);
		dst_ready 		: in std_logic;
		dst_write 		: out std_logic;		
		din				: in std_logic_vector(ppl*w-1 downto 0);
		dout			: out std_logic_vector(w-1 downto 0));	   
end keccak_top_ppl;


architecture structure of keccak_top_ppl is 	 
	constant capacity : integer := get_keccak_capacity( HS );
	
	-- fsm1
	signal ein, en_len, en_ctr: std_logic_vector(ppl-1 downto 0);
	signal zc0, final_segment : std_logic_vector(ppl-1 downto 0);
		
	-- fsm2
	signal smsg : std_logic_vector(log2(ppl)-1 downto 0);
	signal sel_xor, sel_final, wr_state :std_logic;

	signal ld_rdctr, en_rdctr  : std_logic;		  
	-- fsm3		
	signal sout : std_logic_vector(log2(ppl)-1 downto 0);
	signal sid : std_logic;
	signal shift_dout : std_logic_vector(ppl-1 downto 0);
	signal load_id, load_hash : std_logic_vector(ppl-1 downto 0);
begin
	FsegGen : for i in 0 to ppl-1 generate
		final_segment(i) <= din(w*ppl-i*w-1);	-- MSB of a word
	end generate; 
	
	control_gen : entity work.keccak_control_ppl(struct)
		generic map(PPL=>PPL, UF => UF, HS=>HS)
		port map (
			clk =>clk, rst=>rst, 
			src_ready => src_ready, src_read => src_read, dst_ready => dst_ready, dst_write => dst_write,	  
			zc0 => zc0, final_segment => final_segment, ein => ein, en_ctr => en_ctr, en_len => en_len, smsg => smsg,
			-- fsm2
			sel_xor=>sel_xor, sel_final=>sel_final, ld_rdctr=>ld_rdctr, 
			en_rdctr=>en_rdctr,  wr_state=>wr_state, 
			-- fsm3
			shift_dout => shift_dout, load_id => load_id, load_hash => load_hash,  sout => sout,  sid => sid				
		);		


	datapath_gen : entity work.keccak_datapath_ppl(struct)
		generic map(HS=>HS, b=>capacity, UF => UF, PPL => PPL)
		port map (
			clk => clk, rst=>rst, din => din, dout => dout, 		
			zc0 => zc0, ein => ein, en_ctr => en_ctr, en_len => en_len, smsg => smsg,
			-- fsm2
			sel_xor=>sel_xor, sel_final=>sel_final, ld_rdctr=>ld_rdctr, 
			en_rdctr=>en_rdctr,  wr_state=>wr_state, 
			-- fsm3
			shift_dout => shift_dout, load_id => load_id, load_hash => load_hash,  sout => sout,  sid => sid				
		);
end structure;		

