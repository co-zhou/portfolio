`ifndef MONITOR_SVH
`define MONITOR_SVH

class monitor extends uvm_monitor;
  `uvm_component_utils(monitor);
  
  transaction t;
  virtual dual_port_ram_if rif;
  uvm_analysis_port #(transaction) send;
  
  function new(input string path = "monitor", uvm_component parent = null);
    super.new(path, parent);
    send = new("send", this);
  endfunction
  
  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    t = transaction::type_id::create("t");
    
    if(!uvm_config_db #(virtual dual_port_ram_if)::get(this, "", "rif", rif))
      `uvm_error("DRV", "Unable to access uvm_config_db");
  endfunction
  
  virtual task run_phase(uvm_phase phase);
    forever begin
      repeat(2) @(posedge rif.clock);

      t.data_in = rif.data_in;
      t.data_out = rif.data_out;
      t.write_en = rif.write_en;
      t.write_address = rif.write_address;
      t.read_en = rif.read_en;
      t.read_address = rif.read_address;

      `uvm_info("MON", $sformatf("Data Received from DUT:\ndata_in = %h\ndata_out = %h\nwrite_en = %b\nwrite_address = %h\nread_en = %b\nread_address = %h\n", t.data_in, t.data_out, t.write_en, t.write_address, t.read_en, t.read_address), UVM_NONE);

      send.write(t);
    end
  endtask
  
endclass : monitor

`endif