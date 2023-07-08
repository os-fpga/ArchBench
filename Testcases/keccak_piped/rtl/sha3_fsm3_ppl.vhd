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

entity sha3_fsm3_ppl is					
	generic ( h : integer := 256; w : integer := 64; ppl : integer := 2 );
	port (	   
		--global
		clk  : in std_logic;
		rst		: in std_logic;
	
		-- datapath
		shift_dout : out std_logic_vector(ppl-1 downto 0);
		sout : out std_logic_vector(log2(ppl)-1 downto 0);
		sid : out std_logic;
		-- fsm 2 handshake signal
		output_busy : in std_logic_vector(ppl-1 downto 0);	
		output_busy_clr  : out std_logic_vector(ppl-1 downto 0);	
		
		-- fifo
		dst_ready : in std_logic;
		dst_write : out std_logic
	);
end sha3_fsm3_ppl;

architecture beh of sha3_fsm3_ppl is
	constant hseg : integer := h/w+1; -- Added a word for messag ID
	constant log2hseg : integer := log2(hseg);	 
	
	signal ek, lk, zkfin, zk0 : std_logic;	  
	signal kc : std_logic_vector(log2hseg-1 downto 0);
	constant log2hsegzeros : std_logic_vector(log2hseg-1 downto 0) := (others => '0');
	
	type fsm3_state_type is (idle, write_data);
	signal cstate_fsm3, nstate : fsm3_state_type;
	
	signal sout_set, sout_clr, sout_sig : std_logic_vector(ppl-1 downto 0);
	
	function priority_encoder( x: std_logic_vector; max : integer ) return std_logic is 
		variable temp : std_logic_vector(max downto 0);
	begin										   			
		temp(0) := not x(0);
		if ( max > 1 ) then
			for i in 1 to max-1 loop
				temp(i) := (not x(i)) and temp(i-1);
			end loop;
		end if;
		temp(max) := x(max) and temp(max-1);
		return temp(max);
	end priority_encoder;
	
	function encoder( x: std_logic_vector; ppl : integer ) return std_logic_vector is
		variable ret : integer := 0;
	begin										   					
		for i in 0 to x'high loop
			if ( x(i) = '1' ) then
				return conv_std_logic_vector(ret,log2(ppl));
			end if;								
			ret := ret + 1;
		end loop;
		return conv_std_logic_vector(0,log2(ppl));
	end encoder;
begin
	-- fsm3 counter
	kcount_gen : countern generic map ( N => log2hseg ) port map ( clk => clk, rst => rst, load => lk, en => ek, input => log2hsegzeros, output => kc);
	zkfin <= '1' when kc = conv_std_logic_vector(hseg-1,log2hseg) else '0';		
	zk0 <= '1' when kc = 0 else '0';
	
	cstate_proc : process ( clk )
	begin
		if rising_edge( clk ) then 
			if rst = '1' then
				cstate_fsm3 <= idle;
			else
				cstate_fsm3 <= nstate;
			end if;
		end if;
	end process;
	
	nstate_proc : process ( cstate_fsm3, dst_ready, output_busy, zkfin, sout_sig)
	begin									  
		-- default values
		sout_set <= (others => '0'); sout_clr <= (others => '0'); output_busy_clr <= (others => '0');		
		
		-- state transition
		case cstate_fsm3 is
			when idle =>										
				if ( output_busy /= 0 ) then
					nstate <= write_data;
				else 
					nstate <= idle;
				end if;
			
				-- PRIORITY ENCODER with 0 as the highest priority
				sout_set(0) <= output_busy(0);			
				for i in 1 to ppl-1 loop
					sout_set(i) <= priority_encoder(output_busy(i downto 0), i );
				end loop;
			
			
			when write_data =>
				if ( dst_ready = '0' and zkfin = '1' ) then
					nstate <= idle;		 
					output_busy_clr <= sout_sig;
					sout_clr <= sout_sig;
				else
					nstate <= write_data;
				end if;
		end case;
	end process;
	
	sid <= '1' when (cstate_fsm3 = write_data and dst_ready = '0' and zk0 = '1') else '0';
	
	gg: for i in 0 to ppl-1 generate
		sout_gen : sr_reg 
			generic map ( init => '0' )
			port map ( rst => rst, clk => clk, set => sout_set(i), clr => sout_clr(i), output => sout_sig(i));
		shift_dout(i) <= '1' when (cstate_fsm3 = write_data and dst_ready = '0' and sout_sig(i) = '1' and zk0 = '0') else '0';											
	end generate;	   
		
	--sout <= conv_std_logic_vector(conv_integer(sout_sig(ppl-1 downto 1)),log2(ppl));
	sout <= encoder(sout_sig, ppl);
	
	dst_write <= '1' when (cstate_fsm3 = write_data and dst_ready = '0') else '0';
	ek <= '1' when (cstate_fsm3 = write_data and dst_ready = '0' and zkfin = '0' ) else '0';
	lk <= '1' when (cstate_fsm3 = write_data and dst_ready = '0' and zkfin = '1' )else '0';
	
end beh;

