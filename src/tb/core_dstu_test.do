#======================================================================
#
# core_dstu_test.do
# -------
# Tcl script for testbench of DSTU 8845:2019 "Strumok" core.
#
#
# Author: Oleh Krulikovskyi
# Copyright (c) 2020, Chernivtsi National University
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or
# without modification, are permitted provided that the following
# conditions are met:
#
# 1. Redistributions of source code must retain the above copyright
#    notice, this list of conditions and the following disclaimer.
#
# 2. Redistributions in binary form must reproduce the above copyright
#    notice, this list of conditions and the following disclaimer in
#    the documentation and/or other materials provided with the
#    distribution.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
# "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
# LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
# FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
# COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
# INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
# BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
# LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
# CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
# STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
# ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
# ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#
#======================================================================


transcript on
vlib work
vlog -v +incdir+./ ./t_0.v
vlog -v +incdir+./ ./t_1.v
vlog -v +incdir+./ ./t_2.v
vlog -v +incdir+./ ./t_3.v
vlog -v +incdir+./ ./t_4.v
vlog -v +incdir+./ ./t_5.v
vlog -v +incdir+./ ./t_6.v
vlog -v +incdir+./ ./t_7.v
vlog -v +incdir+./ ./T_table.v
vlog -v +incdir+./ ./alpha_mul.v
vlog -v +incdir+./ ./alpha_mul_inv.v
vlog -v +incdir+./ ./strumok_core.v
vlog -v +incdir+./ ./strumok_core_test.v

vsim -t 1ps -voptargs="+acc" strumok_core_test

add wave /strumok_core_test/*

	
add wave /strumok_core_test/uut/strumok_ctrl_reg
add wave /strumok_core_test/uut/init_state
add wave /strumok_core_test/uut/update_state
add wave /strumok_core_test/uut/ready_next_init
add wave /strumok_core_test/uut/next_count
add wave /strumok_core_test/uut/r1_reg
add wave /strumok_core_test/uut/r2_reg
add wave /strumok_core_test/uut/r1_new
add wave /strumok_core_test/uut/r2_new
add wave /strumok_core_test/uut/tmp_a
add wave /strumok_core_test/uut/a_new
add wave /strumok_core_test/uut/a_reg
add wave /strumok_core_test/uut/a_we
add wave /strumok_core_test/uut/r_we


add wave /strumok_core_test/uut/r1_r15

add wave /strumok_core_test/uut/r_15

add wave /strumok_core_test/uut/r_13
add wave /strumok_core_test/uut/r2_r13

add wave /strumok_core_test/uut/tmp2
add wave /strumok_core_test/uut/r_0
add wave /strumok_core_test/uut/r0_alpha
add wave /strumok_core_test/uut/r_11
add wave /strumok_core_test/uut/r11_alpha_inv
add wave /strumok_core_test/uut/r_0
add wave /strumok_core_test/uut/tmp0
run -all
wave zoom full