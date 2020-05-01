//======================================================================
//
// strumok_core_test.v
// -------
// Testbench for the DSTU 8845:2019 "Strumok" core.
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


`timescale 1ns/1ps
module strumok_core_test;

reg	clk;
reg	reset_n;
reg	init;
reg	next;
reg [511 : 0]  key;
reg [255 : 0]  iv;
reg            key_length;
wire [63 : 0]  keystream;
wire           ready;
strumok_core uut( 
	.clk(clk), 
	.reset_n(reset_n), 
	.init(init), 
	.next(next), 
	.key(key), 
	.iv(iv),
	.key_length(key_length),
	.keystream(keystream),
	.ready(ready)	
	);

initial begin


clk=1'h0;
reset_n=1'h1;

init=1'h0;
next=1'h0;
key=512'h00000000000000000000000000000000000000000000000000000000000000008000000000000000000000000000000000000000000000000000000000000000;
iv=256'h0000000000000004000000000000000300000000000000020000000000000001;
key_length=1'h1;



#20 init=1'h1;
reset_n=1'h0;

$display("%h", uut.a_new[0]);
$display("aaaaaaaaafffffaaaa");

#1100
init=1'h0;
next=1'h0;
#10
init=1'h0;
next=1'h1;
#10
init=1'h0;
next=1'h1;
#900 
$stop;
end
always 
  #5  clk =  ! clk;    //создание clk  


endmodule