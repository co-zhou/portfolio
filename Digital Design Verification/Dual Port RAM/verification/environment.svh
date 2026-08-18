`ifndef ENVIRONMENT_SVH
`define ENVIRONMENT_SVH

class environment extends uvm_env;
  `uvm_component_utils(environment);
  
  agent a;
  scoreboard s;
  
  function new(input string path = "environment", uvm_component parent = null);
    super.new(path, parent);
  endfunction
  
  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    a = agent::type_id::create("a", this);
    s = scoreboard::type_id::create("s", this);
  endfunction
  
  virtual function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    a.m.send.connect(s.recv);
  endfunction  
  
endclass : environment

`endif