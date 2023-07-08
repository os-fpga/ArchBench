-- =====================================================================
-- Copyright © 2010-2012 by Cryptographic Engineering Research Group (CERG),
-- ECE Department, George Mason University
-- Fairfax, VA, U.S.A.
-- =====================================================================

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use work.sha3_pkg.all;
use work.keccak_pkg.all;
					 
entity keccak_round is
port (
    rin     			: in std_logic_vector(KECCAK_STATE-1 downto 0);
    rc			   	 	: in std_logic_vector(63 downto 0);
    rout    			: out std_logic_vector(KECCAK_STATE-1 downto 0));
end keccak_round;								 

architecture mrogawski_round of keccak_round is 

type single_lane_type is array (0 to 4) of std_logic_vector(63 downto 0);
type five_lanes_type is array (0 to 4) of single_lane_type;

signal aa : five_lanes_type; 
signal bb : five_lanes_type;
signal cc : five_lanes_type;	
signal dd : five_lanes_type;	

signal Ca, Ce, Ci, Co, Cu: std_logic_vector(63 downto 0); 
signal Da, De, Di, Do, Du: std_logic_vector(63 downto 0); 


begin 
	InRowGen: 
	for i in 0 to 4 generate
		InColGen: 
		for j in 0 to 4 generate
			aa(i)(j) <= rin(KECCAK_STATE-(5*i+j)*64-1 downto KECCAK_STATE-(5*i+j)*64-64);
		end generate;
	end generate;
 	
	Ca <= aa(0)(0) xor aa(1)(0) xor aa(2)(0) xor aa(3)(0) xor aa(4)(0); 
	Ce <= aa(0)(1) xor aa(1)(1) xor aa(2)(1) xor aa(3)(1) xor aa(4)(1); 
	Ci <= aa(0)(2) xor aa(1)(2) xor aa(2)(2) xor aa(3)(2) xor aa(4)(2); 
	Co <= aa(0)(3) xor aa(1)(3) xor aa(2)(3) xor aa(3)(3) xor aa(4)(3); 
	Cu <= aa(0)(4) xor aa(1)(4) xor aa(2)(4) xor aa(3)(4) xor aa(4)(4); 

	Da <= Cu xor rolx(Ce, 1); 
	De <= Ca xor rolx(Ci, 1); 
	Di <= Ce xor rolx(Co, 1); 
	Do <= Ci xor rolx(Cu, 1); 
	Du <= Co xor rolx(Ca, 1); 
	
	bb(0)(0) <= aa(0)(0) xor Da;	cc(0)(0) <= bb(0)(0); 
	bb(0)(1) <= aa(1)(1) xor De; 	cc(0)(1) <= rolx(bb(0)(1), 44); 
	bb(0)(2) <= aa(2)(2) xor Di; 	cc(0)(2) <= rolx(bb(0)(2), 43); 
	bb(0)(3) <= aa(3)(3) xor Do; 	cc(0)(3) <= rolx(bb(0)(3), 21); 	
	bb(0)(4) <= aa(4)(4) xor Du; 	cc(0)(4) <= rolx(bb(0)(4), 14); 	
	
	bb(1)(0) <= aa(0)(3) xor Do; 	cc(1)(0) <= rolx(bb(1)(0), 28); 
	bb(1)(1) <= aa(1)(4) xor Du; 	cc(1)(1) <= rolx(bb(1)(1), 20); 
	bb(1)(2) <= aa(2)(0) xor Da; 	cc(1)(2) <= rolx(bb(1)(2), 3); 	
	bb(1)(3) <= aa(3)(1) xor De; 	cc(1)(3) <= rolx(bb(1)(3), 45); 
	bb(1)(4) <= aa(4)(2) xor Di;	cc(1)(4) <= rolx(bb(1)(4), 61);  
	
	bb(2)(0) <= aa(0)(1) xor De; 	cc(2)(0) <= rolx(bb(2)(0), 1); 
	bb(2)(1) <= aa(1)(2) xor Di; 	cc(2)(1) <= rolx(bb(2)(1), 6); 
	bb(2)(2) <= aa(2)(3) xor Do; 	cc(2)(2) <= rolx(bb(2)(2), 25); 	
	bb(2)(3) <= aa(3)(4) xor Du; 	cc(2)(3) <= rolx(bb(2)(3), 8); 	
	bb(2)(4) <= aa(4)(0) xor Da; 	cc(2)(4) <= rolx(bb(2)(4), 18); 	
	
	bb(3)(0) <= aa(0)(4) xor Du; 	cc(3)(0) <= rolx(bb(3)(0), 27); 
	bb(3)(1) <= aa(1)(0) xor Da; 	cc(3)(1) <= rolx(bb(3)(1), 36); 
	bb(3)(2) <= aa(2)(1) xor De; 	cc(3)(2) <= rolx(bb(3)(2), 10); 
	bb(3)(3) <= aa(3)(2) xor Di; 	cc(3)(3) <= rolx(bb(3)(3), 15); 
	bb(3)(4) <= aa(4)(3) xor Do;	cc(3)(4) <= rolx(bb(3)(4), 56); 
	
	bb(4)(0) <= aa(0)(2) xor Di; 	cc(4)(0) <= rolx(bb(4)(0), 62); 
	bb(4)(1) <= aa(1)(3) xor Do; 	cc(4)(1) <= rolx(bb(4)(1), 55); 
	bb(4)(2) <= aa(2)(4) xor Du; 	cc(4)(2) <= rolx(bb(4)(2), 39); 	
	bb(4)(3) <= aa(3)(0) xor Da; 	cc(4)(3) <= rolx(bb(4)(3), 41); 	
	bb(4)(4) <= aa(4)(1) xor De; 	cc(4)(4) <= rolx(bb(4)(4), 2); 		   
	
	dd(0)(0) <= (cc(0)(0) xor ((not cc(0)(1)) and cc(0)(2))) xor rc; 	
	dd(0)(1) <= cc(0)(1) xor ((not cc(0)(2)) and cc(0)(3)); 	
	dd(0)(2) <= cc(0)(2) xor ((not cc(0)(3)) and cc(0)(4)); 
	dd(0)(3) <= cc(0)(3) xor ((not cc(0)(4)) and cc(0)(0)); 	
	dd(0)(4) <= cc(0)(4) xor ((not cc(0)(0)) and cc(0)(1)); 
	        
	dd(1)(0) <= cc(1)(0) xor ((not cc(1)(1)) and cc(1)(2)); 		
	dd(1)(1) <= cc(1)(1) xor ((not cc(1)(2)) and cc(1)(3));	
	dd(1)(2) <= cc(1)(2) xor ((not cc(1)(3)) and cc(1)(4)); 
	dd(1)(3) <= cc(1)(3) xor ((not cc(1)(4)) and cc(1)(0)); 
	dd(1)(4) <= cc(1)(4) xor ((not cc(1)(0)) and cc(1)(1));
	        
	dd(2)(0) <= cc(2)(0) xor ((not cc(2)(1)) and cc(2)(2)); 
	dd(2)(1) <= cc(2)(1) xor ((not cc(2)(2)) and cc(2)(3)); 
	dd(2)(2) <= cc(2)(2) xor ((not cc(2)(3)) and cc(2)(4)); 
	dd(2)(3) <= cc(2)(3) xor ((not cc(2)(4)) and cc(2)(0)); 
	dd(2)(4) <= cc(2)(4) xor ((not cc(2)(0)) and cc(2)(1)); 	
	        
	dd(3)(0) <= cc(3)(0) xor ((not cc(3)(1)) and cc(3)(2)); 	
	dd(3)(1) <= cc(3)(1) xor ((not cc(3)(2)) and cc(3)(3)); 
	dd(3)(2) <= cc(3)(2) xor ((not cc(3)(3)) and cc(3)(4)); 
	dd(3)(3) <= cc(3)(3) xor ((not cc(3)(4)) and cc(3)(0)); 
	dd(3)(4) <= cc(3)(4) xor ((not cc(3)(0)) and cc(3)(1)); 
	        
	dd(4)(0) <= cc(4)(0) xor ((not cc(4)(1)) and cc(4)(2)); 
	dd(4)(1) <= cc(4)(1) xor ((not cc(4)(2)) and cc(4)(3)); 
	dd(4)(2) <= cc(4)(2) xor ((not cc(4)(3)) and cc(4)(4)); 
	dd(4)(3) <= cc(4)(3) xor ((not cc(4)(4)) and cc(4)(0)); 
	dd(4)(4) <= cc(4)(4) xor ((not cc(4)(0)) and cc(4)(1));    
	
	OutRowGen: 
	for i in 0 to 4 generate
		OutColGen: 
		for j in 0 to 4 generate
			rout(KECCAK_STATE-(5*i+j)*64-1 downto KECCAK_STATE-(5*i+j)*64-64) <= dd(i)(j);
		end generate;
	end generate;
end;	   


