--
-- See LICENSE.txt for license details
--

library ieee;
use ieee.std_logic_1164.all;

package dma_types is

    constant transfer_mem:  integer := 0;
    constant extra_compute: integer := 1;
    
    subtype address_range is integer range 31 downto 0;
    subtype data_range    is integer range 31 downto 0;
    
    function addr_mask(addr_msb_g: natural) return std_logic_vector;
    function data_mask(data_msb_g: natural) return std_logic_vector;

    type state_type is (idle, read_wait, write_wait, busy);

end dma_types;

package body dma_types is

  function addr_mask(addr_msb_g: natural) return std_logic_vector is
    variable result : std_logic_vector(address_range);
  begin
    for i in address_range loop
        if i <= addr_msb_g then
            result(i) := '1';
        else
            result(i) := '0';
        end if;
    end loop;
    return result;
  end function;

  function data_mask(data_msb_g: natural) return std_logic_vector is
    variable result : std_logic_vector(data_range);
  begin
    for i in data_range loop
        if i <= data_msb_g then
            result(i) := '1';
        else
            result(i) := '0';
        end if;
    end loop;
    return result;
  end function;

end;
