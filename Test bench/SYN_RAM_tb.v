module SYN_RAM_tb ();
parameter MEM_DEPTH = 256;
parameter ADDR_SIZE = 8;
reg [9:0] din_tb;
reg clk_tb, rst_n_tb, rx_valid_tb;
wire [7:0] dout_dut;
wire tx_valid_dut; 
integer i;

SYN_RAM DUT(
.din(din_tb), .clk(clk_tb), 
.rst_n(rst_n_tb), .rx_valid(rx_valid_tb), 
.dout(dout_dut), .tx_valid(tx_valid_dut)
);

initial begin
	clk_tb = 1;
	forever 
		#1 clk_tb = ~clk_tb;
end

initial begin
	// Initialize all comntrol signals 
	din_tb = 0;
	rst_n_tb = 1;
	rx_valid_tb = 0;

	// Initialize the memory
	for (i=0; i<256; i=i+1)
		DUT.mem[i] = 0;

	// Test reset
	rst_n_tb = 0;
	@(negedge clk_tb);

	// Release reset and activate write (first write address)
	rst_n_tb = 1;
	rx_valid_tb = 1;
	din_tb[9:8] = 2'b00;
	din_tb[7:0] = 8'd181; // addres of write = 181
	@(negedge clk_tb);
	// Activate write (then write data)
	din_tb[9:8] = 2'b01;
	din_tb[7:0] = 8'd230; // data input = 230 
	@(negedge clk_tb);

	// Activate read (first read address)
	din_tb[9:8] = 2'b10;
	din_tb[7:0] = 8'd233; // addrees that i want to read = 233 
	@(negedge clk_tb);
	// Activate read (first read address)
	din_tb[9:8] = 2'b11; // read zero
	@(negedge clk_tb);

	// Activate read (read the address that have been writen 181)
	din_tb[9:8] = 2'b10;
	din_tb[7:0] = 8'd181; // addrees that i want to read = 181
	@(negedge clk_tb);
	din_tb[9:8] = 2'b11; // read 230
	@(negedge clk_tb);

	// Activate write
	din_tb[9:8] = 2'b00;
	din_tb[7:0] = 8'd250; // addres of write = 250
	repeat (5) @(negedge clk_tb);
	din_tb[9:8] = 2'b01;
	din_tb[7:0] = 8'd156; // data input = 156 
	@(negedge clk_tb);

	// Activate read (read the address that have been writen 250)
	din_tb[9:8] = 2'b10;
	din_tb[7:0] = 8'd250; // addrees that i want to read = 250 
	@(negedge clk_tb);
	rx_valid_tb = 0; // Test that the fourth condition doesn't depend on rx_valid
	din_tb[9:8] = 2'b11; // read 156
	repeat (5) @(negedge clk_tb);
	$stop;
end

initial begin
	$monitor("din = %d, rx_valid = %b, dout = %d, tx_valid = %b", 
			din_tb, rx_valid_tb, dout_dut, tx_valid_dut);
end
endmodule


