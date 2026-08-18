`ifndef AGENT_SVH
`define AGENT_SVH

class agent extends uvm_agent;
  `uvm_component_utils(agent);
  
  uvm_sequencer #(transaction) seqr;
  driver d;
  monitor m;
  subscriber s;
  
  function new(input string path = "agent", uvm_component parent = null);
    super.new(path, parent);
  endfunction
  
  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    seqr = uvm_sequencer #(transaction)::type_id::create("seqr", this);
    d = driver::type_id::create("d", this);
    m = monitor::type_id::create("m", this);
    s = subscriber::type_id::create("s", this);
  endfunction
  
  virtual function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    d.seq_item_port.connect(seqr.seq_item_export);
    m.send.connect(s.analysis_export);
  endfunction
  
endclass : agent

`endif