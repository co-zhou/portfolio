`ifndef DRIVER_SVH
`define DRIVER_SVH

class driver extends uvm_driver #(transaction);
  `uvm_component_utils(driver)
  
  transaction t;
  virtual dual_port_ram_if rif;
  
  function new(input string path = "driver", uvm_component parent = null);
    super.new(path, parent);
  endfunction
  
  virtual function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    t = transaction::type_id::create("t");
    
    if(!uvm_config_db #(virtual dual_port_ram_if)::get(this, "", "rif", rif))
      `uvm_error("DRV", "Unable to access uvm_config_db")

  endfunction
      
  virtual task run_phase(uvm_phase phase);
    forever begin
      seq_item_port.get_next_item(t);

      rif.data_in <= t.data_in;
      rif.write_en <= t.write_en;
      rif.write_address <= t.write_address;
      rif.read_en <= t.read_en;
      rif.read_address <= t.read_address;

      `uvm_info("DRV", $sformatf("Data Sent to DUT:\ndata_in = %h\nwrite_en = %b\nwrite_address = %h\nread_en = %b\nread_address = %h\n", t.data_in, t.write_en, t.write_address, t.read_en, t.read_address), UVM_NONE);

      seq_item_port.item_done();
      repeat(2) @(posedge rif.clock);
    end
  endtask
  
endclass : driver

`endif