-- =====================================================================
-- Copyright © 2010-2012 by Cryptographic Engineering Research Group (CERG),
-- ECE Department, George Mason University
-- Fairfax, VA, U.S.A.
-- =====================================================================

library ieee;
use ieee.std_logic_1164.all;


package keccak_pkg is
	 -- Keccak parameters 
	constant KECCAK_STATE 			: integer := 1600;	
	constant KECCAK256_CAPACITY 	: integer := 1088;
	constant KECCAK512_CAPACITY 	: integer := 576;
	
	-- width of the interface ports
	constant w						: integer := 64;   
	constant LOG2_W 				: integer := 6;
	constant log2roundnr_final256 	: integer := 6; 
	constant KECCAK256_WORDS 		: integer:=  KECCAK256_CAPACITY/w;
	constant KECCAK512_WORDS 		: integer:=  KECCAK512_CAPACITY/w;
	 
			 
	-- number of rounds of Keccak 		 
	constant roundnr256	 			: integer := 24;
	constant roundnr_final 			: integer := 1;	 
	
	constant CTR_SHORT				: integer := 16;
	constant CTR_FULL				: integer := 64;
	constant CTR_SIZE				: integer := CTR_FULL;
	
	-- Keccak data types 
	type plane  is array (4 downto 0) of std_logic_vector(63 downto 0);
	type state 	is array (4 downto 0) of plane;	  
	type state_table is array ( 0 to 4 ) of std_logic_vector(KECCAK_STATE/5-1 downto 0);
	
	-- function descriptions
	function get_keccak_capacity ( hs : integer ) return integer;	  
	function str2table ( str : std_logic_vector(KECCAK_STATE-1 downto 0) ) return state_table;	  
	
	type matrix1 is array (0 to 31) of std_logic_vector(w-1 downto 0);
	constant keccak_rom: matrix1 :=(
	x"0000000000000001", x"0000000000008082", x"800000000000808A", x"8000000080008000",
	x"000000000000808B", x"0000000080000001", x"8000000080008081", x"8000000000008009",
	x"000000000000008A", x"0000000000000088", x"0000000080008009", x"000000008000000A",
	x"000000008000808B", x"800000000000008B", x"8000000000008089", x"8000000000008003",
	x"8000000000008002", x"8000000000000080", x"000000000000800A", x"800000008000000A",
	x"8000000080008081", x"8000000000008080", x"0000000080000001", x"8000000080008008",
	x"0000000000000000", x"0000000000000000", x"0000000000000000", x"0000000000000000",
	x"0000000000000000", x"0000000000000000", x"0000000000000000", x"0000000000000000");	 

	
	type matrix2x16 is array (0 to 1,0 to 15) of std_logic_vector(63 downto 0);
	constant keccak_rom_ux2: matrix2x16 :=(
	(
		x"0000000000000001", x"800000000000808A", 
		x"000000000000808B", x"8000000080008081", 
		x"000000000000008A", x"0000000080008009", 
		x"000000008000808B", x"8000000000008089", 
		x"8000000000008002", x"000000000000800A", 
		x"8000000080008081", x"0000000080000001", 
		x"0000000000000000", x"0000000000000000", 
		x"0000000000000000", x"0000000000000000"),
	(
		x"0000000000008082", x"8000000080008000",
		x"0000000080000001", x"8000000000008009",
		x"0000000000000088", x"000000008000000A",
		x"800000000000008B", x"8000000000008003",
		x"8000000000000080", x"800000008000000A",
		x"8000000000008080", x"8000000080008008",
		x"0000000000000000", x"0000000000000000",
		x"0000000000000000", x"0000000000000000"));
	
end keccak_pkg;

package body keccak_pkg is			
	function get_keccak_capacity ( hs : integer ) return integer is
	begin
		if hs = 256 then
			return KECCAK256_CAPACITY;
		elsif hs = 512 then
			return KECCAK512_CAPACITY;
		end if;
	end function get_keccak_capacity;	 
	
	
	function str2table ( str : std_logic_vector(KECCAK_STATE-1 downto 0) ) return state_table is
		variable ret : state_table;
	begin			 
		for i in 0 to 4 loop
			ret(i) := str(KECCAK_STATE*(5-i)/5-1 downto KECCAK_STATE*(4-i)/5);
		end loop;		
		return ret;
	end function str2table;	
end package body keccak_pkg;