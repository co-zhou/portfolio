`ifndef SCOREBOARD_SVH
`define SCOREBOARD_SVH

class scoreboard extends uvm_scoreboard;
  `uvm_component_utils(scoreboard)
  
  transaction t;
  uvm_analysis_imp #(transaction, scoreboard) recv;

  logic [7:0] mem [255:0];
  
  function new(input string path = "scoreboard", uvm_component parent = null);
    super.new(path, parent);
    recv = new("recv", this);
  endfunction
  
  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    t = transaction::type_id::create("t");
  endfunction
  
  virtual function void write(input transaction t_input);
    t = t_input;
    `uvm_info("SCO", $sformatf("Data Sent to Scoreboard:\ndata_in = %h\ndata_out = %h\nwrite_en = %b\nwrite_address = %h\nread_en = %b\nread_address = %h\n", t.data_in, t.data_out, t.write_en, t.write_address, t.read_en, t.read_address), UVM_NONE);

    if(t.write_en)
      mem[t.write_address] = t.data_in;

    if(t.read_en) begin 
      if(t.data_out == mem[t.read_address]) begin
        `uvm_info("SCO", $sformatf("Data Match:\ndata_out = %h\nmem[t.read_address] = %h", t.data_out, mem[t.read_address]), UVM_NONE);
      end else begin
        `uvm_error("SCO", $sformatf("Data Mismatch:\ndata_out = %h\nmem[t.read_address] = %h", t.data_out, mem[t.read_address]));
      end
    end

  endfunction
  
endclass : scoreboard

`endif