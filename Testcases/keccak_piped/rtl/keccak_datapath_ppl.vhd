-- =====================================================================
-- Copyright © 2010-2012 by Cryptographic Engineering Research Group (CERG),
-- ECE Department, George Mason University
-- Fairfax, VA, U.S.A.
-- =====================================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all; 
use ieee.numeric_std.all;
use work.sha3_pkg.all;
use work.keccak_pkg.all;

entity keccak_datapath_ppl is
generic (b : integer := KECCAK256_CAPACITY; hs: integer := HASH_SIZE_256; PPL: integer := 2; UF: integer := 1);	
port (
		clk 				:in std_logic;
		rst 				:in std_logic;
		din 				:in std_logic_vector(ppl*w-1 downto 0);
		dout 				:out std_logic_vector(w-1 downto 0);
		
		-- input
		en_len				:in std_logic_vector(ppl-1 downto 0);	
		en_ctr				:in std_logic_vector(ppl-1 downto 0);	
		ein 				:in std_logic_vector(ppl-1 downto 0);	
		zc0					:out std_logic_vector(ppl-1 downto 0);	

		-- process		 
		smsg        		: in std_logic_vector(log2(ppl)-1 downto 0);
		sel_xor 			:in std_logic;
		sel_final			:in std_logic;
		wr_state			:in std_logic;
		ld_rdctr			:in std_logic;
		en_rdctr 			:in std_logic; 
		
		-- Output				
		shift_dout  : in std_logic_vector(ppl-1 downto 0);
        load_id     : in std_logic_vector(ppl-1 downto 0);
        load_hash   : in std_logic_vector(ppl-1 downto 0);
		sout        : in std_logic_vector(log2(ppl)-1 downto 0);
		sid         : in std_logic	
	);
end keccak_datapath_ppl;			   

architecture struct of keccak_datapath_ppl is 
	-- type declaration																 
	type block_array_type is array (0 to ppl-1) of std_logic_vector(b-1 downto 0);
	type c_array_type is array ( 0 to ppl-1) of std_logic_vector(31 downto 0);
	type w_array_type is array ( 0 to ppl-1) of std_logic_vector(w-1 downto 0);
	
	signal c_wire : c_array_type; 
	constant bzeros : std_logic_vector(b-1 downto 0) := (others => '0');
	
	-- input
	signal din_a, din_b : c_array_type;
	signal swap_din 	: w_array_type;
	signal from_sipo	: std_logic_vector(b-1 downto 0);
	signal min 			: block_array_type;
																   
	signal from_concat, to_xor, from_xor, to_register : std_logic_vector(KECCAK_STATE-1 downto 0);		  
							   
	signal to_piso  	: std_logic_vector(hs-1 downto 0);
	signal rd_ctr	: std_logic_vector(4 downto 0);	
																													  
	type ufstate_type is array (0 to UF-1) of std_logic_vector(KECCAK_STATE-1 downto 0);
	signal to_round, from_round : ufstate_type;
	
	type uf64_type is array (0 to UF-1) of std_logic_vector(w-1 downto 0);
	signal rc		:	uf64_type;	 
	signal rc_temp 	: std_logic_vector(w-1 downto 0);
	
	constant zeros: std_logic_vector (KECCAK_STATE-1-b downto 0) := (others => '0');
	constant state_zero : std_logic_vector (KECCAK_STATE-1 downto 0):=(others => '0'); 
 	
	type res_type is array (0 to hs/w-1) of std_logic_vector(w-1 downto 0); 			   
	signal se_result : res_type; 	
	
    -- id, hash		   
	constant id_size : integer := 16;
	signal id_in : std_logic_vector(ppl*id_size-1 downto 0);
	

	-- debugging signals
