Library IEEE;	USE IEEE.STD_LOGIC_1164.ALL;	USE IEEE.STD_LOGIC_UNSIGNED.ALL;	
ENTITY bodem_cs10 IS
	PORT (clk, clr, load: IN STD_LOGIC;
		data:	IN STD_LOGIC_VECTOR( 3 DOWNTO 0);
		qout: OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
		cout: OUT STD_LOGIC);
END bodem_cs10;			ARCHITECTURE behav OF bodem_cs10 IS
BEGIN
	PROCESS (clk, clr)
	VARIABLE temp: STD_LOGIC_VECTOR (3 DOWNTO 0);
	BEGIN
	      IF clr ='1' THEN temp:= (OTHERS=>'0');		-- reset không ??ng b?
		ELSIF clk' EVENT AND clk ='1' THEN		-- test xung tích c?c s??n d??ng
		    IF load='1' THEN temp:=data;		-- ??ng b? set 
		         ELSIF temp< 9 THEN temp:= temp +1;		-- có nh? h?n 9 không
			ELSE temp:= (OTHERS =>'0');	--l?n h?n 9 thì xóa v? 0;
		         END IF;
	       END IF;
	       IF temp=9 THEN cout <= '1';			
		ELSE cout <= '0';			
	       END IF;
		qout<= temp;				--gán giá tr? s? ??m cho ??u ra
	END PROCESS;	END behav;
