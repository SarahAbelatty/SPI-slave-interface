module FSM_SPI_tb ();
reg MOSI_tb, ss_n_tb, tx_valid_tb, clk_tb, rst_n_tb;
reg [7:0] tx_data_tb;
wire MISO_dut, rx_valid_dut;
wire [9:0] rx_data_dut;

FSM_SPI DUT(
.MOSI(MOSI_tb), .MISO(MISO_dut), .ss_n(ss_n_tb), 
.clk(clk_tb), .rst_n(rst_n_tb), .rx_data(rx_data_dut), 
.rx_valid(rx_valid_dut), .tx_data(tx_data_tb), .tx_valid(tx_valid_tb)
);

initial begin
	clk_tb = 1;
	forever 
		#1 clk_tb = ~clk_tb;
end

initial begin
	// Initialize all control signals
	MOSI_tb = 0;
	ss_n_tb = 1;
	tx_data_tb = 0;
	rst_n_tb = 1;
	tx_valid_tb = 0;

	// Test Reset
	rst_n_tb = 0; // In the IDEL state
	repeat(5) @(negedge clk_tb);

	// Release reset and move to CHK_CMD state 
	rst_n_tb = 1;
	ss_n_tb = 0;
	repeat(5) @(negedge clk_tb);

	// Check the WRITE state (Write address)
	MOSI_tb = 0;
	repeat(2) @(negedge clk_tb);
	repeat (8) begin
		MOSI_tb = $random;
		@(negedge clk_tb);
	end

	// Check the WRITE state (Write data)
	MOSI_tb = 0;
	@(negedge clk_tb);
	MOSI_tb = 1;
	@(negedge clk_tb);
	repeat (8) begin
		MOSI_tb = $random;
		@(negedge clk_tb);
	end

	// Back to IDEL state
	ss_n_tb = 1;
	@(negedge clk_tb);

	// Move to CHK_CMD state 
	ss_n_tb = 0;
	@(negedge clk_tb);

	// Check the READ_ADD state (Read address)
	MOSI_tb = 1;
	@(negedge clk_tb);
	MOSI_tb = 0;
	@(negedge clk_tb);
	repeat (8) begin
		MOSI_tb = $random;
		@(negedge clk_tb);
	end

	// Back to IDEL state
	ss_n_tb = 1;
	@(negedge clk_tb);

	// Move to CHK_CMD state 
	ss_n_tb = 0;
	@(negedge clk_tb);

	// Check the READ_DATA state (Read data)
	MOSI_tb = 1;
	repeat(2) @(negedge clk_tb);
	repeat (8) begin
		MOSI_tb = 0;
		@(negedge clk_tb);
	end
	tx_valid_tb = 1;
	repeat (8) begin
		tx_data_tb = $random;
		@(negedge clk_tb);
	end

	// Reset all signals 
	ss_n_tb = 1;
	rst_n_tb = 0; 
	@(negedge clk_tb);
	$stop;
end

initial begin
	$monitor("MOSI = %b, MISO = %b, ss_n = %b, rx_data = %b, rx_valid = %b, tx_data = %b, tx_valid = %b",
	MOSI_tb, MISO_dut, ss_n_tb, rx_data_dut, rx_valid_dut, tx_data_tb, tx_valid_tb);
end

endmodule

