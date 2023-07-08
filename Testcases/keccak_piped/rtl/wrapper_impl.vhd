-- =====================================================================
-- Copyright © 2010-2012 by Cryptographic Engineering Research Group (CERG),
-- ECE Department, George Mason University
-- Fairfax, VA, U.S.A.
-- =====================================================================

library ieee;
use ieee.std_logic_1164.ALL; 
use work.sha3_pkg.all;

entity keccak_piped is
	generic ( 					
		PPL 		: integer := 2;
		HS		 	: integer := 256;
		UF			: integer := 2;
		W 			: integer := 64
	);
	port (					  		
		rst 		: in std_logic;
		clk 		: in std_logic;			
		-- input fifo signals
		ext_din   : in std_logic_vector(w-1 downto 0);
		ext_src_ready : in std_logic_vector(ppl-1 downto 0);
		ext_src_read : out std_logic_vector(ppl-1 downto 0);		
		-- output fifo signals
		
		ext_dout   	: out std_logic_vector(w-1 downto 0);
		ext_dst_ready 	: in std_logic;	   
		ext_dst_write 	: out std_logic
	);   
end entity keccak_piped;

architecture structure of keccak_piped is
	-- SIGNALS BETWEEN HASH CORE AND INPUT FIFO
	signal din_core : std_logic_vector(ppl*w-1 downto 0);
	signal src_ready_core, src_read_core : std_logic_vector(ppl-1 downto 0);

	-- SIGNALS BETWEEN HASH CORE AND OUTPUT FIFO
	signal dout_core : std_logic_vector(w-1 downto 0);
	signal dst_ready_core, dst_write_core : std_logic;
begin			
	
	
	abc: process ( clk ) 
	begin
		if rising_edge( clk ) then 
			din_core(w-1 downto 0) <= ext_din;
			for i in 1 to ppl-1 loop
				din_core(w*(i+1)-1 downto w*i) <= din_core(w*i-1 downto w*(i-1));
			end loop;
			src_ready_core <= ext_src_ready;
			ext_src_read <= src_read_core;
			
			--
			ext_dout <= dout_core;
			ext_dst_write <= dst_write_core;
			dst_ready_core <= ext_dst_ready;
		end if;
	end process;
		
	-- HASH CORE
	sha3core:  entity work.keccak_top_ppl(structure)
		generic map ( PPL => PPL, HS => HS, UF => UF )
		port map (		
			-- global
			rst 	=> rst,
			clk 	=> clk,
			
			--fifo
			din			=> din_core,
			src_read	=> src_read_core,
			src_ready	=> src_ready_core,
			dout		=> dout_core,
			dst_write	=> dst_write_core,
			dst_ready	=> dst_ready_core
	);   
	
end structure;