//======================================================================
//
// strumok.v
// -------
// Top level DSTU 8845:2019 "Strumok" stream cipher core.
//
//
// Author: Oleh Krulikovskyi
// Copyright (c) 2020, Chernivtsi National University
// All rights reserved.
//
// Redistribution and use in source and binary forms, with or
// without modification, are permitted provided that the following
// conditions are met:
//
// 1. Redistributions of source code must retain the above copyright
//    notice, this list of conditions and the following disclaimer.
//
// 2. Redistributions in binary form must reproduce the above copyright
//    notice, this list of conditions and the following disclaimer in
//    the documentation and/or other materials provided with the
//    distribution.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
// "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
// FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
// COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
// INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
// BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
// LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
// CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
// STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
// ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
// ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//
//======================================================================

module strumok_core(
	input wire            clk,
    input wire            reset_n,

	input wire            init,
	input wire            next,

	input wire [511 : 0]  key,
	input wire [255 : 0]  iv,
	input wire            key_length,

	output wire [63 : 0]  keystream,
	output wire           ready
                 );


  //----------------------------------------------------------------
  // Internal constant and parameter definitions.
  //----------------------------------------------------------------
  
	localparam CTRL_IDLE        = 3'h0;
	localparam CTRL_INIT        = 3'h1;
	localparam CTRL_NEXT        = 3'h2;
	localparam CTRL_FSM_UPDATE  = 3'h3;
	localparam CTRL_LFSR_UPDATE = 3'h4;
	localparam CTRL_OUTPUT      = 3'h5;
	localparam CTRL_DONE        = 3'h6;


  //----------------------------------------------------------------
  // Registers including update variables and write enable.
  //----------------------------------------------------------------
  reg ready_reg; 
  reg ready_new;
  reg ready_we;

  

  reg [63 : 00] a_reg [00 : 15];
  reg [63 : 00] a_new [00 : 15];
  reg a_we;

 
  reg [63 : 00] r1_reg;
  reg [63 : 00] r1_new;
  reg [63 : 00] r2_reg;
  reg [63 : 00] r2_new;
  reg [63 : 00] reg_keystream;
  reg           r_we;

  reg [02 : 00] strumok_ctrl_reg;
  reg [02 : 00] strumok_ctrl_new;
  reg           strumok_ctrl_we;

  reg [63 : 0] tmp0, tmp1, tmp2;
  reg [64 : 0] r1_r15, r2_r13;
  
 
  reg  ready_next_init;
  reg  [63 : 00] tmp_a;
  reg  [06 : 00] next_count;
  //----------------------------------------------------------------
  // Wires.
  //----------------------------------------------------------------
  wire [63 : 0] T_in, T_out, alpha_in, alpha_inv_in, r0_alpha, r11_alpha_inv;
  
  reg  [63 : 0] r_15;
  reg  [63 : 0] r_13;
  reg  [63 : 0] r_11;
  reg  [63 : 0] r_0;
  
  reg init_state;
  reg update_state;
  reg out_update;
 
 
  
 //----------------------------------------------------------------
  //Module instations.
  //----------------------------------------------------------------
	T_table T_sbox(.r1(T_in),
					.table_T(T_out)
	);
	
	alpha_mul alpha_mul_sbox(.sboxw(alpha_in),
					.alpha(r0_alpha)
	);
  
	alpha_mul_inv alpha_mul__inv_sbox(.sboxw(alpha_inv_in),
					.alpha_mult_inv(r11_alpha_inv)
	);				   
 //----------------------------------------------------------------
  //Concurent connectivity for ports etc.
  //----------------------------------------------------------------
  
  assign ready        = ready_reg;
  assign T_in         = r1_reg;
  assign alpha_in     = r_0;
  assign alpha_inv_in = r_11;
  assign keystream    = reg_keystream;

  //----------------------------------------------------------------
  // reg_update
  //----------------------------------------------------------------
  always @ (posedge clk)
    begin: reg_update
		integer i;
		
		if (reset_n)   // reset of  16 registers, r1 and r2 
			begin
				for (i = 0 ; i < 16 ; i = i + 1)
					begin
						a_reg[i] <= 64'h0;
					end

				r1_reg         <= 64'h0;
				r2_reg         <= 64'h0;
				ready_reg      <= 1'b1;
				strumok_ctrl_reg <= CTRL_IDLE;
			end
		else
			begin
				if (a_we) // update 16 reg
					begin
						for (i = 0; i < 16 ; i = i + 1)
							a_reg[i] <= a_new[i];
					end

				if (r_we) //update r1 and r2
					begin
						r1_reg <= r1_new;
						r2_reg <= r2_new;
					end
          
				if (ready_we) //update ready_reg for ready output
					ready_reg <= ready_new;

				if (strumok_ctrl_we)  //update strumok_ctrl_reg for core FSM
					strumok_ctrl_reg <= strumok_ctrl_new;
			end
	end // reg_update


  //----------------------------------------------------------------
  // lfsr_logic
  //----------------------------------------------------------------
