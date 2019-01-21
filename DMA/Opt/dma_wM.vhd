--
-- See LICENSE.txt for license details
--
------------------------------------------------------------------------------------
-- Original version modified by Shrinidhi Udupi (udupi@eit.uni-kl.de) 
-- on 17-01-2019
------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use work.dma_types.all;
use ieee.numeric_std.all;
use work.monitor_pkg.all;
entity dma is
  generic(
      addr_msb_g :         address_range := 31;
      data_msb_g :         address_range := 31;
      command_addr_g:      std_logic_vector(address_range) := x"80000000";
      src_addr_addr_g:     std_logic_vector(address_range) := x"80000004";
      tgt_addr_addr_g:     std_logic_vector(address_range) := x"80000008";
      transfer_len_addr_g: std_logic_vector(address_range) := x"8000000C";
      parity_addr_g:       std_logic_vector(address_range) := x"80000010";
      chk_parity_g:        integer := 1;
      addtl_busy_state_g:  integer := 0);
  port(
      reset_n: in std_logic;
      clk:     in std_logic;

      bus_request_o:  out std_logic;
      grant_i:        in  std_logic;
      read_access_i:  in  std_logic;
      read_access_o:  out std_logic;
      write_access_i: in  std_logic;
      write_access_o: out std_logic;
      lock_o:         out std_logic;
      rdy_i:          in  std_logic;
      rdy_o:          out std_logic;
      addr_i:         in  std_logic_vector(addr_msb_g downto 0);
      addr_o:         out std_logic_vector(addr_msb_g downto 0);
      data_i:         in  std_logic_vector(data_msb_g downto 0);
      data_o:         out std_logic_vector(data_msb_g downto 0);
  op_timecode_o : out std_logic_vector(1 downto 0);
  op_property_o : out std_logic_vector(3 downto 0)
);
end dma;

architecture structure of dma is
  signal command_s:        std_logic_vector(1 downto 0);
  signal last_access_s:    std_logic; 
  signal update_addr_s:    std_logic; 
  signal update_data_s:    std_logic; 
  signal address_select_s: std_logic;
  signal data_select_s:    std_logic;
  signal reset_command_s:  std_logic;
  signal read_reg_s:       std_logic;   
  signal write_reg_s:      std_logic;

  component ctrl 
    generic (
        chk_parity_g:        integer;
        addtl_busy_state_g:  integer);
    port(
        reset_n: in std_logic;
        clk:     in std_logic;

        grant_i:        in std_logic;
        read_access_i:  in std_logic;
        write_access_i: in std_logic;
        rdy_i:          in std_logic;

        bus_request_o:  out std_logic;
        read_access_o:  out std_logic;
        write_access_o: out std_logic;
        lock_o:         out std_logic;
        rdy_o:          out std_logic;

        command_s:        in  std_logic_vector(1 downto 0);
        last_access_s:    in  std_logic;
        update_addr_s:    out std_logic;
        update_data_s:    out std_logic;
        address_select_s: out std_logic;
        data_select_s:    out std_logic;
        reset_command_s:  out std_logic;
        read_reg_s:       out std_logic;
        write_reg_s:      out std_logic;
    op_property:        in std_logic_vector(3 downto 0);
    op_timepoint:       in std_logic_vector(1 downto 0)
    );
  end component;

  component data_path 
    generic(
        command_addr_g:      std_logic_vector(address_range); 
        src_addr_addr_g:     std_logic_vector(address_range); 
        tgt_addr_addr_g:     std_logic_vector(address_range); 
        transfer_len_addr_g: std_logic_vector(address_range);
        parity_addr_g:       std_logic_vector(address_range);
        addr_msb_g:          address_range;
        data_msb_g:          data_range;
        chk_parity_g:        integer);
    port(
        clk:     in std_logic;
        reset_n: in std_logic;

        data_i:    in std_logic_vector(data_msb_g downto 0);
        addr_i:    in std_logic_vector(addr_msb_g downto 0);

        data_o: out std_logic_vector(data_msb_g downto 0);
        addr_o: out std_logic_vector(addr_msb_g downto 0);

        command_s:        out std_logic_vector(1 downto 0);
        last_access_s:    out std_logic;
        update_addr_s:    in  std_logic;
        update_data_s:    in  std_logic;
        address_select_s: in  std_logic;
        data_select_s:    in  std_logic;
        reset_command_s:  in  std_logic;
        read_reg_s:  in std_logic;
        write_reg_s: in std_logic;
	transfer_len: out std_logic_vector(data_msb_g downto 0);
    op_property:        in std_logic_vector(3 downto 0);
    op_timepoint:       in std_logic_vector(1 downto 0)
	
    );
  end component;


component monitor
generic (MAX_WAIT_RDY_C_mon: integer := 10;
      addr_msb_g :         address_range := 31;
      data_msb_g :         address_range := 31;
    command_addr_g:      std_logic_vector(address_range); -- addr of command_sig word
    src_addr_addr_g:     std_logic_vector(address_range); -- addr of start addr for read
    tgt_addr_addr_g:     std_logic_vector(address_range); -- addr of start addr for write
    transfer_len_addr_g: std_logic_vector(address_range); -- addr of length
    parity_addr_g:       std_logic_vector(address_range) );
