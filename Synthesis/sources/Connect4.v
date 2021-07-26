module Connect4 (
	CLK, NRST, start,
	G, O,
	LED_PIN, C4_OUT
	);

input CLK, NRST, start, G, O;
output LED_PIN, C4_OUT;

parameter S0 = 2'b00;
parameter S1 = 2'b01;
parameter S2 = 2'b10;

parameter NOTEND = 2'b00;
parameter GWIN = 2'b01;
parameter OWIN = 2'b10;
parameter TIE = 2'b11;

reg [1:0] state, next_state;

wire [3:0] G, O; // {place_enable, col[3]} = G/O;
reg [3:0] G_play, O_play;
reg [23:0] LED_PIN; // 
reg [1:0] C4_OUT; // 00:not end; 01: G wins; 10: O wins; 11: Full(Tie)
//reg [7:0] Chip_Array[63:0];// For each Chip_Array[i]:{m_b[2:0], n_b[2:0], Fill, G_O}

integer i, m, n, col, row;
integer Col_Fill[7:0]; // Column-i are filled with Col_Fill[i-1] chips, next one in col-i should be in row (8-Col_Fill[i-1])
integer GFill[63:0]; // Green Fill Status
integer OFill[63:0]; // O Fill Status

integer debug; // signal only for debug

//integer [1:0] Chip_Array[63:0];// {G/O, m, n}
// 
always @ (posedge CLK or negedge NRST)
	if (!NRST)
		begin
			state <= S0;
		end
	else
		begin
			state <= next_state;
		end