always @*
    begin : lfsr_logic
		integer i;
		for (i = 0 ; i < 16 ; i = i + 1)
			begin
				a_new[i] = 64'h0;
			end
		
		r_15 <= a_reg[15];
		r_13 <= a_reg[13];
		r_11 <= a_reg[11];
		r_0  <= a_reg[00];
		a_we      =  1'h0;
		
		
		
 
		if (init_state) //initialization of registers
			begin
				if(key_length) // check key_length (256 or 512 bits)
					begin //256 bit
						a_new[15] = ~key[063 : 000];
						a_new[14] =  key[127 : 064];
						a_new[13] = ~key[191 : 128];
						a_new[12] =  key[255 : 192];
						a_new[11] =  key[063 : 000];
						a_new[10] = ~key[127 : 064];
						a_new[09] =  key[191 : 128];
						a_new[08] =  key[255 : 192];
						a_new[07] = ~key[063 : 000];
						a_new[06] = ~key[127 : 064];
						a_new[05] =  key[191 : 128]^iv[255 : 192];
						a_new[04] =  key[255 : 192];
						a_new[03] =  key[063 : 000]^iv[191 : 128];
						a_new[02] =  key[127 : 064]^iv[127 : 064];
						a_new[01] =  key[191 : 128];
						a_new[00] =  key[255 : 192]^iv[063 : 000];
						a_we=1'h1;				
					end
				else
					begin //512 bit
						a_new[15] =  key[063 : 000];
						a_new[14] = ~key[127 : 064];
						a_new[13] =  key[191 : 128];
						a_new[12] =  key[255 : 192];
						a_new[11] = ~key[511 : 447];
						a_new[10] =  key[319 : 256];
						a_new[09] = ~key[383 : 320];
						a_new[08] =  key[319 : 256]^iv[255 : 192];
						a_new[07] = ~key[063 : 000];
						a_new[06] =  key[127 : 064];
						a_new[05] =  key[191 : 128]^iv[191 : 128];
						a_new[04] =  key[255 : 192];
						a_new[03] =  key[319 : 256]^iv[127 : 064];
						a_new[02] =  key[319 : 256];
						a_new[01] =  key[383 : 320];
						a_new[00] =  key[511 : 447]^iv[063 : 000];
						a_we=1'h1;
					end
			end
		
        else
			begin		
				if (update_state)
					begin
						for (i = 0 ; i < 15 ; i = i + 1)
							begin
								a_new[i] = a_reg[(i + 1)];
							end
						a_new[15] = tmp_a;
						a_we      <= 1'h1;
					end
			end
		
		
		
    end

  //----------------------------------------------------------------
  // fsm_logic
  //----------------------------------------------------------------
  always @*
    begin : fsm_logic
		

		r1_new <= 64'h0;
		r2_new <= 64'h0;
		r_we   <= 1'h0;

		r1_r15 = r1_reg + r_15;
		tmp0   = r1_r15[63:0];
	  
		r2_r13 = r2_reg + r_13;
		tmp1   = r2_r13[63:0];
		
		tmp2   = tmp0^r2_reg; 

	  
		if (update_state)
			begin
				r1_new <= tmp1;
				r2_new <= T_out;
				r_we   <= 1'h1;
			end
	end


  //----------------------------------------------------------------
  // output_logic
  //----------------------------------------------------------------
