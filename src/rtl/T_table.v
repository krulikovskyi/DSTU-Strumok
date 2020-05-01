//======================================================================
//
// T_table.v
// -------
// Top level of T transformation.
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

module T_table(
                input  wire [63 : 0] r1,
                output wire [63 : 0] table_T
               );
wire [63:0] t0,t1,t2,t3,t4,t5,t6,t7;

t_0 table0(.sboxw(r1[07:00]), .new_sboxw(t0));
t_1 table1(.sboxw(r1[15:08]), .new_sboxw(t1));
t_2 table2(.sboxw(r1[23:16]), .new_sboxw(t2));
t_3 table3(.sboxw(r1[31:24]), .new_sboxw(t3));
t_4 table4(.sboxw(r1[39:32]), .new_sboxw(t4));
t_5 table5(.sboxw(r1[47:40]), .new_sboxw(t5));
t_6 table6(.sboxw(r1[55:48]), .new_sboxw(t6));
t_7 table7(.sboxw(r1[63:56]), .new_sboxw(t7));

assign table_T=t0^t1^t2^t3^t4^t5^t6^t7;
endmodule //T_table 