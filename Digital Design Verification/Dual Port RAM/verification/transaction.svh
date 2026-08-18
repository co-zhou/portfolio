`ifndef TRANSACTION_SVH
`define TRANSACTION_SVH

class transaction extends uvm_sequence_item;
  rand bit [7:0] data_in      ; // Input data
       bit       write_en     ; // 1 => write port enabled
  rand bit [7:0] write_address; // Memory Write port address
       bit       read_en      ; // 1 => read port enabled
       bit [7:0] read_address ; // Memory Read port address
  logic    [7:0] data_out     ; // Output data
  
  function new(input string path = "transaction");
    super.new(path);
  endfunction
  
  `uvm_object_utils_begin(transaction)
  `uvm_field_int(data_in, UVM_DEFAULT)
  `uvm_field_int(data_out, UVM_DEFAULT)
  `uvm_field_int(write_en, UVM_DEFAULT)
  `uvm_field_int(write_address, UVM_DEFAULT)
  `uvm_field_int(read_en, UVM_DEFAULT)
  `uvm_field_int(read_address, UVM_DEFAULT)
  `uvm_object_utils_end
  
endclass : transaction

`endif