--	signal aa, bb, cc : state_table;
begin	
--	aa <= str2table( to_round );
--	bb <= str2table( from_round );		 
--	cc <= str2table( from_concat );
		  		
	-- ///////////////////////////////////////////////////////
	-- FSM1 SECTION
	fsm1_section : for i in 0 to ppl-1 generate
		SegmentCntrGen : process( clk )
		begin
			if rising_edge( clk ) then
				if ( en_len(i) = '1' ) then
					c_wire(i) <= din(ppl*w-(i+1)*w+31 downto ppl*w-(i+1)*w);
				elsif ( en_ctr(i) = '1' ) then
					c_wire(i) <= c_wire(i) - b;
				end if;
			end if;	
		end process;
		zc0(i) <= '1' when c_wire(i) = 0 else '0';	
		
		din_a(i) <= din(ppl*w-(i+1)*w+31 downto ppl*w-(i+1)*w);
		din_b(i) <= din(ppl*w-(i+1)*w+63 downto ppl*w-(i+1)*w+32);
		swap_din(i) <= switch_endian_byte(din_a(i),32,32)  &  switch_endian_byte(din_b(i),32,32);	
		SIPOInst : sipo 
			generic map ( N => b, M => w) 
			port map (clk => clk, en => ein(i), input => swap_din(i), output => min(i) );		
	end generate;
	
	-- ///////////////////////////////////////////////////////
	-- FSM2 SECTION
	-- Message selectors	 
	ppl2 : if ppl = 2 generate
		from_sipo <= min(0) when smsg(0) = '0' else min(1);		
	end generate;	   
	
	ppl4 : if ppl = 4 generate   
		with smsg(1 downto 0) select		
		from_sipo <= min(0) when "00", min(1) when "01", min(2) when "10", min(3) when others;	
	end generate;	
	
	from_concat <= from_sipo & zeros;
	to_xor <= state_zero when sel_xor='1' else from_round(UF-1);
	from_xor <= from_concat xor to_xor;
	to_register <= from_xor when sel_final='1' else from_round(UF-1);
		
	-- regsiter for intermediate values	
	state: 
		regn 
		generic map (N => KECCAK_STATE, init=>state_zero) 
		port map ( clk =>clk, rst=>rst, en =>wr_state, input=>to_register, output=>to_round(0));	 
   	
	-- round counter		
   	ctr: 
		countern 
		generic map ( N => 5, step=>1, style=>COUNTER_STYLE_1 ) 
		port map ( clk => clk, rst=>rst, load => ld_rdctr, en => en_rdctr, input => zeros(4 downto 0), output => rd_ctr);
										   
	UF1Gen: if UF = 1 and PPL = 2 generate
		rc(0) <= keccak_rom(conv_integer(rd_ctr));
		rd: 
			entity work.keccak_round_ppl(mrogawski_round)
			port map (clk => clk, rc=>rc(0), rin=>to_round(0), rout=>from_round(0));
	end generate;
	
	UF2PPL2Gen: if UF = 2 and PPL = 2 generate
		rc(0) <= keccak_rom_ux2(0,conv_integer(rd_ctr(3 downto 0)));
		rd0: 
			entity work.keccak_round(mrogawski_round)
			port map (rc=>rc(0), rin=>to_round(0), rout=>from_round(0));
		
		Rc1Gen: process( clk ) 
		begin
			if rising_edge( clk ) then
				rc(1) <= keccak_rom_ux2(1,conv_integer(rd_ctr(3 downto 0)));
				to_round(1) <= from_round(0);
			end if;
		end process;	
		
		rd1: 
			entity work.keccak_round(mrogawski_round)
			port map (rc=>rc(1), rin=>to_round(1), rout=>from_round(1));
	end generate;	 
	
	UF2PPL4Gen: if UF = 2 and PPL = 4 generate
		rc(0) <= keccak_rom_ux2(0,conv_integer(rd_ctr(3 downto 0)));
		rd0: 
			entity work.keccak_round_ppl(mrogawski_round)
			port map (clk=>clk, rc=>rc(0), rin=>to_round(0), rout=>from_round(0));
		
		Rc1Gen: process( clk ) 
		begin
			if rising_edge( clk ) then
				rc_temp <= keccak_rom_ux2(1,conv_integer(rd_ctr(3 downto 0)));
				rc(1) 	 <= rc_temp;
				to_round(1) <= from_round(0);
			end if;
		end process;	
		
		rd1: 
			entity work.keccak_round_ppl(mrogawski_round)
			port map (clk=>clk, rc=>rc(1), rin=>to_round(1), rout=>from_round(1));
	end generate;
	
		
   	-- piso endianess fixing function
	out_gen: for i in 0 to hs/w-1 generate	
		se_result(i) <= from_round(UF-1)(KECCAK_STATE-i*w-1 downto KECCAK_STATE-(i+1)*w); 
		to_piso(hs-i*w-1 downto hs-(i+1)*w) <= switch_endian_word(x=>se_result(i), width=>w, w=>8);	
	end generate;	
		
	-- ///////////////////////////////////////////////////////
	-- FSM3 SECTION
	-- Round Finalization / Load new block / Output generation		
	fsm3_output : entity work.ppl_output_unit(struct) 
		generic map ( h => HS, w => w, ppl => ppl ) 
		port map ( clk => clk, rst => rst,
					hash_result => to_piso, id_in => id_in,
					sid => sid, shift_dout => shift_dout, load_hash => load_hash, 
					load_id => load_id, sout => sout,
					dout => dout );			 
			
	id_in_gen : for i in 0 to ppl-1 generate
		id_in((ppl-i)*id_size-1 downto (ppl-i-1)*id_size) <= din(ppl*w-(i+1)*w+15 downto ppl*w-(i+1)*w);
	end generate; 		
end struct;