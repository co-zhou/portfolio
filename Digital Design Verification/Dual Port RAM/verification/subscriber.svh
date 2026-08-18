`ifndef SUBSCRIBER_SVH
`define SUBSCRIBER_SVH

class subscriber extends uvm_subscriber #(transaction);
  `uvm_component_utils(subscriber);

  transaction t_cg;

  covergroup cg_dual_port_ram;
    option.per_instance = 1;
    option.auto_bin_max = 2;

    coverpoint t_cg.data_in;
    coverpoint t_cg.data_out;
    coverpoint t_cg.write_address;
    coverpoint t_cg.read_address;
  endgroup

  function new(input string name = "subscriber", uvm_component parent);
    super.new(name, parent);
    cg_dual_port_ram = new();
  endfunction

  virtual function void write(input transaction t);
    t_cg = t;
    cg_dual_port_ram.sample(); 
  endfunction
  
endclass : subscriber

`endif