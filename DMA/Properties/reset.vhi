--
-- See LICENSE.txt for license details
--

property reset is
assume:
  reset_sequence;
prove:
  -- conceptual state
  at t: idle_state;
  
  -- outputs
  at t: bus_request_o = 0;
  at t: rdy_o = 0;

  at t: ram_idle;

  -- visible registers
  at t: foreach i in 0..4:
            config_reg(map_address(i)) = 0;
        end foreach;
right_hook: t;
end property;
