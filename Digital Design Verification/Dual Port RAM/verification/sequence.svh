`ifndef SEQUENCE_SVH
`define SEQUENCE_SVH

class seq extends uvm_sequence #(transaction);
  `uvm_object_utils(seq);
  transaction t;
  bit prev_write_en;
  bit [7:0] prev_address;

  function new(input string path = "seq");
    super.new(path);
  endfunction
  
  virtual task body();
    t = transaction::type_id::create("t");
    repeat(100) begin
      start_item(t);

      if(!t.randomize()) begin
        `uvm_error("SEQ", "Randomization Failed");
      end

      t.write_en = 1'b1;
      t.read_en = prev_write_en;
      t.read_address = prev_address;

      prev_write_en = t.write_en;
      prev_address = t.write_address;

      `uvm_info("SEQ", $sformatf("Data Sent to Driver:\ndata_in = %h\nwrite_en = %b\nwrite_address = %h\nread_en = %b\nread_address = %h\n", t.data_in, t.write_en, t.write_address, t.read_en, t.read_address), UVM_NONE);

      finish_item(t);
    end
  endtask
  
endclass : seq

`endif