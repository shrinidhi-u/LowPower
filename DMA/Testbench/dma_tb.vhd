LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY TB_dma_reset IS
END TB_dma_reset;

ARCHITECTURE TB_dma_reset_RTL OF TB_dma_reset IS

SIGNAL sim_okay : BOOLEAN := TRUE;

SIGNAL         ADDR_I : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL            CLK : STD_LOGIC;
SIGNAL         DATA_I : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL        GRANT_I : STD_LOGIC;
SIGNAL          RDY_I : STD_LOGIC;
SIGNAL  READ_ACCESS_I : STD_LOGIC;
SIGNAL        RESET_N : STD_LOGIC;
SIGNAL WRITE_ACCESS_I : STD_LOGIC;
SIGNAL         ADDR_O : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL  BUS_REQUEST_O : STD_LOGIC;
SIGNAL         DATA_O : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL         LOCK_O : STD_LOGIC;
SIGNAL    OP_PROPERTY : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL    OP_TIMECODE : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL          RDY_O : STD_LOGIC;
SIGNAL  READ_ACCESS_O : STD_LOGIC;
SIGNAL WRITE_ACCESS_O : STD_LOGIC;


COMPONENT DMA PORT(
	        ADDR_I : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	           CLK : IN STD_LOGIC;
	        DATA_I : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	       GRANT_I : IN STD_LOGIC;
	         RDY_I : IN STD_LOGIC;
	 READ_ACCESS_I : IN STD_LOGIC;
	       RESET_N : IN STD_LOGIC;
	WRITE_ACCESS_I : IN STD_LOGIC;
	        ADDR_O : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	 BUS_REQUEST_O : OUT STD_LOGIC;
	        DATA_O : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	        LOCK_O : OUT STD_LOGIC;


	         RDY_O : OUT STD_LOGIC;
	 READ_ACCESS_O : OUT STD_LOGIC;
	WRITE_ACCESS_O : OUT STD_LOGIC);
END COMPONENT;

BEGIN

DO_SIMULATE: PROCESS
BEGIN

WAIT FOR 0 ns;

	           clk <= '1';
	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '0';
	write_access_i <= '0';

