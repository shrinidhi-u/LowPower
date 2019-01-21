--
-- See LICENSE.txt for license details
--
property read_register is
disable iff: reset_n=0;

freeze:
  conf_reg_f   = config_reg(addr_i) @ t; -- visible register at left hook

assume:
  -- conceptual state
  at t: idle_state;

  -- trigger
  at t: read_access_i = '1';
  
prove:
  -- conceptual state
  at t+1: idle_state;

  -- outputs
  at t+1: bus_request_o = 0;
  at t+1: rdy_o = 1 and data_o = conf_reg_f;

  at t+1: ram_idle;

  -- visible registers
  at t+1: foreach i in 0..4:
            config_reg(map_address(i)) = prev(config_reg(map_address(i)));
        end foreach;

right_hook: t+1;
end property;