always @ (posedge clk)
    begin : output_logic
	tmp_a <= 64'h0;
		if (reset_n)
			begin
				next_count <= 6'h0;
			end
		else
			begin
				if (ready_next_init)
					begin
						next_count <= next_count + 6'h1;
					end
			end
		
			
			
	
			
		if(init)
			begin
				reg_keystream=0;
				tmp_a<=  tmp2 ^ r0_alpha ^ r11_alpha_inv ^ r_13;
			end	
		else
			begin
				tmp_a <= r0_alpha ^ r11_alpha_inv ^ r_13;
				
				if (out_update)
					begin
						reg_keystream = tmp2 ^ r_0;
					end
			end
end


  //----------------------------------------------------------------
  // strumok_core_ctrl
  //----------------------------------------------------------------
always @*
	begin: strumok_core_ctrl
		ready_new      = 1'h0;
		ready_we       = 1'h0;
		init_state     <= 1'h0;
		update_state   = 1'h0;
		strumok_ctrl_new = CTRL_IDLE;
		strumok_ctrl_we  = 1'h0;
		ready_next_init  = 1'h0;
		
		
		case(strumok_ctrl_reg)
			CTRL_IDLE:
				begin
					if (init)
						begin
							if (!(next_count==6'h21))
								begin
									ready_new        = 1'h0;
									ready_we         = 1'h1;
									init_state       <= 1'h1;
									strumok_ctrl_new = CTRL_INIT;
									strumok_ctrl_we  = 1'h1;
									ready_next_init  = 1'h1;
								end
						end
					else
						begin
							if (next)
								begin
									ready_new        = 1'h0;
									ready_we         = 1'h1;
									strumok_ctrl_new = CTRL_NEXT;
									strumok_ctrl_we  = 1'h1;
									out_update       = 1'h0;
								end
							else
								begin
									strumok_ctrl_new = CTRL_DONE;
									strumok_ctrl_we  = 1'h1;
								end
						end
				end


			CTRL_INIT:
				begin
					if (!(next_count==6'h21))
						begin
							strumok_ctrl_new = CTRL_FSM_UPDATE;
							strumok_ctrl_we  = 1'h1;
							
							
						end
					else
						begin
							strumok_ctrl_new = CTRL_DONE;
							strumok_ctrl_we  = 1'h1;
						end
				end


			CTRL_NEXT:
				begin
					strumok_ctrl_new = CTRL_FSM_UPDATE;
					strumok_ctrl_we  = 1'h1;
				end


			CTRL_FSM_UPDATE:
				begin
					strumok_ctrl_new = CTRL_LFSR_UPDATE;
					strumok_ctrl_we  = 1'h1;
					update_state	 = 1'h1;
					
					
					
				end


			CTRL_LFSR_UPDATE:
				begin
					if (!(next_count==6'h21))
						begin
							ready_next_init=1'h1;	
							strumok_ctrl_new = CTRL_INIT;
							strumok_ctrl_we  = 1'h1;
							
							
							
						end
					else
						begin
							strumok_ctrl_new = CTRL_DONE;
							strumok_ctrl_we  = 1'h1;
							out_update     = 1'h1;

						end
				end


			CTRL_DONE:
				begin
					
					ready_new      = 1'h1;
					ready_we       = 1'h1;
					strumok_ctrl_new = CTRL_IDLE;
					strumok_ctrl_we  = 1'h1;
				end

	default:
		begin
		end
	endcase // case (strumok_ctrl_reg)
end // strumok_core_ctrl
endmodule // strumok_core

//======================================================================
// EOF strumok_core.v
//======================================================================
