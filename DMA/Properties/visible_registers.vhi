-- used to prove registers with foreach
macro map_address(i:unsigned): unsigned :=
    case i is
    when 0 => src_addr_addr_g;
    when 1 => tgt_addr_addr_g;
    when 2 => transfer_len_addr_g;
    when 3 => command_addr_g;
    when others => parity_addr_g; -- when 4 
    end case;
end macro;

macro config_reg(addr: unsigned): unsigned :=
  case addr is
    when src_addr_addr_g     => data_path_i/src_addr;
    when tgt_addr_addr_g     => data_path_i/tgt_addr
    when transfer_len_addr_g => data_path_i/transfer_len;
    when command_addr_g      => data_path_i/command;
    when parity_addr_g       => data_path_i/parity_result;
    when others              => 0;
  end case;
end macro;