-----------------------
--- OUTPUT UNIT BELONGING TO PPL FSM3
-----------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use work.sha3_pkg.all;

entity ppl_output_unit is	
	generic ( h : integer := 256; 
		w : integer := 64; 
		ppl : integer := 2; 
		id_size : integer := 16 );
	port (	   
		--global
		clk  : in std_logic;
		rst		: in std_logic;
	
		-- data						   
		id_in		: in std_logic_vector(ppl*id_size-1 downto 0);
		hash_result : in std_logic_vector(h-1 downto 0);
		dout : out std_logic_vector(w-1 downto 0);
		
		-- control	  
		sid : in std_logic;
		shift_dout : in std_logic_vector(ppl-1 downto 0);
		load_hash : in std_logic_vector(ppl-1 downto 0);
		load_id : in std_logic_vector(ppl-1 downto 0);
		sout : in std_logic_vector(log2(ppl)-1 downto 0)
	);
end ppl_output_unit;

architecture struct of ppl_output_unit is							  
	type id_array_type is array ( 0 to ppl-1, 0 to 1) of std_logic_vector(15 downto 0);
	type id_reg_out_type is array ( 0 to ppl-1 ) of std_logic_vector(15 downto 0);
   	type word_array_type is array (0 to ppl-1) of std_logic_vector(w-1 downto 0);	
	   
	constant idzeros : std_logic_vector(w-id_size-1 downto 0) := (others =>'0');
	signal id_reg : id_array_type;		
	signal id_out : std_logic_vector(15 downto 0);			
	signal id_read_addr, id_write_addr : std_logic_vector(ppl-1 downto 0);	
	signal id_reg_out : id_reg_out_type;		
	signal piso_out : word_array_type;	
	signal hash_word : std_logic_vector(w-1 downto 0);
begin
	output_gen : for i in 0 to ppl-1 generate
		piso_gen : piso
			generic map ( N => h, M => w)
			port map ( 	clk => clk, en => shift_dout(i),
						sel => load_hash(i),
						input => hash_result,
						output => piso_out(i) );	
	end generate; 		
	
	id_ram : process( clk )
	begin
		if rising_edge( clk ) then				
			for i in 0 to ppl-1 loop
				if load_id(i) = '1' then
					id_reg(i,conv_integer(id_write_addr(i))) <= id_in((ppl-i)*id_size-1 downto (ppl-i-1)*id_size);
				end if;					
				
				if rst = '1' then
					id_write_addr(i) <= '0';
					id_read_addr(i) <= '0';	
				else
					if (load_hash(i) = '1') then
						id_read_addr(i) <= not id_read_addr(i);	
						id_reg_out(i) <= id_reg(i,conv_integer(id_read_addr(i)));
					end if;
					if ( load_id (i) = '1' ) then						
						id_write_addr(i) <= not id_write_addr(i);
					end if;
				end if;
			end loop;								
		end if;
	end process;
	
	ppl2_out : if ppl = 2 generate
		id_out <= id_reg_out(0) when sout(0) = '0' else id_reg_out(1); 
		hash_word <= piso_out(0) when sout(0) = '0' else piso_out(1);
	end generate;
	
	ppl4_out : if ppl = 4 generate		
		with sout(1 downto 0) select
		id_out <= 	id_reg_out(0) when "00",
					id_reg_out(1) when "01",
					id_reg_out(2) when "10",
					id_reg_out(3) when others;
					
		with sout(1 downto 0) select
		hash_word <= 	piso_out(0) when "00",
						piso_out(1) when "01",
						piso_out(2) when "10",
						piso_out(3) when others;
	end generate;  
	
	ppl5_out : if ppl = 5 generate
		with sout(2 downto 0) select
		id_out <= 	id_reg_out(0) when "000",
					id_reg_out(1) when "001",
					id_reg_out(2) when "010",
					id_reg_out(3) when "011",
					id_reg_out(4) when others;	
					
		with sout(2 downto 0) select
		hash_word <= 	piso_out(0) when "000",
						piso_out(1) when "001",
						piso_out(2) when "010",
						piso_out(3) when "011",
						piso_out(4) when others;
	end generate;
	
	ppl10_out : if ppl = 10 generate
		with sout(3 downto 0) select
		id_out <= 	id_reg_out(0) when "0000",
					id_reg_out(1) when "0001",
					id_reg_out(2) when "0010",
					id_reg_out(3) when "0011",
					id_reg_out(4) when "0100",
					id_reg_out(5) when "0101",
					id_reg_out(6) when "0110",
					id_reg_out(7) when "0111",
					id_reg_out(8) when "1000",
					id_reg_out(9) when others;
					
		with sout(3 downto 0) select
		hash_word <= 	piso_out(0) when "0000",
						piso_out(1) when "0001",
						piso_out(2) when "0010",
						piso_out(3) when "0011",
						piso_out(4) when "0100",
						piso_out(5) when "0101",
						piso_out(6) when "0110",
						piso_out(7) when "0111",
						piso_out(8) when "1000",
						piso_out(9) when others;
	end generate;
	
	
	
	dout <= idzeros & id_out when sid = '1' else hash_word;	
end struct;		