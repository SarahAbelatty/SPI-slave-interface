module SYN_RAM (din, clk, rst_n, rx_valid, dout, tx_valid);
// Define Parameter 
parameter MEM_DEPTH = 256;
parameter ADDR_SIZE = 8;

// Define input ports
input [9:0] din;
input clk, rst_n, rx_valid;

// Define output ports
output reg [7:0] dout;
output reg tx_valid; 

// Define Memory with width size = 8
reg [7:0] mem [MEM_DEPTH-1:0];

// Define adresses 
reg [7:0] write_addr, read_addr;

// Define Data input
reg [7:0] data;

always @(posedge clk) begin
	if (~rst_n) begin
		dout <= 0;
		tx_valid <= 0;
		write_addr <= 0;
		read_addr <= 0;
	end
	else begin
		case (din[9:8])
			2'b00: begin
				tx_valid <= 0;
				if (rx_valid)
					write_addr <= din[7:0]; 
			end
			2'b01: begin
				tx_valid <= 0;
				if (rx_valid)
					mem[write_addr] <= din[7:0];
			end
			2'b10: begin 
				tx_valid <= 0;
				if (rx_valid)
					read_addr <= din[7:0];
			end
			2'b11: begin
				dout <= mem[read_addr];
				tx_valid <= 1;
			end 
		endcase
	end
end
endmodule

