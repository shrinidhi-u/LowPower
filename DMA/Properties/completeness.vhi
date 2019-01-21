--
-- See LICENSE.txt for license details
--
completeness dma is
disable iff: reset_n=0;

determination_assumptions:
  determined(reset_n);
  determined(grant_i);
  determined(read_access_i);
  determined(write_access_i);
  determined(rdy_i);
  determined(addr_i);
  determined(data_i);

determination_requirements:
  determined(bus_request_o);
  determined(read_access_o);
  determined(write_access_o);
  determined(lock_o);
  determined(rdy_o);
  
  --op_p: determined(prev(op_property));
  --op_t: determined(prev(op_timecode));
  -- address only determined during an access
  if read_access_o = '1'  or write_access_o = '1' then
    determined(addr_o)
  end if;

  -- data determined during write to RAM 
  if write_access_o = '1' then
    determined(data_o)
  end if;

  -- data also determined at end of read from CPU (configuration register)
  if prev(read_access_i = '1') and rdy_o = '1' then
    determined(data_o)
  end if;

local_determination_requirements:
  at right_hook: determined(config_reg(src_addr_addr_g));     -- visible register
  at right_hook: determined(config_reg(tgt_addr_addr_g));     -- visible register
  at right_hook: determined(config_reg(transfer_len_addr_g)); -- visible register
  at right_hook: determined(config_reg(command_addr_g));      -- visible register
  at right_hook: determined(config_reg(parity_addr_g));       -- visible register
  at right_hook: determined(idle_state);                      -- needed for length 1

reset_property:
  reset;

property_graph:
  all_ops := nop, write_register, read_register, transfer, check_parity;
  reset, all_ops -> all_ops;

end completeness;
