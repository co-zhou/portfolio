interface dual_port_ram_if();
  logic       clock        ; // Clock
  logic [7:0] data_in      ; // Input data
  logic [7:0] data_out     ; // Output data
  logic       write_en     ; // 1 => write port enabled
  logic [7:0] write_address; // Memory Write port address
  logic       read_en      ; // 1 => read port enabled
  logic [7:0] read_address ; // Memory Read port address

endinterface : dual_port_ram_if