// State Machine
always @ (state or start)
	case (state)
		S0: begin // Initialization
				if (start)
					next_state = S1;
				else
					next_state = S0;
				// initialize all the LED pins
				/*for (i=1; i<=4; i++) begin
					LED_PIN[27-3*i - 1] = 1;//1. G_column,PIN[27-3i] = 1
					LED_PIN[26-3*i - 1] = 1;//2. O_column,PIN[26-3i] = 1
					LED_PIN[25-3*i - 1] = 0;//3. row, PIN[25-3i] = 0
					end
				for (i=5; i<=8, i++) begin
					LED_PIN[3*i-14 - 1] = 1;//4. G_column,PIN[3i-14] = 1
					LED_PIN[3*i-13 - 1] = 1;//5. O_column,PIN[3i-13] = 1
					LED_PIN[3*i-12 - 1] = 0;//6. row, PIN[3i-12] = 0
					end*/
				// 1.
				LED_PIN[23] = 1;
				LED_PIN[20] = 1;
				LED_PIN[17] = 1;
				LED_PIN[14] = 1;
				// 2. 
				LED_PIN[22] = 1;
				LED_PIN[19] = 1;
				LED_PIN[16] = 1;
				LED_PIN[13] = 1;
				// 3. 
				LED_PIN[21] = 0;
				LED_PIN[18] = 0;
				LED_PIN[15] = 0;
				LED_PIN[12] = 0;
				// 4.
				LED_PIN[0] = 1;
				LED_PIN[3] = 1;
				LED_PIN[6] = 1;
				LED_PIN[9] = 1;
				// 5.
				LED_PIN[1] = 1;
				LED_PIN[4] = 1;
				LED_PIN[7] = 1;
				LED_PIN[10] = 1;
				// 6. 
				LED_PIN[2] = 0;
				LED_PIN[5] = 0;
				LED_PIN[8] = 0;
				LED_PIN[11] = 0;
 
				// initialize G and O
				//G = 0; O = 0;
				
				//C4_OUT = NOTEND; 
				// initialize Chip_Array
				//Chip_Array = 0; 
				Col_Fill[0] = 0; Col_Fill[1] = 0; Col_Fill[2] = 0; Col_Fill[3] = 0; 
				Col_Fill[4] = 0; Col_Fill[5] = 0; Col_Fill[6] = 0; Col_Fill[7] = 0;
				GFill[0] = 0; GFill[1] = 0; GFill[2] = 0; GFill[3] = 0; GFill[4] = 0; GFill[5] = 0; GFill[6] = 0; GFill[7] = 0; GFill[8] = 0; GFill[9] = 0; GFill[10] = 0; GFill[11] = 0; GFill[12] = 0; GFill[13] = 0; GFill[14] = 0; GFill[15] = 0; GFill[16] = 0; GFill[17] = 0; GFill[18] = 0; GFill[19] = 0; GFill[20] = 0; GFill[21] = 0; GFill[22] = 0; GFill[23] = 0; GFill[24] = 0; GFill[25] = 0; GFill[26] = 0; GFill[27] = 0; GFill[28] = 0; GFill[29] = 0; GFill[30] = 0; GFill[31] = 0; GFill[32] = 0; GFill[33] = 0; GFill[34] = 0; GFill[35] = 0; GFill[36] = 0; GFill[37] = 0; GFill[38] = 0; GFill[39] = 0; GFill[40] = 0; GFill[41] = 0; GFill[42] = 0; GFill[43] = 0; GFill[44] = 0; GFill[45] = 0; GFill[46] = 0; GFill[47] = 0; GFill[48] = 0; GFill[49] = 0; GFill[50] = 0; GFill[51] = 0; GFill[52] = 0; GFill[53] = 0; GFill[54] = 0; GFill[55] = 0; GFill[56] = 0; GFill[57] = 0; GFill[58] = 0; GFill[59] = 0; GFill[60] = 0; GFill[61] = 0; GFill[62] = 0; GFill[63] = 0; GFill[64] = 0;   
				OFill[0] = 0; OFill[1] = 0; OFill[2] = 0; OFill[3] = 0; OFill[4] = 0; OFill[5] = 0; OFill[6] = 0; OFill[7] = 0; OFill[8] = 0; OFill[9] = 0; OFill[10] = 0; OFill[11] = 0; OFill[12] = 0; OFill[13] = 0; OFill[14] = 0; OFill[15] = 0; OFill[16] = 0; OFill[17] = 0; OFill[18] = 0; OFill[19] = 0; OFill[20] = 0; OFill[21] = 0; OFill[22] = 0; OFill[23] = 0; OFill[24] = 0; OFill[25] = 0; OFill[26] = 0; OFill[27] = 0; OFill[28] = 0; OFill[29] = 0; OFill[30] = 0; OFill[31] = 0; OFill[32] = 0; OFill[33] = 0; OFill[34] = 0; OFill[35] = 0; OFill[36] = 0; OFill[37] = 0; OFill[38] = 0; OFill[39] = 0; OFill[40] = 0; OFill[41] = 0; OFill[42] = 0; OFill[43] = 0; OFill[44] = 0; OFill[45] = 0; OFill[46] = 0; OFill[47] = 0; OFill[48] = 0; OFill[49] = 0; OFill[50] = 0; OFill[51] = 0; OFill[52] = 0; OFill[53] = 0; OFill[54] = 0; OFill[55] = 0; OFill[56] = 0; OFill[57] = 0; OFill[58] = 0; OFill[59] = 0; OFill[60] = 0; OFill[61] = 0; OFill[62] = 0; OFill[63] = 0; OFill[64] = 0; 
				m = 0; n = 0; col = 0; row = 0;
				debug = 0;
			end
		S1: begin // place one chip (one turn)
				next_state = S2;
				//G_play = G; O_play = O;
				// no player
				if(G_play[3]==0 && O_play[3]==0) begin 
					//m = 0; n = 0; // no LED change
					end

				// both want to place
				else if (G_play[3]==1 && O_play[3]==1) begin 
					//m = 0; n = 0; // no LED change
					
					$display("Attention: Players place chips simultaneously");
					end

				// G's turn
				else if (G_play[3]==1 && O_play[3]==0) begin 
					m = G_play[0]+2*G_play[1]+4*G_play[2]+1; n = 8-Col_Fill[m-1];
					//row = n;
					//col = m; row = n;
					if(Col_Fill[m-1]==8) begin // the column is full or column index is invalid
						m = 0; n = 0;
						$display("Attention: The column %d is full.", m);
						end
					else begin // the place is avaliable
						// update Chip_Array status. 
						//Chip_Array[8*(m-1)+n -1] = {1, 0}; // location [m,n]: filled, G
						GFill[8*(m-1)+n -1] = 1; // G's chips location
						Col_Fill[m-1] = Col_Fill[m-1] + 1; 
						// LED Display: column pins
						if(m<=4) begin
							LED_PIN[27-3*m - 1] = 0;
							end
						else begin
							LED_PIN[3*m-14 - 1] = 0;
							end
						// LED Display: row pins
						if(n<=4) begin
							LED_PIN[25-3*n - 1] = 1;
							end
						else begin
							LED_PIN[3*n-12 - 1] = 1;
							end
						end
					end
					
				// O's turn
				else if (G_play[3]==0 && O_play[3]==1) begin 
					m = O_play[0]+2*O_play[1]+4*O_play[2]+1; n = 8-Col_Fill[m-1];
					//row = n;
					//col = m; row = n;
					if(Col_Fill[m-1]==8) begin // the column is full or column index is invalid
						m = 0; n = 0;
						$display("Attention: The column %d is full.", m);
						end
					else begin // the place is avaliable
						// update Chip_Array status. 
						//Chip_Array[8*(m-1) + n] = {1, 1}; // location [m,n]: filled, O
						OFill[8*(m-1)+n-1] = 1; // O's chips location
						Col_Fill[m-1] = Col_Fill[m-1] + 1;
						// LED Display: column pins
						if(m<=4) begin
							LED_PIN[26-3*m - 1] = 0;
							end
						else begin
							LED_PIN[3*m-13 - 1] = 0;
							end
						// LED Display: row pins
						if(n<=4) begin
							LED_PIN[25-3*n - 1] = 1;
							end
						else begin
							LED_PIN[3*n-12 - 1] = 1;
							end
						end
					end
					
			end
		S2: begin // whether to end + Display Results in LED
				if(C4_OUT == NOTEND) begin // not end
					next_state = S1;
					end
				else if(C4_OUT == GWIN) begin // G wins
					next_state = S0;
					$display("Green wins!");
					// LED Display: All Green!
					/*for (i=1; i<=4; i++) begin
						LED_PIN[27-3*i - 1] = 0;//1. G_column,PIN[27-3i] = 1
						LED_PIN[26-3*i - 1] = 1;//2. O_column,PIN[26-3i] = 1
						LED_PIN[25-i*i - 1] = 1;//3. row, PIN[25-3i] = 0
						end
					for (i=5; i<=8, i++) begin
						LED_PIN[3*i-14 - 1] = 0;//4. G_column,PIN[3i-14] = 1
						LED_PIN[3*i-13 - 1] = 1;//5. O_column,PIN[3i-13] = 1
						LED_PIN[3*i-12 - 1] = 1;//6. row, PIN[3i-12] = 0
						end*/
					// 1.
					LED_PIN[23] = 0;
					LED_PIN[20] = 0;
					LED_PIN[17] = 0;
					LED_PIN[14] = 0;
					// 2. 
					LED_PIN[22] = 1;
					LED_PIN[19] = 1;
					LED_PIN[16] = 1;
					LED_PIN[13] = 1;
					// 3. 
					LED_PIN[21] = 1;
					LED_PIN[18] = 1;
					LED_PIN[15] = 1;
					LED_PIN[12] = 1;
					// 4.
					LED_PIN[0] = 0;
					LED_PIN[3] = 0;
					LED_PIN[6] = 0;
					LED_PIN[9] = 0;
					// 5.
					LED_PIN[1] = 1;
					LED_PIN[4] = 1;
					LED_PIN[7] = 1;
					LED_PIN[10] = 1;
					// 6. 
					LED_PIN[2] = 1;
					LED_PIN[5] = 1;
					LED_PIN[8] = 1;
					LED_PIN[11] = 1;
					end
				else if(C4_OUT == OWIN) begin // O wins
					next_state = S0;
					$display("Orange wins!");
					// LED Display: All Orange!
					/*for (i=1; i<=4; i++) begin
						LED_PIN[27-3*i - 1] = 1;//G_column,PIN[27-3i] = 1
						LED_PIN[26-3*i - 1] = 0;//O_column,PIN[26-3i] = 1
						LED_PIN[25-i*i - 1] = 1;//row, PIN[25-3i] = 0
						end
					for (i=5; i<=8, i++) begin
						LED_PIN[3*i-14 - 1] = 1;//G_column,PIN[3i-14] = 1
						LED_PIN[3*i-13 - 1] = 0;//O_column,PIN[3i-13] = 1
						LED_PIN[3*i-12 - 1] = 1;//row, PIN[3i-12] = 0
						end*/
					// 1.
					LED_PIN[23] = 1;
					LED_PIN[20] = 1;
					LED_PIN[17] = 1;
					LED_PIN[14] = 1;
					// 2. 
					LED_PIN[22] = 0;
					LED_PIN[19] = 0;
					LED_PIN[16] = 0;
					LED_PIN[13] = 0;
					// 3. 
					LED_PIN[21] = 1;
					LED_PIN[18] = 1;
					LED_PIN[15] = 1;
					LED_PIN[12] = 1;
					// 4.
					LED_PIN[0] = 1;
					LED_PIN[3] = 1;
					LED_PIN[6] = 1;
					LED_PIN[9] = 1;
					// 5.
					LED_PIN[1] = 0;
					LED_PIN[4] = 0;
					LED_PIN[7] = 0;
					LED_PIN[10] = 0;
					// 6. 
					LED_PIN[2] = 1;
					LED_PIN[5] = 1;
					LED_PIN[8] = 1;
					LED_PIN[11] = 1;					
					end
				else if (C4_OUT == TIE) begin // tie
					next_state = S0;
					$display("TIE!");
					end 
			end
	endcase
