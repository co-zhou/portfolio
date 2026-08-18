`ifndef TEST_SVH
`define TEST_SVH

class test extends uvm_test;
  `uvm_component_utils(test);
  
  seq s;
  environment e;
  
  function new(input string path = "test", uvm_component parent = null);
    super.new(path, parent);
  endfunction
  
  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    s = seq::type_id::create("s");
    e = environment::type_id::create("e", this);
  endfunction
  
  virtual task run_phase(uvm_phase phase);
    super.run_phase(phase);
    phase.get_objection().set_drain_time(this, 50);
    phase.raise_objection(this);
    s.start(e.a.seqr);
    phase.drop_objection(this);
  endtask
  
endclass : test

`endif