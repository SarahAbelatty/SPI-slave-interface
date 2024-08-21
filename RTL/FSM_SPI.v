module FSM_SPI (MOSI, MISO, ss_n, clk, rst_n, rx_data, rx_valid, tx_data, tx_valid);
// Parameters for states
parameter IDEL = 3'b000;
parameter CHK_CMD = 3'b001;
parameter WRITE = 3'b010;
parameter READ_DATA = 3'b011;
parameter READ_ADD = 3'b100;

// Input ports
input MOSI, ss_n, tx_valid, clk, rst_n;
input [7:0] tx_data;

// Output ports
output reg MISO, rx_valid;
output reg [9:0] rx_data;

// Define current and next states
(*fsm_encoding="sequential"*)
reg [2:0] cs, ns;
reg rd_sig; // Define internal signal to select read(address or data)
reg [3:0] counter_par, counter_ser; // Counters to convert from series to parallel or vice versa
// state memory block
always @(posedge clk) begin
	if (~rst_n) 
		cs <= IDEL;
	else 
		cs <= ns;
end

// next state logic block
always @(*) begin
	case(cs)
		IDEL:
			if (~ss_n)
				ns = CHK_CMD;
			else 
				ns = IDEL;
		CHK_CMD:
			if (ss_n)
				ns = IDEL;
			else if (~ss_n) begin
		    	if (~MOSI)
					ns = WRITE;
			    else if (MOSI) begin
			    	if (rd_sig)
						ns = READ_DATA;
					else if (~rd_sig)
						ns = READ_ADD;
				end
			end
		WRITE:
			if (ss_n)
				ns = IDEL;
			else 
				ns = WRITE;
		READ_DATA:
			if (ss_n)
				ns = IDEL;
			else 
				ns = READ_DATA;
		READ_ADD:
			if (ss_n)
				ns = IDEL;
			else 
				ns = READ_ADD;
	endcase
end

/// output logic block
always @(posedge clk) begin
	if (~rst_n) begin
		rx_data <= 0;
		rx_valid <= 0;
		MISO <= 0;
		rd_sig <= 0;
		counter_ser <= 3'b000;
		counter_par <= 3'b000;
	end
	else begin
		case(cs)
			IDEL: begin
				rx_valid <= 0;
				MISO <= 0;
				counter_ser <= 3'b000;
				counter_par <= 3'b000;
			end
			CHK_CMD: begin
				rx_valid <= 0;
				counter_ser <= 3'b000;
				counter_par <= 3'b000;
			end
			WRITE: begin
				// Convert Data series to parallel(write data or address)
				if (counter_ser < 10) begin
					rx_valid <= 0; 
					rx_data <= {rx_data[8:0], MOSI};
					counter_ser <= counter_ser + 1;
				end
				else 
					rx_valid <= 1;
			end
			READ_DATA: begin
				// Convert Data parallel to series(read data)
				if (tx_valid && counter_par < 8) begin
					MISO <= tx_data[7-counter_par];
					counter_par <= counter_par + 1;
				end
				else begin
					// Convert Data series to parallel(read address that I want its data)
					if (counter_ser<10) begin
						rx_valid <= 0; 
						rx_data <= {rx_data[8:0], MOSI};
						counter_ser <= counter_ser + 1;
					end
					else begin
						rx_valid <= 1; 
						rd_sig <= 0;
					end
				end
			end
			READ_ADD: begin
				rd_sig <= 1;
				// Convert Data series to parallel(read address)
				if (counter_ser < 10) begin
					rx_valid <= 0; 
					rx_data <= {rx_data[8:0], MOSI};
					counter_ser <= counter_ser + 1;
				end
				else 
					rx_valid <= 1;
			end
		endcase
	end
end
endmodule

