module instruction_memory (format,address);
  output reg [31:0] format;
  input [31:0] address;
  /*input clk;*/
  reg [7:0] location [0:511];

  always @ ( * ) begin
    $readmemb("C:/Users/MINI/Desktop/SEM_2/RP/Risc_V_Single_Cycle_Approach-main/instruction_mem.txt", location);
    
    format={location[address],location[address+1],location[address+2],location[address+3]};
  end
endmodule
