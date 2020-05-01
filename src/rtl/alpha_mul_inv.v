//======================================================================
//
// alpha_mul_inv.v
// -------
// Top level for alpha inverse multiplication.
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

module alpha_mul_inv(

                input wire [63 : 0]  sboxw,
                output wire [63 : 0] alpha_mult_inv
               );

  //----------------------------------------------------------------
  // The sbox array.
  //----------------------------------------------------------------
  wire [63 : 0] sbox [0 : 255];
  wire [7:0] s;
  wire [63:0] out_alpha_mul_inv, left_shift_in;
 
 
  assign s = sboxw[7:0]&8'hff;
  assign out_alpha_mul_inv = sbox[s];
  assign left_shift_in = {8'b0,sboxw[63:08]};
  assign alpha_mult_inv = out_alpha_mul_inv^left_shift_in;


  //----------------------------------------------------------------
  // Creating the sbox array contents.
  //----------------------------------------------------------------
  
  assign sbox[8'h00] = 64'h0000000000000000;
  assign sbox[8'h01] = 64'h47FCC6018A990000;
  assign sbox[8'h02] = 64'h8EE59102092F0000;
  assign sbox[8'h03] = 64'hC919570383B60000;
  assign sbox[8'h04] = 64'h01D73F04125E0000;
  assign sbox[8'h05] = 64'h462BF90598C70000;
  assign sbox[8'h06] = 64'h8F32AE061B710000;
  assign sbox[8'h07] = 64'hC8CE680791E80000;
  assign sbox[8'h08] = 64'h02B37E0824BC0000;
  assign sbox[8'h09] = 64'h454FB809AE250000;
  assign sbox[8'h0a] = 64'h8C56EF0A2D930000;
  assign sbox[8'h0b] = 64'hCBAA290BA70A0000;
  assign sbox[8'h0c] = 64'h0364410C36E20000;
  assign sbox[8'h0d] = 64'h4498870DBC7B0000;
  assign sbox[8'h0e] = 64'h8D81D00E3FCD0000;
  assign sbox[8'h0f] = 64'hCA7D160FB5540000;
  
  assign sbox[8'h10] = 64'h047BFC1048650000;
  assign sbox[8'h11] = 64'h43873A11C2FC0000;
  assign sbox[8'h12] = 64'h8A9E6D12414A0000;
  assign sbox[8'h13] = 64'hCD62AB13CBD30000;
  assign sbox[8'h14] = 64'h05ACC3145A3B0000;
  assign sbox[8'h15] = 64'h42500515D0A20000;
  assign sbox[8'h16] = 64'h8B49521653140000;
  assign sbox[8'h17] = 64'hCCB59417D98D0000;
  assign sbox[8'h18] = 64'h06C882186CD90000;
  assign sbox[8'h19] = 64'h41344419E6400000;
  assign sbox[8'h1a] = 64'h882D131A65F60000;
  assign sbox[8'h1b] = 64'hCFD1D51BEF6F0000;
  assign sbox[8'h1c] = 64'h071FBD1C7E870000;
  assign sbox[8'h1d] = 64'h40E37B1DF41E0000;
  assign sbox[8'h1e] = 64'h89FA2C1E77A80000;
  assign sbox[8'h1f] = 64'hCE06EA1FFD310000;
  
  assign sbox[8'h20] = 64'h08F6E52090CA0000;
  assign sbox[8'h21] = 64'h4F0A23211A530000;
  assign sbox[8'h22] = 64'h8613742299E50000;
  assign sbox[8'h23] = 64'hC1EFB223137C0000;
  assign sbox[8'h24] = 64'h0921DA2482940000;
  assign sbox[8'h25] = 64'h4EDD1C25080D0000;
  assign sbox[8'h26] = 64'h87C44B268BBB0000;
  assign sbox[8'h27] = 64'hC0388D2701220000;
  assign sbox[8'h28] = 64'h0A459B28B4760000;
  assign sbox[8'h29] = 64'h4DB95D293EEF0000;
  assign sbox[8'h2a] = 64'h84A00A2ABD590000;
  assign sbox[8'h2b] = 64'hC35CCC2B37C00000;
  assign sbox[8'h2c] = 64'h0B92A42CA6280000;
  assign sbox[8'h2d] = 64'h4C6E622D2CB10000;
  assign sbox[8'h2e] = 64'h8577352EAF070000;
  assign sbox[8'h2f] = 64'hC28BF32F259E0000;
  
  assign sbox[8'h30] = 64'h0C8D1930D8AF0000;
  assign sbox[8'h31] = 64'h4B71DF3152360000;
  assign sbox[8'h32] = 64'h82688832D1800000;
  assign sbox[8'h33] = 64'hC5944E335B190000;
  assign sbox[8'h34] = 64'h0D5A2634CAF10000;
  assign sbox[8'h35] = 64'h4AA6E03540680000;
  assign sbox[8'h36] = 64'h83BFB736C3DE0000;
  assign sbox[8'h37] = 64'hC443713749470000;
  assign sbox[8'h38] = 64'h0E3E6738FC130000;
  assign sbox[8'h39] = 64'h49C2A139768A0000;
  assign sbox[8'h3a] = 64'h80DBF63AF53C0000;
  assign sbox[8'h3b] = 64'hC727303B7FA50000;
  assign sbox[8'h3c] = 64'h0FE9583CEE4D0000;
  assign sbox[8'h3d] = 64'h48159E3D64D40000;
  assign sbox[8'h3e] = 64'h810CC93EE7620000;
  assign sbox[8'h3f] = 64'hC6F00F3F6DFB0000;
  
  assign sbox[8'h40] = 64'h10F1D7403D890000;
  assign sbox[8'h41] = 64'h570D1141B7100000;
  assign sbox[8'h42] = 64'h9E14464234A60000;
  assign sbox[8'h43] = 64'hD9E88043BE3F0000;
  assign sbox[8'h44] = 64'h1126E8442FD70000;
  assign sbox[8'h45] = 64'h56DA2E45A54E0000;
  assign sbox[8'h46] = 64'h9FC3794626F80000;
  assign sbox[8'h47] = 64'hD83FBF47AC610000;
  assign sbox[8'h48] = 64'h1242A94819350000;
  assign sbox[8'h49] = 64'h55BE6F4993AC0000;
  assign sbox[8'h4a] = 64'h9CA7384A101A0000;
  assign sbox[8'h4b] = 64'hDB5BFE4B9A830000;
  assign sbox[8'h4c] = 64'h1395964C0B6B0000;
  assign sbox[8'h4d] = 64'h5469504D81F20000;
  assign sbox[8'h4e] = 64'h9D70074E02440000;
  assign sbox[8'h4f] = 64'hDA8CC14F88DD0000;
  
  assign sbox[8'h50] = 64'h148A2B5075EC0000;
  assign sbox[8'h51] = 64'h5376ED51FF750000;
  assign sbox[8'h52] = 64'h9A6FBA527CC30000;
  assign sbox[8'h53] = 64'hDD937C53F65A0000;
  assign sbox[8'h54] = 64'h155D145467B20000;
  assign sbox[8'h55] = 64'h52A1D255ED2B0000;
  assign sbox[8'h56] = 64'h9BB885566E9D0000;
  assign sbox[8'h57] = 64'hDC444357E4040000;
  assign sbox[8'h58] = 64'h1639555851500000;
  assign sbox[8'h59] = 64'h51C59359DBC90000;
  assign sbox[8'h5a] = 64'h98DCC45A587F0000;
  assign sbox[8'h5b] = 64'hDF20025BD2E60000;
  assign sbox[8'h5c] = 64'h17EE6A5C430E0000;
  assign sbox[8'h5d] = 64'h5012AC5DC9970000;
  assign sbox[8'h5e] = 64'h990BFB5E4A210000;
  assign sbox[8'h5f] = 64'hDEF73D5FC0B80000;
  
  assign sbox[8'h60] = 64'h18073260AD430000;
  assign sbox[8'h61] = 64'h5FFBF46127DA0000;
  assign sbox[8'h62] = 64'h96E2A362A46C0000;
  assign sbox[8'h63] = 64'hD11E65632EF50000;
  assign sbox[8'h64] = 64'h19D00D64BF1D0000;
  assign sbox[8'h65] = 64'h5E2CCB6535840000;
  assign sbox[8'h66] = 64'h97359C66B6320000;
  assign sbox[8'h67] = 64'hD0C95A673CAB0000;
  assign sbox[8'h68] = 64'h1AB44C6889FF0000;
  assign sbox[8'h69] = 64'h5D488A6903660000;
  assign sbox[8'h6a] = 64'h9451DD6A80D00000;
  assign sbox[8'h6b] = 64'hD3AD1B6B0A490000;
  assign sbox[8'h6c] = 64'h1B63736C9BA10000;
  assign sbox[8'h6d] = 64'h5C9FB56D11380000;
  assign sbox[8'h6e] = 64'h9586E26E928E0000;
  assign sbox[8'h6f] = 64'hD27A246F18170000;
  
  assign sbox[8'h70] = 64'h1C7CCE70E5260000;
  assign sbox[8'h71] = 64'h5B8008716FBF0000;
  assign sbox[8'h72] = 64'h92995F72EC090000;
  assign sbox[8'h73] = 64'hD565997366900000;
  assign sbox[8'h74] = 64'h1DABF174F7780000;
  assign sbox[8'h75] = 64'h5A5737757DE10000;
  assign sbox[8'h76] = 64'h934E6076FE570000;
  assign sbox[8'h77] = 64'hD4B2A67774CE0000;
  assign sbox[8'h78] = 64'h1ECFB078C19A0000;
  assign sbox[8'h79] = 64'h593376794B030000;
  assign sbox[8'h7a] = 64'h902A217AC8B50000;
  assign sbox[8'h7b] = 64'hD7D6E77B422C0000;
  assign sbox[8'h7c] = 64'h1F188F7CD3C40000;
  assign sbox[8'h7d] = 64'h58E4497D595D0000;
  assign sbox[8'h7e] = 64'h91FD1E7EDAEB0000;
  assign sbox[8'h7f] = 64'hD601D87F50720000;
  
  assign sbox[8'h80] = 64'h20FFB3807A0F0000;
  assign sbox[8'h81] = 64'h67037581F0960000;
  assign sbox[8'h82] = 64'hAE1A228273200000;
  assign sbox[8'h83] = 64'hE9E6E483F9B90000;
  assign sbox[8'h84] = 64'h21288C8468510000;
  assign sbox[8'h85] = 64'h66D44A85E2C80000;
  assign sbox[8'h86] = 64'hAFCD1D86617E0000;
  assign sbox[8'h87] = 64'hE831DB87EBE70000;
  assign sbox[8'h88] = 64'h224CCD885EB30000;
  assign sbox[8'h89] = 64'h65B00B89D42A0000;
  assign sbox[8'h8a] = 64'hACA95C8A579C0000;
  assign sbox[8'h8b] = 64'hEB559A8BDD050000;
  assign sbox[8'h8c] = 64'h239BF28C4CED0000;
  assign sbox[8'h8d] = 64'h6467348DC6740000;
  assign sbox[8'h8e] = 64'hAD7E638E45C20000;
  assign sbox[8'h8f] = 64'hEA82A58FCF5B0000;
  
  assign sbox[8'h90] = 64'h24844F90326A0000;
  assign sbox[8'h91] = 64'h63788991B8F30000;
  assign sbox[8'h92] = 64'hAA61DE923B450000;
  assign sbox[8'h93] = 64'hED9D1893B1DC0000;
  assign sbox[8'h94] = 64'h2553709420340000;
  assign sbox[8'h95] = 64'h62AFB695AAAD0000;
  assign sbox[8'h96] = 64'hABB6E196291B0000;
  assign sbox[8'h97] = 64'hEC4A2797A3820000;
  assign sbox[8'h98] = 64'h2637319816D60000;
  assign sbox[8'h99] = 64'h61CBF7999C4F0000;
  assign sbox[8'h9a] = 64'hA8D2A09A1FF90000;
  assign sbox[8'h9b] = 64'hEF2E669B95600000;
  assign sbox[8'h9c] = 64'h27E00E9C04880000;
  assign sbox[8'h9d] = 64'h601CC89D8E110000;
  assign sbox[8'h9e] = 64'hA9059F9E0DA70000;
  assign sbox[8'h9f] = 64'hEEF9599F873E0000;
  
  assign sbox[8'ha0] = 64'h280956A0EAC50000;
  assign sbox[8'ha1] = 64'h6FF590A1605C0000;
  assign sbox[8'ha2] = 64'hA6ECC7A2E3EA0000;
  assign sbox[8'ha3] = 64'hE11001A369730000;
  assign sbox[8'ha4] = 64'h29DE69A4F89B0000;
  assign sbox[8'ha5] = 64'h6E22AFA572020000;
  assign sbox[8'ha6] = 64'hA73BF8A6F1B40000;
  assign sbox[8'ha7] = 64'hE0C73EA77B2D0000;
  assign sbox[8'ha8] = 64'h2ABA28A8CE790000;
  assign sbox[8'ha9] = 64'h6D46EEA944E00000;
  assign sbox[8'haa] = 64'hA45FB9AAC7560000;
  assign sbox[8'hab] = 64'hE3A37FAB4DCF0000;
  assign sbox[8'hac] = 64'h2B6D17ACDC270000;
  assign sbox[8'had] = 64'h6C91D1AD56BE0000;
  assign sbox[8'hae] = 64'hA58886AED5080000;
  assign sbox[8'haf] = 64'hE27440AF5F910000;
  
  assign sbox[8'hb0] = 64'h2C72AAB0A2A00000;
  assign sbox[8'hb1] = 64'h6B8E6CB128390000;
  assign sbox[8'hb2] = 64'hA2973BB2AB8F0000;
  assign sbox[8'hb3] = 64'hE56BFDB321160000;
  assign sbox[8'hb4] = 64'h2DA595B4B0FE0000;
  assign sbox[8'hb5] = 64'h6A5953B53A670000;
  assign sbox[8'hb6] = 64'hA34004B6B9D10000;
  assign sbox[8'hb7] = 64'hE4BCC2B733480000;
  assign sbox[8'hb8] = 64'h2EC1D4B8861C0000;
  assign sbox[8'hb9] = 64'h693D12B90C850000;
  assign sbox[8'hba] = 64'hA02445BA8F330000;
  assign sbox[8'hbb] = 64'hE7D883BB05AA0000;
  assign sbox[8'hbc] = 64'h2F16EBBC94420000;
  assign sbox[8'hbd] = 64'h68EA2DBD1EDB0000;
  assign sbox[8'hbe] = 64'hA1F37ABE9D6D0000;
  assign sbox[8'hbf] = 64'hE60FBCBF17F40000;
  
  assign sbox[8'hc0] = 64'h300E64C047860000;
  assign sbox[8'hc1] = 64'h77F2A2C1CD1F0000;
  assign sbox[8'hc2] = 64'hBEEBF5C24EA90000;
  assign sbox[8'hc3] = 64'hF91733C3C4300000;
  assign sbox[8'hc4] = 64'h31D95BC455D80000;
  assign sbox[8'hc5] = 64'h76259DC5DF410000;
  assign sbox[8'hc6] = 64'hBF3CCAC65CF70000;
  assign sbox[8'hc7] = 64'hF8C00CC7D66E0000;
  assign sbox[8'hc8] = 64'h32BD1AC8633A0000;
  assign sbox[8'hc9] = 64'h7541DCC9E9A30000;
  assign sbox[8'hca] = 64'hBC588BCA6A150000;
  assign sbox[8'hcb] = 64'hFBA44DCBE08C0000;
  assign sbox[8'hcc] = 64'h336A25CC71640000;
  assign sbox[8'hcd] = 64'h7496E3CDFBFD0000;
  assign sbox[8'hce] = 64'hBD8FB4CE784B0000;
  assign sbox[8'hcf] = 64'hFA7372CFF2D20000;
  
  assign sbox[8'hd0] = 64'h347598D00FE30000;
  assign sbox[8'hd1] = 64'h73895ED1857A0000;
  assign sbox[8'hd2] = 64'hBA9009D206CC0000;
  assign sbox[8'hd3] = 64'hFD6CCFD38C550000;
  assign sbox[8'hd4] = 64'h35A2A7D41DBD0000;
  assign sbox[8'hd5] = 64'h725E61D597240000;
  assign sbox[8'hd6] = 64'hBB4736D614920000;
  assign sbox[8'hd7] = 64'hFCBBF0D79E0B0000;
  assign sbox[8'hd8] = 64'h36C6E6D82B5F0000;
  assign sbox[8'hd9] = 64'h713A20D9A1C60000;
  assign sbox[8'hda] = 64'hB82377DA22700000;
  assign sbox[8'hdb] = 64'hFFDFB1DBA8E90000;
  assign sbox[8'hdc] = 64'h3711D9DC39010000;
  assign sbox[8'hdd] = 64'h70ED1FDDB3980000;
  assign sbox[8'hde] = 64'hB9F448DE302E0000;
  assign sbox[8'hdf] = 64'hFE088EDFBAB70000;
  
  assign sbox[8'he0] = 64'h38F881E0D74C0000;
  assign sbox[8'he1] = 64'h7F0447E15DD50000;
  assign sbox[8'he2] = 64'hB61D10E2DE630000;
  assign sbox[8'he3] = 64'hF1E1D6E354FA0000;
  assign sbox[8'he4] = 64'h392FBEE4C5120000;
  assign sbox[8'he5] = 64'h7ED378E54F8B0000;
  assign sbox[8'he6] = 64'hB7CA2FE6CC3D0000;
  assign sbox[8'he7] = 64'hF036E9E746A40000;
  assign sbox[8'he8] = 64'h3A4BFFE8F3F00000;
  assign sbox[8'he9] = 64'h7DB739E979690000;
  assign sbox[8'hea] = 64'hB4AE6EEAFADF0000;
  assign sbox[8'heb] = 64'hF352A8EB70460000;
  assign sbox[8'hec] = 64'h3B9CC0ECE1AE0000;
  assign sbox[8'hed] = 64'h7C6006ED6B370000;
  assign sbox[8'hee] = 64'hB57951EEE8810000;
  assign sbox[8'hef] = 64'hF28597EF62180000;
  
  assign sbox[8'hf0] = 64'h3C837DF09F290000;
  assign sbox[8'hf1] = 64'h7B7FBBF115B00000;
  assign sbox[8'hf2] = 64'hB266ECF296060000;
  assign sbox[8'hf3] = 64'hF59A2AF31C9F0000;
  assign sbox[8'hf4] = 64'h3D5442F48D770000;
  assign sbox[8'hf5] = 64'h7AA884F507EE0000;
  assign sbox[8'hf6] = 64'hB3B1D3F684580000;
  assign sbox[8'hf7] = 64'hF44D15F70EC10000;
  assign sbox[8'hf8] = 64'h3E3003F8BB950000;
  assign sbox[8'hf9] = 64'h79CCC5F9310C0000;
  assign sbox[8'hfa] = 64'hB0D592FAB2BA0000;
  assign sbox[8'hfb] = 64'hF72954FB38230000;
  assign sbox[8'hfc] = 64'h3FE73CFCA9CB0000;
  assign sbox[8'hfd] = 64'h781BFAFD23520000;
  assign sbox[8'hfe] = 64'hB102ADFEA0E40000;
  assign sbox[8'hff] = 64'hF6FE6BFF2A7D0000;
  
  

endmodule // mul_inv