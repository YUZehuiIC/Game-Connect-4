`timescale 1ns/1ps
module Connect4_tb;

parameter CLK_T = 200;
parameter N = 6;
 
reg CLK, NRST, start;
reg [3:0] G, O;
reg [3:0] REG_G[N-1:0], REG_O[N-1:0]; 
wire [23:0] LED_PIN;
wire [1:0] C4_OUT;

integer i;
initial $sdf_annotate("Syn_MatrixMultiplier.sdf", C1);

Connect4 C1(
	.CLK(CLK),
	.NRST(NRST),
	.start(start),
	.G(G),
	.O(O),
	.LED_PIN(LED_PIN),
	.C4_OUT(C4_OUT)
	);

initial
	begin
		$readmemb("./InputVector_G.txt", REG_G);
		$readmemb("./InputVector_O.txt", REG_O);
	end

initial
  	begin
		NRST = 0; // 0 Effective
		start = 0; // 1 Effective
    	G = 0;
    	O = 0;
		#(CLK_T-10) NRST = 1;// Delay time here should be less than CLK_T(half of CLK period)
		#10 start = 1;
		#(CLK_T*2-10);
		$vcdpluson(C1);

		for (i = 0; i < N; i = i + 1)
			begin
				O = 0;
				{G} = REG_G[i];
				#(CLK_T*4);
				G = 0;
				{O} = REG_O[i];
				#(CLK_T*4);
			end
		//#(CLK_T*2)
		$vcdplusoff(C1);
		$finish;
	end

// Clock genertor
initial
	begin
		CLK = 0;
		forever #CLK_T CLK = !CLK; // Every CLK_T, CLK flips -> CLK_T is a half of the CLK period
	end

//
initial
	begin
		#(1000*CLK_T);
		$finish;
	end

endmodule