// judge logic
always @ (posedge CLK)
	begin
		G_play <= G; O_play <= O;
		// G's turn
		if (G_play[3]==1 && O_play[3]==0) begin // whether G wins
			//m <= G_play[0]+2*G_play[1]+4*G_play[2]+1; n <= 8-(Col_Fill[G_play[0]+2*G_play[1]+4*G_play[2]]-1);
			//m<=m;n<=n;
			//m <= m; n <= n;
			// wins horizontally
			if(m>=4 && GFill[8*(m-1-1)+n -1]==1 && GFill[8*(m-2-1)+n -1]==1 && GFill[8*(m-3-1)+n -1]==1) begin // _ _ _ 1
				C4_OUT <= GWIN; debug <= 1;
				end
			else if(m>=3 && m<=7 && GFill[8*(m+1-1)+n -1]==1 && GFill[8*(m-1-1)+n -1]==1 && GFill[8*(m-2-1)+n -1]==1) begin // _ _ 1 _
				C4_OUT <= GWIN; debug <= 2;
				end
			else if(m>=2 && m<=6 && GFill[8*(m+2-1)+n -1]==1 && GFill[8*(m+1-1)+n -1]==1 && GFill[8*(m-1-1)+n -1]==1) begin // _ 1 _ _
				C4_OUT <= GWIN; debug <= 3;
				end
			else if(m<=5 && GFill[8*(m+3-1)+n -1]==1 && GFill[8*(m+2-1)+n -1]==1 && GFill[8*(m+1-1)+n -1]==1) begin // 1 _ _ _
				C4_OUT <= GWIN; debug <= 4;
				end
			
			// wins vertically
			else if(n>=4 && GFill[8*(m-1)+n-1 -1]==1 && GFill[8*(m-1)+n-2 -1]==1 && GFill[8*(m-1)+n-3 -1]==1) begin 
				C4_OUT <= GWIN;
				end
			else if(n>=3 && n<=7 && GFill[8*(m-1)+n+1 -1]==1 && GFill[8*(m-1)+n-1 -1]==1 && GFill[8*(m-1)+n-2 -1]==1) begin 
				C4_OUT <= GWIN;
				end
			else if(n>=2 && n<=6 && GFill[8*(m-1)+n+2] -1==1 && GFill[8*(m-1)+n+1 -1]==1 && GFill[8*(m-1)+n-1 -1]==1) begin 
				C4_OUT <= GWIN;
				end
			else if(n<=5 && GFill[8*(m-1)+n+3 -1]==1 && GFill[8*(m-1)+n+2 -1]==1 && GFill[8*(m-1)+n+1 -1]==1) begin 
				C4_OUT <= GWIN;
				end

			// wins postive diagonally
			else if(m>= 4 && n>=4 && GFill[8*(m-1-1)+n-1 -1]==1 && GFill[8*(m-2-1)+n-2 -1]==1 && GFill[8*(m-3-1)+n-3 -1]==1) begin 
				C4_OUT <= GWIN;
				end
			else if(m>=3 && m<=7 && n>=3 && n<=7 && GFill[8*(m-1-1)+n-1 -1]==1 && GFill[8*(m-2-1)+n-2 -1]==1 && GFill[8*(m+1-1)+n+1 -1]==1) begin 
				C4_OUT <= GWIN;
				end
			else if(m>=2 && m<=6 && n>=2 && n<=6 && GFill[8*(m-1-1)+n-1 -1]==1 && GFill[8*(m+1-1)+n+1 -1]==1 && GFill[8*(m+2-1)+n+2 -1]==1) begin 
				C4_OUT <= GWIN;
				end
			else if(m<=5 && n<=5 && GFill[8*(m+1-1)+n+1 -1]==1 && GFill[8*(m+2-1)+n+2 -1]==1 && GFill[8*(m+3-1)+n+3 -1]==1) begin 
				C4_OUT <= GWIN;
				end	

			// wins negative diagonally
			else if(m<=5 && n>=4 && GFill[8*(m+1-1)+n-1 -1]==1 && GFill[8*(m+2-1)+n-2 -1]==1 && GFill[8*(m+3-1)+n-3 -1]==1) begin 
				C4_OUT <= GWIN;
				end
			else if(m>=2 && m<=6 && n>=3 && n<=7 && GFill[8*(m+1-1)+n-1 -1]==1 && GFill[8*(m+2-1)+n-2 -1]==1 && GFill[8*(m-1-1)+n+1 -1]==1) begin 
				C4_OUT <= GWIN;
				end
			else if(m>=3 && m<=7 && n>=2 && n<=6 && GFill[8*(m+1-1)+n-1 -1]==1 && GFill[8*(m-1-1)+n+1 -1]==1 && GFill[8*(m-2-1)+n+2 -1]==1) begin 
				C4_OUT <= GWIN;
				end
			else if(m>=4 && n<=5 && GFill[8*(m-1-1)+n+1 -1]==1 && GFill[8*(m-2-1)+n+2 -1]==1 && GFill[8*(m-3-1)+n+3 -1]==1) begin 
				C4_OUT <= GWIN;
				end	

			else begin // G doen't win
				if(Col_Fill[0]==8 && Col_Fill[1]==8 && Col_Fill[2]==8 && Col_Fill[3]==8 && Col_Fill[4]==8 && Col_Fill[5]==8 && Col_Fill[6]==8 && Col_Fill[7]==8) begin // All positions are Full
					C4_OUT <= TIE;
					end	
				else begin
					C4_OUT <= NOTEND;
					end
				end
			end


		// O's turn
		else if (G_play[3]==0 && O_play[3]==1) begin
			//m <= O_play[0]+2*O_play[1]+4*O_play[2]+1; n <= 8-(Col_Fill[G_play[0]+2*G_play[1]+4*G_play[2]]-1);
			//m<=m; n<=n;
			//m <= m; n <= n;
			// wins horizontally
			if(m>=4 && OFill[8*(m-1-1)+n -1]==1 && OFill[8*(m-2-1)+n -1]==1 && OFill[8*(m-3-1)+n -1]==1) begin // _ _ _ 1
				C4_OUT <= OWIN; //debug <= 1;
				end
			else if(m>=3 && m<=7 && OFill[8*(m+1-1)+n -1]==1 && OFill[8*(m-1-1)+n -1]==1 && OFill[8*(m-2-1)+n -1]==1) begin // _ _ 1 _
				C4_OUT <= OWIN; //debug <= 2;
				end
			else if(m>=2 && m<=6 && OFill[8*(m+2-1)+n -1]==1 && OFill[8*(m+1-1)+n -1]==1 && OFill[8*(m-1-1)+n -1]==1) begin // _ 1 _ _
				C4_OUT <= OWIN; //debug <= 3;
				end
			else if(m<=5 && OFill[8*(m+3-1)+n -1]==1 && OFill[8*(m+2-1)+n -1]==1 && OFill[8*(m+1-1)+n -1]==1) begin // 1 _ _ _
				C4_OUT <= OWIN; //debug <= 4;
				end
			
			// wins vertically
			else if(n>=4 && OFill[8*(m-1)+n-1 -1]==1 && OFill[8*(m-1)+n-2 -1]==1 && OFill[8*(m-1)+n-3 -1]==1) begin 
				C4_OUT <= OWIN; //debug <= 1;
				end
			else if(n>=3 && n<=7 && OFill[8*(m-1)+n+1 -1]==1 && OFill[8*(m-1)+n-1 -1]==1 && OFill[8*(m-1)+n-2 -1]==1) begin 
				C4_OUT <= OWIN; //debug <= 2;
				end
			else if(n>=2 && n<=6 && OFill[8*(m-1)+n+2] -1==1 && OFill[8*(m-1)+n+1 -1]==1 && OFill[8*(m-1)+n-1 -1]==1) begin 
				C4_OUT <= OWIN; //debug <= 3;
				end
			else if(n<=5 && OFill[8*(m-1)+n+3 -1]==1 && OFill[8*(m-1)+n+2 -1]==1 && OFill[8*(m-1)+n+1 -1]==1) begin 
				C4_OUT <= OWIN; //debug <= 4;
				end

			// wins postive diagonally
			else if(m>= 4 && n>=4 && OFill[8*(m-1-1)+n-1 -1]==1 && OFill[8*(m-2-1)+n-2 -1]==1 && OFill[8*(m-3-1)+n-3 -1]==1) begin 
				C4_OUT <= OWIN;
				end
			else if(m>=3 && m<=7 && n>=3 && n<=7 && OFill[8*(m-1-1)+n-1 -1]==1 && OFill[8*(m-2-1)+n-2 -1]==1 && OFill[8*(m+1-1)+n+1 -1]==1) begin 
				C4_OUT <= OWIN;
				end
			else if(m>=2 && m<=6 && n>=2 && n<=6 && OFill[8*(m-1-1)+n-1 -1]==1 && OFill[8*(m+1-1)+n+1 -1]==1 && OFill[8*(m+2-1)+n+2 -1]==1) begin 
				C4_OUT <= OWIN;
				end
			else if(m<=5 && n<=5 && OFill[8*(m+1-1)+n+1 -1]==1 && OFill[8*(m+2-1)+n+2 -1]==1 && OFill[8*(m+3-1)+n+3 -1]==1) begin 
				C4_OUT <= OWIN;
				end	

			// wins negative diagonally
			else if(m<=5 && n>=4 && OFill[8*(m+1-1)+n-1 -1]==1 && OFill[8*(m+2-1)+n-2 -1]==1 && OFill[8*(m+3-1)+n-3 -1]==1) begin 
				C4_OUT <= OWIN;
				end
			else if(m>=2 && m<=6 && n>=3 && n<=7 && OFill[8*(m+1-1)+n-1 -1]==1 && OFill[8*(m+2-1)+n-2 -1]==1 && OFill[8*(m-1-1)+n+1 -1]==1) begin 
				C4_OUT <= OWIN;
				end
			else if(m>=3 && m<=7 && n>=2 && n<=6 && OFill[8*(m+1-1)+n-1 -1]==1 && OFill[8*(m-1-1)+n+1 -1]==1 && OFill[8*(m-2-1)+n+2 -1]==1) begin 
				C4_OUT <= OWIN;
				end
			else if(m>=4 && n<=5 && OFill[8*(m-1-1)+n+1 -1]==1 && OFill[8*(m-2-1)+n+2 -1]==1 && OFill[8*(m-3-1)+n+3 -1]==1) begin 
				C4_OUT <= OWIN;
				end	

			else begin // O doen't win
				if(Col_Fill[0]==8 && Col_Fill[1]==8 && Col_Fill[2]==8 && Col_Fill[3]==8 && Col_Fill[4]==8 && Col_Fill[5]==8 && Col_Fill[6]==8 && Col_Fill[7]==8) begin // All positions are Full
					C4_OUT <= TIE;
					end	
				else begin
					C4_OUT <= NOTEND;
					end
				end
			end
	end
endmodule