WAIT FOR 5 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '0';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00010000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00010000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000011";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000011";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "00100000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "00100000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000010000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000010000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000100000000000000000000";
	        data_i <= "01000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000100000000000000000000";
	        data_i <= "01000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "00100000010000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "00100000010000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "01000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "01000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00010000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00010000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00110000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00110000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "10000000001000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "10000000001000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "10010000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "10010000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00010000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00010000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000001";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000001";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "00000000000000000000000000000010";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "00000000000000000000000000000010";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "01011000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "01011000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "10000100000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "10000100000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000001000000000000";
	        data_i <= "01010000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000001000000000000";
	        data_i <= "01010000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000011000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000011000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000010000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000010000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "10000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "10000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000011";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000011";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000010000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000010000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "01010000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "01010000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "01000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "01000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "00100000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "00100000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000010000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000010000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "01000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "01000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "01000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "01000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000010";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000010";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "10000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "10000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "11100000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "11100000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "00000000000000000000000000000010";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "00000000000000000000000000000010";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000100000";
	        data_i <= "01100000010000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000100000";
	        data_i <= "01100000010000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000100000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000100000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000001";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000001";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "00100000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "00100000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "01000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "01000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "01100000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "01100000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000010000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000010000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000010000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000010000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "00100001000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "00100001000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000011";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000011";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "10000100011000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "10000100011000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00101000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00101000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "10000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "10000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "01000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "01000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000010000";
	        data_i <= "00101010000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000010000";
	        data_i <= "00101010000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000010000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000010000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "01000000000000000000000000000000";
	        data_i <= "00100000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "01000000000000000000000000000000";
	        data_i <= "00100000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000010";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000010";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "11000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "11000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000001000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000001000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000010000";
	        data_i <= "10000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000010000";
	        data_i <= "10000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000011";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000011";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "01000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "01000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "01000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "01000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00110000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00110000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "01001000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "01001000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000010";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000010";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "11111111111111111111111111111111";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "11111111111111111111111111111111";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "01100000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "01100000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00011001000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00011001000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "00000000010010100010110000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "00000000010010100010110000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00011000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00011000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "10100000000000100000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "10100000000000100000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "01000100000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "01000100000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000100000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000100000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000100000000000100000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000100000000000100000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "01010000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "01010000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000011";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000011";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000100000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000100000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000001";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000001";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000001000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000001000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000100000000";
	        data_i <= "01000000100000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000100000000";
	        data_i <= "01000000100000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000010";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000010";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000010000";
	        data_i <= "01000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000010000";
	        data_i <= "01000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "01000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "01000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "00001100000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "00001100000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000011";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000011";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "11000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "11000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "11000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "11000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000010000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000010000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "10000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "10000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000100000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000100000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000100000";
	        data_i <= "10000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000100000";
	        data_i <= "10000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "01000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "01000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "01100000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "01100000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "00000000000000000000000001000100";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "00000000000000000000000001000100";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "01000000000000000000000000000000";
	        data_i <= "01001000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "01000000000000000000000000000000";
	        data_i <= "01001000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000010";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000010";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "10000000000100000000000010000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "10000000000100000000000010000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000011";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000011";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "10100000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "10100000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000100000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000100000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000100000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000100000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "10000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "10000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000001";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000001";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "01011110000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "01011110000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "01000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "01000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000010000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000010000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "01000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "01000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000010000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000010000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000011";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000011";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000001000000000";
	        data_i <= "00000000000000000000000000000010";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000001000000000";
	        data_i <= "00000000000000000000000000000010";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "01000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "01000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000010";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000010";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "01000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "01000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "01000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "01000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "01000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "01000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "01000000000000000000000000000000";
	        data_i <= "01000000000000001000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "01000000000000000000000000000000";
	        data_i <= "01000000000000001000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "00000000000000000000100000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "00000000000000000000100000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000100000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000100000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00010000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00010000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "11100000000000000011000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "11100000000000000011000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000010000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000010000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00100000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00100000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000011";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000011";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "11110000010000001000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "11110000010000001000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "01000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "01000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "01000000000000000000000000000000";
	        data_i <= "00000000000000001000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "01000000000000000000000000000000";
	        data_i <= "00000000000000001000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "01000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "01000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000010000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000010000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "01000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "01000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "10010000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "10010000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "10000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "10000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000011";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000011";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "01000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "01000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001100";
	        data_i <= "01000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001100";
	        data_i <= "01000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "01000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "01000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "01000100001100001000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "01000100001100001000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000010";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000010";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "01100000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "01100000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000010000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000010000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000001000000000";
	        data_i <= "11100000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000001000000000";
	        data_i <= "11100000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "11000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "11000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "01000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "01000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000010000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000010000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "11000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "11000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "10000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "10000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "00000000000000000000000000000001";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "00000000000000000000000000000001";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000001";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000001";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "01000000000000000000000000000000";
	        data_i <= "11010000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "01000000000000000000000000000000";
	        data_i <= "11010000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000010";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000010";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000010000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000010000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "00000000000000000000011100000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "00000000000000000000011100000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "10010100000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "10010100000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "11100000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "11100000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "11000100000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "11000100000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000001000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000001000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "10001000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "10001000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000001000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000001000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "10000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "10000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "00000000000000000000000000000011";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "00000000000000000000000000000011";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00001000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00001000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000001";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000001";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "01000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "01000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "01000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "01000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "10100000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "10100000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "00010110000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "00010110000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "10000001000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "10000001000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000011";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000011";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "00000000000000000000000000000100";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "00000000000000000000000000000100";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "10010100000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "10010100000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000100000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000100000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000010000000000000";
	        data_i <= "10000010000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000010000000000000";
	        data_i <= "10000010000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "01000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "01000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "01000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "01000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000100000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000100000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "01000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "01000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "01000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "01000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00001000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00001000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000001000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000001000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "00010000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "00010000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000001000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000001000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000001";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000001";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "01000000000000000000000000000000";
	        data_i <= "01010000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "01000000000000000000000000000000";
	        data_i <= "01010000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000011";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000011";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000010000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000010000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000010000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000010000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000001000000";
	        data_i <= "01000000100000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000001000000";
	        data_i <= "01000000100000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "01000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "01000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000011";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000011";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000100000000";
	        data_i <= "01100000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000100000000";
	        data_i <= "01100000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000001000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000001000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "01000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "01000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00100000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00100000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "00001000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "00001000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "00000000001000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "00000000001000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000011";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000011";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000010000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000010000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "10100000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "10100000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "10000000000010000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "10000000000010000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "11110000000001010000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "11110000000001010000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000100000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000100000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000001";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000001";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00100000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00100000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000011";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000011";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "10000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "10000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "00000000000000000100000000010000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "00000000000000000100000000010000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "00010000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "00010000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000010";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000010";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000001000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000001000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000100000000000000000000001";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000100000000000000000000001";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000011";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000011";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000001000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000001000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000010000000000000";
	        data_i <= "00000000100000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000010000000000000";
	        data_i <= "00000000100000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000010000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000010000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000010000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000010000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "10000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "10000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "00100000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "00100000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "00100000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "00100000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '0';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '0';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "00000100000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "00000100000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "00000000000000000000000000001000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "00000000000000000000000000001000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000010";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000010";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000001000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000001000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000001000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000001000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000010000";
	        data_i <= "00101001000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000010000";
	        data_i <= "00101001000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000001000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000001000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "10100000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "10100000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000010000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000010000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00001000001000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00001000001000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000100000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000100000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00001000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00001000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "10000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "10000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000010000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000010000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "00000000000000000000010000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "00000000000000000000010000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "00000010000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "00000010000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000010100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000010100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000010";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000010";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000010000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000010000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000001";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000001";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "00100000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "00100000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "10000000000000000000000000000001";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "10000000000000000000000000000001";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "00000000000010000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "00000000000010000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000001000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000001000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000010000";
	        data_i <= "00000000100000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000010000";
	        data_i <= "00000000100000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000001000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000001000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000001";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000001";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "10000000000000000000100000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "10000000000000000000100000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "00000000101000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "00000000101000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000100000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000100000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000100000";
	        data_i <= "00000000000000001000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000100000";
	        data_i <= "00000000000000001000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000001000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000001000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000010000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000010000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000001000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000001000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000010";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000010";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "10000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "10000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "00000010000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "00000010000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000100000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000100000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000010000000000000000";
	        data_i <= "10000000000001000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000010000000000000000";
	        data_i <= "10000000000001000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "00000000000010000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "00000000000010000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000010";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000010";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000100000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000100000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "00000001000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "00000001000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "00000000000000000000000010000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000001100";
	        data_i <= "00000000000000000000000010000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000100";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000001000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000001000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000100000000000";
	        data_i <= "01000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000100000000000";
	        data_i <= "01000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000010000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000001000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000001000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '1';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000001000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "10010000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "10010000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '0';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '0';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000001";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "10000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000001";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '1';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '1';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '1';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '1';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '0';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '0';

