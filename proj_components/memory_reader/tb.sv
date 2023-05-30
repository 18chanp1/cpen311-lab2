module tb_memory_reader(
	input logic [3:0] KEY, 
	input logic [9:0] SW,
	output logic [31:0] data,
	output logic [9:0] LEDR
);

	memory_reader memInst(.clk(~KEY[0]), .rst(1'b0), .read(~KEY[1]), .address(SW[9:0]), .data(data), .datavalid(LEDR[0]));

endmodule