-- =====================================================================
-- Copyright © 2010-2012 by Cryptographic Engineering Research Group (CERG),
-- ECE Department, George Mason University
-- Fairfax, VA, U.S.A.
-- =====================================================================

library IEEE;
use ieee.std_logic_1164.all;			
use ieee.std_logic_unsigned.all; 
use ieee.std_logic_arith.all;
use work.sha3_pkg.all;
use work.keccak_pkg.all;

-- Groestl fsm1 is responsible for controlling input interface 

entity keccak_fsm1 is	 
	generic (mw :integer := KECCAK256_CAPACITY);
	port (
	clk 				: in std_logic;
	rst 				: in std_logic;		
	zc0					: in std_logic;
	load_next_block		: in std_logic;	 
	final_segment		: in std_logic;	
	
	ein 				: out std_logic;   	
	en_ctr 				: out std_logic; 
	en_len				: out std_logic;
	load_id				: out std_logic;
	
	-- Control communication
	block_ready_set 	: out std_logic;   
	msg_end_set 		: out std_logic;
	
	-- FIFO communication
	src_ready 			: in std_logic;
	src_read    		: out std_logic);
end keccak_fsm1;					   

architecture nocounter of keccak_fsm1 is		
	constant mwseg : integer := mw/w;
	constant log2mwseg 		: integer := log2( mwseg );	
	constant log2mwsegzeros : std_logic_vector(log2mwseg-1 downto 0) := (others => '0');
	-- counter
	signal zjfin, lj, ej : std_logic;		 
	signal wc : std_logic_vector(log2mwseg-1 downto 0);

	-- fsm sigs
	type state_type is ( reset, load_mid, wait_for_header1, load_block, wait_for_load1, wait_for_header2, wait_for_load2 );
	signal cstate_fsm1, nstate : state_type; 			 
	
	-- 
	signal f, lf, ef : std_logic;  
		
begin	 						 		
	
	-- final seg register
	sr_final_segment :  sr_reg 
	port map ( rst => rst, clk => clk, set => ef, clr => lf, output => f);
	
	-- fsm1 counter		
	word_counter_gen : countern generic map ( n => log2mwseg ) port map ( clk => clk, rst => '0', load => lj, en => ej, input => log2mwsegzeros, output => wc);
	zjfin <= '1' when wc = conv_std_logic_vector(mwseg-1,log2mwseg) else '0';				
	
	-- state process
	cstate_proc : process ( clk )
	begin
		if rising_edge( clk ) then 
			if rst = '1' then
				cstate_fsm1 <= reset;
			else
				cstate_fsm1 <= nstate;
			end if;
		end if;
	end process;
	
	nstate_proc : process ( cstate_fsm1, src_ready, load_next_block, zjfin, zc0, final_segment, f  )
	begin
		case cstate_fsm1 is
			when reset =>
				nstate <= load_mid;
			when load_mid =>
				if ( src_ready = '1' ) then
					nstate <= load_mid;				
				else 
					nstate <= wait_for_header1;
				end if;
			when wait_for_header1 =>
				if ( src_ready = '1' ) then
					nstate <= wait_for_header1;
				elsif ( final_segment = '1' ) then
					nstate <= wait_for_header2;
				else 
					nstate <= wait_for_load1;
				end if;
			when wait_for_header2 =>
				if (src_ready = '1') then
					nstate <= wait_for_header2;
				else
					nstate <= wait_for_load1;
				end if;	 
			when wait_for_load1 =>
				if (load_next_block = '0') then
					nstate <= wait_for_load1;
				else
					nstate <= load_block;
				end if;	 				
			when load_block =>		
				if ((src_ready = '1') or (src_ready = '0' and zjfin = '0')) then
					nstate <= load_block; 					
				elsif ((src_ready = '0') and (zjfin = '1') and (zc0 = '0')) then
					nstate <= wait_for_load1;				
				elsif ((src_ready = '0') and (zjfin = '1') and (zc0 = '1') and (f = '1')) then
					nstate <= wait_for_load2;
				else
					nstate <= wait_for_header1;
				end if;									
		   when wait_for_load2 =>
		   		 if (load_next_block = '0') then
					nstate <= wait_for_load2;
				else
					nstate <= load_mid;
				end if;
		end case;
	end process;
	
	-- fsm output
	load_id <= '1' when (cstate_fsm1 = load_mid and src_ready = '0') else '0';
	src_read <= '1' when 	((cstate_fsm1 = load_mid and src_ready = '0') or 
							(cstate_fsm1 = wait_for_header1 and src_ready = '0') or 
							(cstate_fsm1 = wait_for_header2 and src_ready = '0') or 
							(cstate_fsm1 = wait_for_load1 and load_next_block = '1' and src_ready = '0' ) or							
							(cstate_fsm1 = load_block and src_ready = '0')) else '0';
		
	ein <= ej;
						 
	ej <= '1' when 	((cstate_fsm1 = wait_for_load1 and load_next_block = '1' and src_ready = '0' ) or
				 	(cstate_fsm1 = load_block and src_ready = '0')) else '0';
						 
    block_ready_set <= '1' when ((cstate_fsm1 = load_block and src_ready = '0' and zjfin = '1')) else '0';
						
	
	msg_end_set <= '1' when (cstate_fsm1 = load_block and zjfin = '1' and zc0 = '1' and f= '1' )  else '0';
	
	lf <= '1' when (cstate_fsm1 = wait_for_load2 and load_next_block = '1')  else '0';	   		
	ef <= '1' when (cstate_fsm1 = wait_for_header2) else '0';
		
	en_len <= '1' when (src_ready = '0' and cstate_fsm1 = wait_for_header1) else '0';
	en_ctr <= '1' when 	(cstate_fsm1 = wait_for_load1 and load_next_block = '1') else '0';
		
	lj <= '1' when ((cstate_fsm1 = reset) or (cstate_fsm1 = load_block and zjfin = '1' and src_ready = '0')) else '0';  

end nocounter;