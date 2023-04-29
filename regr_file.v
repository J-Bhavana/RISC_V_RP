module regr_file (readout1,readout2,rs1,rs2,rd,in,clk,enW,reset);
  output reg [31:0] readout1,readout2;
  input [4:0] rs1,rs2;
  input [4:0] rd;
  input clk,enW,reset;
  input [31:0] in;
  reg [31:0] RegMemory [31:0];
always @(!reset)
begin
    RegMemory[0] =10; RegMemory[1] =20;  RegMemory[2] = 30; RegMemory[3] = 30;
    RegMemory[4] =10; RegMemory[5] =20;  RegMemory[6] = 30; RegMemory[7] = 30;
    RegMemory[8] =10; RegMemory[9] =20;  RegMemory[10] = 30; RegMemory[11] = 30;
    RegMemory[12] =10; RegMemory[13] =20;  RegMemory[14] = 30; RegMemory[15] = 30;
    RegMemory[16] =10; RegMemory[17] =20;  RegMemory[18] = 30; RegMemory[19] = 30;
    RegMemory[20] =10; RegMemory[21] =20;  RegMemory[22] = 30; RegMemory[23] = 30;
    RegMemory[24] =10; RegMemory[25] =20;  RegMemory[26] = 30; RegMemory[27] = 30;
    RegMemory[28] =10; RegMemory[29] =20;  RegMemory[30] = 30; RegMemory[31] = 30;
    
end
always @(*)
begin 
    readout1 = RegMemory[rs1]; readout2 = RegMemory[rs2];
end
always @(posedge clk)  
begin
    if (enW)
        RegMemory[rd] = in;  
end
endmodule