port( 
	clk, rst : in std_logic;
	op_property: out op_prop;
	op_timecode: out op_tc;
	rdy_i,grant_i,read_access_i,write_access_i: in std_logic;
	addr_i:         in  std_logic_vector(addr_msb_g downto 0);
	data_path_i_command: in std_logic_vector(1 downto 0);
	transfer_len: in std_logic_vector(data_msb_g downto 0)
	);	

end component;

 signal    src_addr, tgt_addr, transfer_len:  std_logic_vector(data_msb_g downto 0);
signal     parity_result:  std_logic_vector(data_msb_g downto 0);
 signal op_timepoint_s : std_logic_vector(1 downto 0);
 signal op_property_s : std_logic_vector(3 downto 0);
signal	op_property:       op_prop;
signal op_timecode:       op_tc;
begin

-- process(op_timecode,op_property)
-- begin
--     case op_property is 
-- 	when nop_p 		=> op_property_s <= "000";
-- 	when check_parity_p 	=> op_property_s <= "001";
-- 	when read_register_p	=> op_property_s <= "010";
-- 	when transfer_p		=> op_property_s <= "011";
-- 	when write_register_p	=> op_property_s <= "100";
-- 	when others 		=> op_property_s <= "111";
--     end case;
--     
--     case op_timecode is
-- 	when zero 		=> op_timepoint_s <= "00";
-- 	when t_read_ack_tp	=> op_timepoint_s <= "01";
-- 	when t_write_req_tp	=> op_timepoint_s <= "10";
-- 	when others		=> op_timepoint_s <= "11";
--     end case;
-- end process;


op_timepoint_s <= std_logic_vector(to_unsigned(op_tc'pos(op_timecode),2));
op_property_s <= std_logic_vector(to_unsigned(op_prop'pos(op_property),4));
op_timecode_o <= op_timepoint_s;
op_property_o <= op_property_s;

prop_monitor: monitor
generic map(    
    command_addr_g      => command_addr_g,
    src_addr_addr_g     => src_addr_addr_g,
    tgt_addr_addr_g     => tgt_addr_addr_g,
    transfer_len_addr_g => transfer_len_addr_g,
    parity_addr_g       => parity_addr_g)
 port map(
	clk => clk, rst  => reset_n,
	rdy_i=> rdy_i,
	grant_i => grant_i,
	addr_i => addr_i,
	read_access_i => read_access_i,
	write_access_i=> write_access_i,
	data_path_i_command=>command_s,
	transfer_len => transfer_len,
	op_timecode => op_timecode,
	op_property => op_property
	
);
--op_property <= undefined;
--op_timecode <= one;
  ctrl_i : ctrl 
  generic map (
      chk_parity_g       => chk_parity_g,
      addtl_busy_state_g => addtl_busy_state_g)
  port map (
      reset_n => reset_n,
      clk     => clk,

      grant_i        => grant_i,
      read_access_i  => read_access_i,
      write_access_i => write_access_i,
      rdy_i          => rdy_i,

      bus_request_o  => bus_request_o,
      read_access_o  => read_access_o,
      write_access_o => write_access_o,
      lock_o         => lock_o,
      rdy_o          => rdy_o,

      command_s        => command_s, 
      last_access_s    => last_access_s,
      update_addr_s    => update_addr_s,
      update_data_s    => update_data_s,
      address_select_s => address_select_s,
      data_select_s    => data_select_s,
      reset_command_s  => reset_command_s,
      read_reg_s       => read_reg_s,
      write_reg_s      => write_reg_s,
    op_property  => op_property_s,
    op_timepoint  => op_timepoint_s
  );

data_path_i : data_path 
generic map(
    addr_msb_g          => addr_msb_g,
    data_msb_g          => data_msb_g,
    command_addr_g      => command_addr_g,
    src_addr_addr_g     => src_addr_addr_g,
    tgt_addr_addr_g     => tgt_addr_addr_g,
    transfer_len_addr_g => transfer_len_addr_g,
    parity_addr_g       => parity_addr_g,
    chk_parity_g        => chk_parity_g)
port map(
    clk     => clk,
    reset_n => reset_n,

    data_i => data_i,
    addr_i => addr_i,

    data_o => data_o,
    addr_o => addr_o,

    command_s        => command_s,
    last_access_s    => last_access_s,
    update_addr_s    => update_addr_s,
    update_data_s    => update_data_s,
    address_select_s => address_select_s,
    data_select_s    => data_select_s,
    reset_command_s  => reset_command_s,
    transfer_len     => transfer_len,
    read_reg_s       => read_reg_s,
    write_reg_s      => write_reg_s,
    op_property  => op_property_s,
    op_timepoint  => op_timepoint_s
);

end structure;
