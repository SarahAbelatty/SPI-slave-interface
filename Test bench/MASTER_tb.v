module MASTER_tb();
//Signals Declaration
reg MOSI; 
reg ss_n; 
reg clk;  
reg rst_n;
wire MISO;
//DUT Instantiation
WRAPPER DUT(.MOSI(MOSI),.MISO(MISO),.ss_n(ss_n),.clk(clk),.rst_n(rst_n));
//Clock Generation
initial begin
	clk = 1;
	forever 
		#5 clk = ~clk;
end
//Test Stimiulus Generator
initial begin
	//Activate Reset ,Un-Enable ss_n& Initialize all signals
	rst_n = 0;
	ss_n  = 1;
	MOSI  = 0;
	@(negedge clk);
	//De-Activate Reset& Start testing
	rst_n = 1;

	//Test Writing Address
	ss_n = 0;
	@(negedge clk);

	MOSI = 0;//Write
	@(negedge clk);
	
	MOSI = 0;
	@(negedge clk);
	MOSI = 0;
	@(negedge clk);
	//2'b00 >> To write address
	repeat(3) begin
		MOSI = 0;
		@(negedge clk);
		MOSI = 1;
		@(negedge clk);
		MOSI = 1;
		@(negedge clk);
		MOSI = 1;
		@(negedge clk);
	end
	//Address : 8'b01110111
	ss_n = 1;
	@(negedge clk);

	//Test Writing Data
	ss_n = 0;
	@(negedge clk);
	MOSI = 0;//Wtite
	@(negedge clk);

	MOSI = 0;
	@(negedge clk);
	MOSI = 1;
	@(negedge clk);
	//2'b01 >> To write Data
	MOSI = 1;
	@(negedge clk);
	MOSI = 0;
	@(negedge clk);
	MOSI = 1;
	@(negedge clk);
	MOSI = 0;
	@(negedge clk);
	MOSI = 1;
	@(negedge clk);
	MOSI = 0;
	@(negedge clk);
	MOSI = 1;
	@(negedge clk);
	MOSI = 0;
	@(negedge clk);	
	//Data:8'b10101010
	ss_n = 1;
	@(negedge clk);

	//Test Reading Address
	ss_n = 0;
	@(negedge clk);

	MOSI = 1;//Read
	@(negedge clk);

	MOSI = 1;
	@(negedge clk);
	MOSI = 0;
	@(negedge clk);
	//2'b10 >> To Read address
	repeat(3) begin
		MOSI = 0;
		@(negedge clk);
		MOSI = 1;
		@(negedge clk);
		MOSI = 1;
		@(negedge clk);
		MOSI = 1;
		@(negedge clk);
	end
	//Address : 8'b01110111
	ss_n = 1;
	@(negedge clk);

	//Test Reading Data
	ss_n = 0;
	@(negedge clk);

	MOSI = 1;//Read
	@(negedge clk);

	MOSI = 1;
	@(negedge clk);
	MOSI = 1;
	@(negedge clk);
	//2'b11 >> To Read Data
	MOSI = 0;
	@(negedge clk);
	MOSI = 1;
	@(negedge clk);
	MOSI = 1;
	@(negedge clk);
	MOSI = 0;
	@(negedge clk);
	MOSI = 1;
	@(negedge clk);
	MOSI = 0;
	@(negedge clk);
	MOSI = 0;
	@(negedge clk);
	MOSI = 0;
	@(negedge clk);	
	//Dummy Data
	repeat(8) @(negedge clk);
	ss_n = 1;
	$stop;
end 
//Test Monitor & Results
initial begin
    $monitor("MOSI = %b, MISO = %b, ss_n = %b",MOSI, MISO, ss_n);
end
endmodule

