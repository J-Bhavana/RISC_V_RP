module insr_tb ();
//  wire [6:0] opcode;
//  wire [2:0] lorbtype;
//  wire [4:0] opr;
//  wire [3:0] alu_action;
  reg clk,start,reset;
  reg [31:0] initialize;

  topmodule T(clk,reset,start,initialize);
  
  always #1 clk=~clk;
  initial begin
    initialize=32'b0;
    reset=1'b0;clk=1'b0; start=1'b1;
    #5 reset=1'b1;
   // #1000 $finish;
  end

endmodule