WAIT FOR 1 ns;

	        addr_i <= "00000000000000000000000000000000";
	        data_i <= "00000000000000000000000000000000";
	       grant_i <= '0';
	         rdy_i <= '0';
	 read_access_i <= '0';
	       reset_n <= '0';
	write_access_i <= '0';

WAIT FOR 4 ns; 



	           clk <= '1';

ASSERT ( sim_okay = FALSE )
	REPORT "TB for check 'reset' finished without errors"
	SEVERITY NOTE;

ASSERT ( sim_okay = TRUE )
	REPORT "TB for check 'reset' finished with errors"
	SEVERITY NOTE;

END PROCESS;

DUT : DMA PORT MAP(
	        ADDR_I=>ADDR_I,
	           CLK=>CLK,
	        DATA_I=>DATA_I,
	       GRANT_I=>GRANT_I,
	         RDY_I=>RDY_I,
	 READ_ACCESS_I=>READ_ACCESS_I,
	       RESET_N=>RESET_N,
	WRITE_ACCESS_I=>WRITE_ACCESS_I,
	        ADDR_O=>ADDR_O,
	 BUS_REQUEST_O=>BUS_REQUEST_O,
	        DATA_O=>DATA_O,
	        LOCK_O=>LOCK_O,


	         RDY_O=>RDY_O,
	 READ_ACCESS_O=>READ_ACCESS_O,
	WRITE_ACCESS_O=>WRITE_ACCESS_O);

END TB_dma_reset_RTL;


