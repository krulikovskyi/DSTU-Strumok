//======================================================================
//
// alpha_mul.v
// -------
// Top level for alpha multiplication.
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

module alpha_mul(
                input wire [63 : 0]  sboxw,
                output wire [63 : 0] alpha
                );

  //----------------------------------------------------------------
  // The sbox array.
  //----------------------------------------------------------------
  wire [63 : 0] sbox [0 : 255];
  wire [7:0] s;
  wire [63:0] out_alpha_mul, left_shift_in;
 
 
  assign s = sboxw[63:56];
  assign out_alpha_mul = sbox[s];
  assign left_shift_in = {sboxw[55:0],8'b0};
  assign alpha = left_shift_in^out_alpha_mul;
 
 


  //----------------------------------------------------------------
  // Creating the sbox array contents.
  //----------------------------------------------------------------
  
  assign sbox[8'h00] = 64'h0000000000000000;
  assign sbox[8'h01] = 64'hD73F04125E000004;
  assign sbox[8'h02] = 64'hB37E0824BC000008;
  assign sbox[8'h03] = 64'h64410C36E200000C;
  assign sbox[8'h04] = 64'h7BFC104865000010;
  assign sbox[8'h05] = 64'hACC3145A3B000014;
  assign sbox[8'h06] = 64'hC882186CD9000018;
  assign sbox[8'h07] = 64'h1FBD1C7E8700001C;
  assign sbox[8'h08] = 64'hF6E52090CA000020;
  assign sbox[8'h09] = 64'h21DA248294000024;
  assign sbox[8'h0a] = 64'h459B28B476000028;
  assign sbox[8'h0b] = 64'h92A42CA62800002C;
  assign sbox[8'h0c] = 64'h8D1930D8AF000030;
  assign sbox[8'h0d] = 64'h5A2634CAF1000034;
  assign sbox[8'h0e] = 64'h3E6738FC13000038;
  assign sbox[8'h0f] = 64'hE9583CEE4D00003C;
  
  assign sbox[8'h10] = 64'hF1D7403D89000040;
  assign sbox[8'h11] = 64'h26E8442FD7000044;
  assign sbox[8'h12] = 64'h42A9481935000048;
  assign sbox[8'h13] = 64'h95964C0B6B00004C;
  assign sbox[8'h14] = 64'h8A2B5075EC000050;
  assign sbox[8'h15] = 64'h5D145467B2000054;
  assign sbox[8'h16] = 64'h3955585150000058;
  assign sbox[8'h17] = 64'hEE6A5C430E00005C;
  assign sbox[8'h18] = 64'h073260AD43000060;
  assign sbox[8'h19] = 64'hD00D64BF1D000064;
  assign sbox[8'h1a] = 64'hB44C6889FF000068;
  assign sbox[8'h1b] = 64'h63736C9BA100006C;
  assign sbox[8'h1c] = 64'h7CCE70E526000070;
  assign sbox[8'h1d] = 64'hABF174F778000074;
  assign sbox[8'h1e] = 64'hCFB078C19A000078;
  assign sbox[8'h1f] = 64'h188F7CD3C400007C;
  
  assign sbox[8'h20] = 64'hFFB3807A0F000080;
  assign sbox[8'h21] = 64'h288C846851000084;
  assign sbox[8'h22] = 64'h4CCD885EB3000088;
  assign sbox[8'h23] = 64'h9BF28C4CED00008C;
  assign sbox[8'h24] = 64'h844F90326A000090;
  assign sbox[8'h25] = 64'h5370942034000094;
  assign sbox[8'h26] = 64'h37319816D6000098;
  assign sbox[8'h27] = 64'hE00E9C048800009C;
  assign sbox[8'h28] = 64'h0956A0EAC50000A0;
  assign sbox[8'h29] = 64'hDE69A4F89B0000A4;
  assign sbox[8'h2a] = 64'hBA28A8CE790000A8;
  assign sbox[8'h2b] = 64'h6D17ACDC270000AC;
  assign sbox[8'h2c] = 64'h72AAB0A2A00000B0;
  assign sbox[8'h2d] = 64'hA595B4B0FE0000B4;
  assign sbox[8'h2e] = 64'hC1D4B8861C0000B8;
  assign sbox[8'h2f] = 64'h16EBBC94420000BC;
  
  assign sbox[8'h30] = 64'h0E64C047860000C0;
  assign sbox[8'h31] = 64'hD95BC455D80000C4;
  assign sbox[8'h32] = 64'hBD1AC8633A0000C8;
  assign sbox[8'h33] = 64'h6A25CC71640000CC;
  assign sbox[8'h34] = 64'h7598D00FE30000D0;
  assign sbox[8'h35] = 64'hA2A7D41DBD0000D4;
  assign sbox[8'h36] = 64'hC6E6D82B5F0000D8;
  assign sbox[8'h37] = 64'h11D9DC39010000DC;
  assign sbox[8'h38] = 64'hF881E0D74C0000E0;
  assign sbox[8'h39] = 64'h2FBEE4C5120000E4;
  assign sbox[8'h3a] = 64'h4BFFE8F3F00000E8;
  assign sbox[8'h3b] = 64'h9CC0ECE1AE0000EC;
  assign sbox[8'h3c] = 64'h837DF09F290000F0;
  assign sbox[8'h3d] = 64'h5442F48D770000F4;
  assign sbox[8'h3e] = 64'h3003F8BB950000F8;
  assign sbox[8'h3f] = 64'hE73CFCA9CB0000FC;
  
  assign sbox[8'h40] = 64'hE37B1DF41E00001D;
  assign sbox[8'h41] = 64'h344419E640000019;
  assign sbox[8'h42] = 64'h500515D0A2000015;
  assign sbox[8'h43] = 64'h873A11C2FC000011;
  assign sbox[8'h44] = 64'h98870DBC7B00000D;
  assign sbox[8'h45] = 64'h4FB809AE25000009;
  assign sbox[8'h46] = 64'h2BF90598C7000005;
  assign sbox[8'h47] = 64'hFCC6018A99000001;
  assign sbox[8'h48] = 64'h159E3D64D400003D;
  assign sbox[8'h49] = 64'hC2A139768A000039;
  assign sbox[8'h4a] = 64'hA6E0354068000035;
  assign sbox[8'h4b] = 64'h71DF315236000031;
  assign sbox[8'h4c] = 64'h6E622D2CB100002D;
  assign sbox[8'h4d] = 64'hB95D293EEF000029;
  assign sbox[8'h4e] = 64'hDD1C25080D000025;
  assign sbox[8'h4f] = 64'h0A23211A53000021;
  
  assign sbox[8'h50] = 64'h12AC5DC99700005D;
  assign sbox[8'h51] = 64'hC59359DBC9000059;
  assign sbox[8'h52] = 64'hA1D255ED2B000055;
  assign sbox[8'h53] = 64'h76ED51FF75000051;
  assign sbox[8'h54] = 64'h69504D81F200004D;
  assign sbox[8'h55] = 64'hBE6F4993AC000049;
  assign sbox[8'h56] = 64'hDA2E45A54E000045;
  assign sbox[8'h57] = 64'h0D1141B710000041;
  assign sbox[8'h58] = 64'hE4497D595D00007D;
  assign sbox[8'h59] = 64'h3376794B03000079;
  assign sbox[8'h5a] = 64'h5737757DE1000075;
  assign sbox[8'h5b] = 64'h8008716FBF000071;
  assign sbox[8'h5c] = 64'h9FB56D113800006D;
  assign sbox[8'h5d] = 64'h488A690366000069;
  assign sbox[8'h5e] = 64'h2CCB653584000065;
  assign sbox[8'h5f] = 64'hFBF46127DA000061;
  
  assign sbox[8'h60] = 64'h1CC89D8E1100009D;
  assign sbox[8'h61] = 64'hCBF7999C4F000099;
  assign sbox[8'h62] = 64'hAFB695AAAD000095;
  assign sbox[8'h63] = 64'h788991B8F3000091;
  assign sbox[8'h64] = 64'h67348DC67400008D;
  assign sbox[8'h65] = 64'hB00B89D42A000089;
  assign sbox[8'h66] = 64'hD44A85E2C8000085;
  assign sbox[8'h67] = 64'h037581F096000081;
  assign sbox[8'h68] = 64'hEA2DBD1EDB0000BD;
  assign sbox[8'h69] = 64'h3D12B90C850000B9;
  assign sbox[8'h6a] = 64'h5953B53A670000B5;
  assign sbox[8'h6b] = 64'h8E6CB128390000B1;
  assign sbox[8'h6c] = 64'h91D1AD56BE0000AD;
  assign sbox[8'h6d] = 64'h46EEA944E00000A9;
  assign sbox[8'h6e] = 64'h22AFA572020000A5;
  assign sbox[8'h6f] = 64'hF590A1605C0000A1;
  
  assign sbox[8'h70] = 64'hED1FDDB3980000DD;
  assign sbox[8'h71] = 64'h3A20D9A1C60000D9;
  assign sbox[8'h72] = 64'h5E61D597240000D5;
  assign sbox[8'h73] = 64'h895ED1857A0000D1;
  assign sbox[8'h74] = 64'h96E3CDFBFD0000CD;
  assign sbox[8'h75] = 64'h41DCC9E9A30000C9;
  assign sbox[8'h76] = 64'h259DC5DF410000C5;
  assign sbox[8'h77] = 64'hF2A2C1CD1F0000C1;
  assign sbox[8'h78] = 64'h1BFAFD23520000FD;
  assign sbox[8'h79] = 64'hCCC5F9310C0000F9;
  assign sbox[8'h7a] = 64'hA884F507EE0000F5;
  assign sbox[8'h7b] = 64'h7FBBF115B00000F1;
  assign sbox[8'h7c] = 64'h6006ED6B370000ED;
  assign sbox[8'h7d] = 64'hB739E979690000E9;
  assign sbox[8'h7e] = 64'hD378E54F8B0000E5;
  assign sbox[8'h7f] = 64'h0447E15DD50000E1;
  
  assign sbox[8'h80] = 64'hDBF63AF53C00003A;
  assign sbox[8'h81] = 64'h0CC93EE76200003E;
  assign sbox[8'h82] = 64'h688832D180000032;
  assign sbox[8'h83] = 64'hBFB736C3DE000036;
  assign sbox[8'h84] = 64'hA00A2ABD5900002A;
  assign sbox[8'h85] = 64'h77352EAF0700002E;
  assign sbox[8'h86] = 64'h13742299E5000022;
  assign sbox[8'h87] = 64'hC44B268BBB000026;
  assign sbox[8'h88] = 64'h2D131A65F600001A;
  assign sbox[8'h89] = 64'hFA2C1E77A800001E;
  assign sbox[8'h8a] = 64'h9E6D12414A000012;
  assign sbox[8'h8b] = 64'h4952165314000016;
  assign sbox[8'h8c] = 64'h56EF0A2D9300000A;
  assign sbox[8'h8d] = 64'h81D00E3FCD00000E;
  assign sbox[8'h8e] = 64'hE59102092F000002;
  assign sbox[8'h8f] = 64'h32AE061B71000006;
  
  assign sbox[8'h90] = 64'h2A217AC8B500007A;
  assign sbox[8'h91] = 64'hFD1E7EDAEB00007E;
  assign sbox[8'h92] = 64'h995F72EC09000072;
  assign sbox[8'h93] = 64'h4E6076FE57000076;
  assign sbox[8'h94] = 64'h51DD6A80D000006A;
  assign sbox[8'h95] = 64'h86E26E928E00006E;
  assign sbox[8'h96] = 64'hE2A362A46C000062;
  assign sbox[8'h97] = 64'h359C66B632000066;
  assign sbox[8'h98] = 64'hDCC45A587F00005A;
  assign sbox[8'h99] = 64'h0BFB5E4A2100005E;
  assign sbox[8'h9a] = 64'h6FBA527CC3000052;
  assign sbox[8'h9b] = 64'hB885566E9D000056;
  assign sbox[8'h9c] = 64'hA7384A101A00004A;
  assign sbox[8'h9d] = 64'h70074E024400004E;
  assign sbox[8'h9e] = 64'h14464234A6000042;
  assign sbox[8'h9f] = 64'hC3794626F8000046;
  
  assign sbox[8'ha0] = 64'h2445BA8F330000BA;
  assign sbox[8'ha1] = 64'hF37ABE9D6D0000BE;
  assign sbox[8'ha2] = 64'h973BB2AB8F0000B2;
  assign sbox[8'ha3] = 64'h4004B6B9D10000B6;
  assign sbox[8'ha4] = 64'h5FB9AAC7560000AA;
  assign sbox[8'ha5] = 64'h8886AED5080000AE;
  assign sbox[8'ha6] = 64'hECC7A2E3EA0000A2;
  assign sbox[8'ha7] = 64'h3BF8A6F1B40000A6;
  assign sbox[8'ha8] = 64'hD2A09A1FF900009A;
  assign sbox[8'ha9] = 64'h059F9E0DA700009E;
  assign sbox[8'haa] = 64'h61DE923B45000092;
  assign sbox[8'hab] = 64'hB6E196291B000096;
  assign sbox[8'hac] = 64'hA95C8A579C00008A;
  assign sbox[8'had] = 64'h7E638E45C200008E;
  assign sbox[8'hae] = 64'h1A22827320000082;
  assign sbox[8'haf] = 64'hCD1D86617E000086;
  
  assign sbox[8'hb0] = 64'hD592FAB2BA0000FA;
  assign sbox[8'hb1] = 64'h02ADFEA0E40000FE;
  assign sbox[8'hb2] = 64'h66ECF296060000F2;
  assign sbox[8'hb3] = 64'hB1D3F684580000F6;
  assign sbox[8'hb4] = 64'hAE6EEAFADF0000EA;
  assign sbox[8'hb5] = 64'h7951EEE8810000EE;
  assign sbox[8'hb6] = 64'h1D10E2DE630000E2;
  assign sbox[8'hb7] = 64'hCA2FE6CC3D0000E6;
  assign sbox[8'hb8] = 64'h2377DA22700000DA;
  assign sbox[8'hb9] = 64'hF448DE302E0000DE;
  assign sbox[8'hba] = 64'h9009D206CC0000D2;
  assign sbox[8'hbb] = 64'h4736D614920000D6;
  assign sbox[8'hbc] = 64'h588BCA6A150000CA;
  assign sbox[8'hbd] = 64'h8FB4CE784B0000CE;
  assign sbox[8'hbe] = 64'hEBF5C24EA90000C2;
  assign sbox[8'hbf] = 64'h3CCAC65CF70000C6;
  
  assign sbox[8'hc0] = 64'h388D270122000027;
  assign sbox[8'hc1] = 64'hEFB223137C000023;
  assign sbox[8'hc2] = 64'h8BF32F259E00002F;
  assign sbox[8'hc3] = 64'h5CCC2B37C000002B;
  assign sbox[8'hc4] = 64'h4371374947000037;
  assign sbox[8'hc5] = 64'h944E335B19000033;
  assign sbox[8'hc6] = 64'hF00F3F6DFB00003F;
  assign sbox[8'hc7] = 64'h27303B7FA500003B;
  assign sbox[8'hc8] = 64'hCE680791E8000007;
  assign sbox[8'hc9] = 64'h19570383B6000003;
  assign sbox[8'hca] = 64'h7D160FB55400000F;
  assign sbox[8'hcb] = 64'hAA290BA70A00000B;
  assign sbox[8'hcc] = 64'hB59417D98D000017;
  assign sbox[8'hcd] = 64'h62AB13CBD3000013;
  assign sbox[8'hce] = 64'h06EA1FFD3100001F;
  assign sbox[8'hcf] = 64'hD1D51BEF6F00001B;
  
  assign sbox[8'hd0] = 64'hC95A673CAB000067;
  assign sbox[8'hd1] = 64'h1E65632EF5000063;
  assign sbox[8'hd2] = 64'h7A246F181700006F;
  assign sbox[8'hd3] = 64'hAD1B6B0A4900006B;
  assign sbox[8'hd4] = 64'hB2A67774CE000077;
  assign sbox[8'hd5] = 64'h6599736690000073;
  assign sbox[8'hd6] = 64'h01D87F507200007F;
  assign sbox[8'hd7] = 64'hD6E77B422C00007B;
  assign sbox[8'hd8] = 64'h3FBF47AC61000047;
  assign sbox[8'hd9] = 64'hE88043BE3F000043;
  assign sbox[8'hda] = 64'h8CC14F88DD00004F;
  assign sbox[8'hdb] = 64'h5BFE4B9A8300004B;
  assign sbox[8'hdc] = 64'h444357E404000057;
  assign sbox[8'hdd] = 64'h937C53F65A000053;
  assign sbox[8'hde] = 64'hF73D5FC0B800005F;
  assign sbox[8'hdf] = 64'h20025BD2E600005B;
  
  assign sbox[8'he0] = 64'hC73EA77B2D0000A7;
  assign sbox[8'he1] = 64'h1001A369730000A3;
  assign sbox[8'he2] = 64'h7440AF5F910000AF;
  assign sbox[8'he3] = 64'hA37FAB4DCF0000AB;
  assign sbox[8'he4] = 64'hBCC2B733480000B7;
  assign sbox[8'he5] = 64'h6BFDB321160000B3;
  assign sbox[8'he6] = 64'h0FBCBF17F40000BF;
  assign sbox[8'he7] = 64'hD883BB05AA0000BB;
  assign sbox[8'he8] = 64'h31DB87EBE7000087;
  assign sbox[8'he9] = 64'hE6E483F9B9000083;
  assign sbox[8'hea] = 64'h82A58FCF5B00008F;
  assign sbox[8'heb] = 64'h559A8BDD0500008B;
  assign sbox[8'hec] = 64'h4A2797A382000097;
  assign sbox[8'hed] = 64'h9D1893B1DC000093;
  assign sbox[8'hee] = 64'hF9599F873E00009F;
  assign sbox[8'hef] = 64'h2E669B956000009B;
  
  assign sbox[8'hf0] = 64'h36E9E746A40000E7;
  assign sbox[8'hf1] = 64'hE1D6E354FA0000E3;
  assign sbox[8'hf2] = 64'h8597EF62180000EF;
  assign sbox[8'hf3] = 64'h52A8EB70460000EB;
  assign sbox[8'hf4] = 64'h4D15F70EC10000F7;
  assign sbox[8'hf5] = 64'h9A2AF31C9F0000F3;
  assign sbox[8'hf6] = 64'hFE6BFF2A7D0000FF;
  assign sbox[8'hf7] = 64'h2954FB38230000FB;
  assign sbox[8'hf8] = 64'hC00CC7D66E0000C7;
  assign sbox[8'hf9] = 64'h1733C3C4300000C3;
  assign sbox[8'hfa] = 64'h7372CFF2D20000CF;
  assign sbox[8'hfb] = 64'hA44DCBE08C0000CB;
  assign sbox[8'hfc] = 64'hBBF0D79E0B0000D7;
  assign sbox[8'hfd] = 64'h6CCFD38C550000D3;
  assign sbox[8'hfe] = 64'h088EDFBAB70000DF;
  assign sbox[8'hff] = 64'hDFB1DBA8E90000DB;
  
  

endmodule // alpha_mul