module WRAPPER (MOSI, MISO, ss_n, clk, rst_n);
// Input ports
input MOSI, clk, rst_n, ss_n;

// Output ports
output MISO;

// Internal signals
wire [9:0] rx_data;
wire rx_valid, tx_valid;
wire [7:0] tx_data;

// Instintiate Master Slave SPI
FSM_SPI SLAVE_SPI(
.MOSI(MOSI), .MISO(MISO), .ss_n(ss_n), 
.clk(clk), .rst_n(rst_n), .rx_data(rx_data), 
.rx_valid(rx_valid), .tx_data(tx_data), 
.tx_valid(tx_valid)
);

// Instintiate Memory "RAM"
SYN_RAM #(
.MEM_DEPTH(256), .ADDR_SIZE(8)
) RAM(
.din(rx_data), .clk(clk), 
.rst_n(rst_n), .rx_valid(rx_valid), 
.dout(tx_data), .tx_valid(tx_valid)
);

endmodule

