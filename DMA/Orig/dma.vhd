--
-- See LICENSE.txt for license details
--

library ieee;
use ieee.std_logic_1164.all;
use work.dma_types.all;

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
      data_o:         out std_logic_vector(data_msb_g downto 0));
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
        write_reg_s:      out std_logic
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
        write_reg_s: in std_logic
    );
  end component;

begin
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
      write_reg_s      => write_reg_s
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
    read_reg_s       => read_reg_s,
    write_reg_s      => write_reg_s
);

end structure;
