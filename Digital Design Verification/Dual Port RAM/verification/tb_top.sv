`include "uvm_macros.svh"
import uvm_pkg::*;

module tb_top();
  import tb_pkg::*;
  
  dual_port_ram_if rif();
  dual_port_ram dut(
    .clock(rif.clock),
    .data_in(rif.data_in),
    .data_out(rif.data_out),
    .write_en(rif.write_en),
    .write_address(rif.write_address),
    .read_en(rif.read_en),
    .read_address(rif.read_address)
  );
  
  initial begin
    rif.clock = 1;
  end
  
  always #5 rif.clock = ~rif.clock;

  initial begin
    uvm_config_db #(virtual dual_port_ram_if)::set(null, "uvm_test_top.e.a.*", "rif", rif);
    run_test("test");
  end

endmodule : tb_top