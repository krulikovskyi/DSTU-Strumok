//======================================================================
//
// t_5.v
// -------
// t_5 substitution.
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

module t_5(
                input wire  [7 : 0]  sboxw,
                output wire [63 : 0] new_sboxw
               );

  //----------------------------------------------------------------
  // The sbox array.
  //----------------------------------------------------------------
  wire [63 : 0] sbox [0 : 255];


  assign new_sboxw = sbox[sboxw];

  //----------------------------------------------------------------
  // Creating the sbox array contents.
  //----------------------------------------------------------------
  assign sbox[8'h00] = 64'h501FCECED1CE3E9E;
  assign sbox[8'h01] = 64'h06D6BBBB6DBBB1BD;
  assign sbox[8'h02] = 64'hAB8BEBEB60EB0B40;
  assign sbox[8'h03] = 64'hD9729292E092E44B;
  assign sbox[8'h04] = 64'hAC8FEAEA65EA0346;
  assign sbox[8'h05] = 64'h4B0BCBCBC0CB1680;
  assign sbox[8'h06] = 64'h794C13135F13986A;
  assign sbox[8'h07] = 64'h7D23C1C1E2C146BC;
  assign sbox[8'h08] = 64'hA583E9E96AE91B4C;
  assign sbox[8'h09] = 64'hA6E83A3AD23ACD9C;
  assign sbox[8'h0a] = 64'h187FD6D6A9D6FECE;
  assign sbox[8'h0b] = 64'h39F2B2B240B2F98B;
  assign sbox[8'h0c] = 64'h046FD2D2BDD2DED6;
  assign sbox[8'h0d] = 64'hD77A9090EA90F447;
  assign sbox[8'h0e] = 64'h655C17174B17B872;
  assign sbox[8'h0f] = 64'hD2C7F8F83FF8932A;
  
  assign sbox[8'h10] = 64'hD315424257422A91;
  assign sbox[8'h11] = 64'h6B5415154115A87E;
  assign sbox[8'h12] = 64'hBF45565613568AE9;
  assign sbox[8'h13] = 64'h2BEAB4B45EB4C99F;
  assign sbox[8'h14] = 64'h26896565EC650F43;
  assign sbox[8'h15] = 64'h54701C1C6C1CE048;
  assign sbox[8'h16] = 64'h9F1A888892883417;
  assign sbox[8'h17] = 64'hD411434352432297;
  assign sbox[8'h18] = 64'h6133C5C5F6C566A4;
  assign sbox[8'h19] = 64'h896D5C5C315CDAD5;
  assign sbox[8'h1a] = 64'h82D83636EE36ADB4;
  assign sbox[8'h1b] = 64'h01D2BABA68BAB9BB;
  assign sbox[8'h1c] = 64'hF1F3F5F506F5FB04;
  assign sbox[8'h1d] = 64'hB8415757165782EF;
  assign sbox[8'h1e] = 64'h28816767E6671F4F;
  assign sbox[8'h1f] = 64'h840E8D8D838D1C09;
  
  assign sbox[8'h20] = 64'h97C43131F53195A6;
  assign sbox[8'h21] = 64'hF8FFF6F609F6E30E;
  assign sbox[8'h22] = 64'h218D6464E9640745;
  assign sbox[8'h23] = 64'h957D58582558FACD;
  assign sbox[8'h24] = 64'hFD429E9EDC9E8463;
  assign sbox[8'h25] = 64'hF6F7F4F403F4F302;
  assign sbox[8'h26] = 64'hEE882222AA220DCC;
  assign sbox[8'h27] = 64'h7192AAAA38AA39DB;
  assign sbox[8'h28] = 64'h56C97575BC758F23;
  assign sbox[8'h29] = 64'h2D3C0F0F330F7822;
  assign sbox[8'h2a] = 64'h0E0802020A02100C;
  assign sbox[8'h2b] = 64'h30FEB1B14FB1E181;
  assign sbox[8'h2c] = 64'h275BDFDF84DFB6F8;
  assign sbox[8'h2d] = 64'h1EA96D6DC46D4F73;
  assign sbox[8'h2e] = 64'h44D17373A273BF37;
  assign sbox[8'h2f] = 64'hFE294D4D644D52B3;
  
  assign sbox[8'h30] = 64'h69ED7C7C917CC715;
  assign sbox[8'h31] = 64'hF2982626BE262DD4;
  assign sbox[8'h32] = 64'hCAB82E2E962E6DE4;
  assign sbox[8'h33] = 64'hFFFBF7F70CF7EB08;
  assign sbox[8'h34] = 64'h3820080828084030;
  assign sbox[8'h35] = 64'h8E695D5D345DD2D3;
  assign sbox[8'h36] = 64'hC10D444449441A85;
  assign sbox[8'h37] = 64'hBAF83E3EC63EED84;
  assign sbox[8'h38] = 64'hFA469F9FD99F8C65;
  assign sbox[8'h39] = 64'h6C5014144414A078;
  assign sbox[8'h3a] = 64'h4207C8C8CFC80E8A;
  assign sbox[8'h3b] = 64'h6D82AEAE2CAE19C3;
  assign sbox[8'h3c] = 64'hB14D545419549AE5;
  assign sbox[8'h3d] = 64'h7040101050108060;
  assign sbox[8'h3e] = 64'h3247D8D89FD88EEA;
  assign sbox[8'h3f] = 64'h13CABCBC76BC89AF;
  
  assign sbox[8'h40] = 64'h46681A1A721AD05C;
  assign sbox[8'h41] = 64'h0CB16B6BDA6B7F67;
  assign sbox[8'h42] = 64'h02B96969D0696F6B;
  assign sbox[8'h43] = 64'hE3EBF3F318F3CB10;
  assign sbox[8'h44] = 64'h14CEBDBD73BD81A9;
  assign sbox[8'h45] = 64'h99CC3333FF3385AA;
  assign sbox[8'h46] = 64'h7696ABAB3DAB31DD;
  assign sbox[8'h47] = 64'hDCCFFAFA35FA8326;
  assign sbox[8'h48] = 64'h0D63D1D1B2D1C6DC;
  assign sbox[8'h49] = 64'hE6569B9BCD9BAC7D;
  assign sbox[8'h4a] = 64'h05BD6868D568676D;
  assign sbox[8'h4b] = 64'hF7254E4E6B4E4AB9;
  assign sbox[8'h4c] = 64'h625816164E16B074;
  assign sbox[8'h4d] = 64'hCC6E9595FB95DC59;
  assign sbox[8'h4e] = 64'hD07E9191EF91FC41;
  assign sbox[8'h4f] = 64'hB09FEEEE71EE235E;
  
  assign sbox[8'h50] = 64'hF92D4C4C614C5AB5;
  assign sbox[8'h51] = 64'h34916363F2633F57;
  assign sbox[8'h52] = 64'h8D028E8E8C8E0403;
  assign sbox[8'h53] = 64'h9C715B5B2A5BE2C7;
  assign sbox[8'h54] = 64'h5E17CCCCDBCC2E92;
  assign sbox[8'h55] = 64'hB4F03C3CCC3CFD88;
  assign sbox[8'h56] = 64'h4F6419197D19C856;
  assign sbox[8'h57] = 64'h40BEA1A11FA161E1;
  assign sbox[8'h58] = 64'hA03E8181BF817C21;
  assign sbox[8'h59] = 64'hE2394949704972AB;
  assign sbox[8'h5a] = 64'h7CF17B7B8A7BFF07;
  assign sbox[8'h5b] = 64'h3543D9D99AD986EC;
  assign sbox[8'h5c] = 64'h10A16F6FCE6F5F7F;
  assign sbox[8'h5d] = 64'h85DC3737EB37A5B2;
  assign sbox[8'h5e] = 64'h3D9D6060FD60275D;
  assign sbox[8'h5f] = 64'h4C0FCACAC5CA1E86;
  
  assign sbox[8'h60] = 64'h8FBBE7E75CE76B68;
  assign sbox[8'h61] = 64'hD1AC2B2B872B45FA;
  assign sbox[8'h62] = 64'hE53D484875487AAD;
  assign sbox[8'h63] = 64'hC9D3FDFD2EFDBB34;
  assign sbox[8'h64] = 64'hC5629696F496C453;
  assign sbox[8'h65] = 64'hC60945454C451283;
  assign sbox[8'h66] = 64'hCED7FCFC2BFCB332;
  assign sbox[8'h67] = 64'hDA1941415841329B;
  assign sbox[8'h68] = 64'h7E4812125A12906C;
  assign sbox[8'h69] = 64'h23340D0D390D682E;
  assign sbox[8'h6a] = 64'h72F979798079EF0B;
  assign sbox[8'h6b] = 64'h81B3E5E556E57B64;
  assign sbox[8'h6c] = 64'h981E898997893C11;
  assign sbox[8'h6d] = 64'h830A8C8C868C140F;
  assign sbox[8'h6e] = 64'h93ABE3E348E34B70;
  assign sbox[8'h6f] = 64'hE0802020A0201DC0;
  
  assign sbox[8'h70] = 64'h90C03030F0309DA0;
  assign sbox[8'h71] = 64'h2E57DCDC8BDCAEF2;
  assign sbox[8'h72] = 64'h22E6B7B751B7D195;
  assign sbox[8'h73] = 64'h19AD6C6CC16C4775;
  assign sbox[8'h74] = 64'hEB354A4A7F4A6AA1;
  assign sbox[8'h75] = 64'h2CEEB5B55BB5C199;
  assign sbox[8'h76] = 64'hBDFC3F3FC33FE582;
  assign sbox[8'h77] = 64'hC2669797F197CC55;
  assign sbox[8'h78] = 64'h1677D4D4A3D4EEC2;
  assign sbox[8'h79] = 64'h33956262F7623751;
  assign sbox[8'h7a] = 64'hC3B42D2D992D75EE;
  assign sbox[8'h7b] = 64'h121806061E063014;
  assign sbox[8'h7c] = 64'h5BAAA4A40EA449FF;
  assign sbox[8'h7d] = 64'h5CAEA5A50BA541F9;
  assign sbox[8'h7e] = 64'hAE368383B5836C2D;
  assign sbox[8'h7f] = 64'h80615F5F3E5FC2DF;
  
  assign sbox[8'h80] = 64'hD6A82A2A822A4DFC;
  assign sbox[8'h81] = 64'h3C4FDADA95DA9EE6;
  assign sbox[8'h82] = 64'h4503C9C9CAC9068C;
  assign sbox[8'h83] = 64'h0000000000000000;
  assign sbox[8'h84] = 64'h67E57E7E9B7ED719;
  assign sbox[8'h85] = 64'h49B2A2A210A279EB;
  assign sbox[8'h86] = 64'hB64955551C5592E3;
  assign sbox[8'h87] = 64'h1AC6BFBF79BF91A5;
  assign sbox[8'h88] = 64'h7744111155118866;
  assign sbox[8'h89] = 64'h1173D5D5A6D5E6C4;
  assign sbox[8'h8a] = 64'hF34A9C9CD69C946F;
  assign sbox[8'h8b] = 64'h571BCFCFD4CF3698;
  assign sbox[8'h8c] = 64'h2A380E0E360E7024;
  assign sbox[8'h8d] = 64'h36280A0A220A503C;
  assign sbox[8'h8e] = 64'hB3F43D3DC93DF58E;
  assign sbox[8'h8f] = 64'hAA5951510851B2FB;
  
  assign sbox[8'h90] = 64'h6EE97D7D947DCF13;
  assign sbox[8'h91] = 64'hDE769393E593EC4D;
  assign sbox[8'h92] = 64'h416C1B1B771BD85A;
  assign sbox[8'h93] = 64'hC0DFFEFE21FEA33E;
  assign sbox[8'h94] = 64'h6637C4C4F3C46EA2;
  assign sbox[8'h95] = 64'hC80147474647028F;
  assign sbox[8'h96] = 64'h3F2409092D094836;
  assign sbox[8'h97] = 64'hB5228686A4864433;
  assign sbox[8'h98] = 64'h312C0B0B270B583A;
  assign sbox[8'h99] = 64'h8A068F8F898F0C05;
  assign sbox[8'h9a] = 64'hF44E9D9DD39D9C69;
  assign sbox[8'h9b] = 64'h0BB56A6ADF6A7761;
  assign sbox[8'h9c] = 64'h151C07071B073812;
  assign sbox[8'h9d] = 64'h08DEB9B967B9A1B1;
  assign sbox[8'h9e] = 64'h37FAB0B04AB0E987;
  assign sbox[8'h9f] = 64'hEF5A9898C298B477;
  
  assign sbox[8'ha0] = 64'h486018187818C050;
  assign sbox[8'ha1] = 64'h9EC83232FA328DAC;
  assign sbox[8'ha2] = 64'h4AD97171A871AF3B;
  assign sbox[8'ha3] = 64'hEC314B4B7A4B62A7;
  assign sbox[8'ha4] = 64'hB79BEFEF74EF2B58;
  assign sbox[8'ha5] = 64'hA1EC3B3BD73BC59A;
  assign sbox[8'ha6] = 64'h4DDD7070AD70A73D;
  assign sbox[8'ha7] = 64'h47BAA0A01AA069E7;
  assign sbox[8'ha8] = 64'h86B7E4E453E47362;
  assign sbox[8'ha9] = 64'hDD1D40405D403A9D;
  assign sbox[8'haa] = 64'hC7DBFFFF24FFAB38;
  assign sbox[8'hab] = 64'h732BC3C3E8C356B0;
  assign sbox[8'hac] = 64'h789EA9A937A921D1;
  assign sbox[8'had] = 64'h88BFE6E659E6636E;
  assign sbox[8'hae] = 64'h75FD78788578E70D;
  assign sbox[8'haf] = 64'hD5C3F9F93AF99B2C;
  
  assign sbox[8'hb0] = 64'h96168B8B9D8B2C1D;
  assign sbox[8'hb1] = 64'hCF05464643460A89;
  assign sbox[8'hb2] = 64'hA73A8080BA807427;
  assign sbox[8'hb3] = 64'h5A781E1E661EF044;
  assign sbox[8'hb4] = 64'hA8E03838D838DD90;
  assign sbox[8'hb5] = 64'h9DA3E1E142E15B7C;
  assign sbox[8'hb6] = 64'h0FDAB8B862B8A9B7;
  assign sbox[8'hb7] = 64'h7F9AA8A832A829D7;
  assign sbox[8'hb8] = 64'h9AA7E0E047E0537A;
  assign sbox[8'hb9] = 64'h24300C0C3C0C6028;
  assign sbox[8'hba] = 64'hE98C2323AF2305CA;
  assign sbox[8'hbb] = 64'h5FC57676B3769729;
  assign sbox[8'hbc] = 64'h53741D1D691DE84E;
  assign sbox[8'hbd] = 64'hFB942525B12535DE;
  assign sbox[8'hbe] = 64'hFC902424B4243DD8;
  assign sbox[8'hbf] = 64'h1B1405051105281E;
  
  assign sbox[8'hc0] = 64'hEDE3F1F112F1DB1C;
  assign sbox[8'hc1] = 64'h17A56E6ECB6E5779;
  assign sbox[8'hc2] = 64'hCB6A9494FE94D45F;
  assign sbox[8'hc3] = 64'hD8A0282888285DF0;
  assign sbox[8'hc4] = 64'hE1529A9AC89AA47B;
  assign sbox[8'hc5] = 64'hBB2A8484AE84543F;
  assign sbox[8'hc6] = 64'hA287E8E86FE8134A;
  assign sbox[8'hc7] = 64'h4EB6A3A315A371ED;
  assign sbox[8'hc8] = 64'hF0214F4F6E4F42BF;
  assign sbox[8'hc9] = 64'h58C17777B6779F2F;
  assign sbox[8'hca] = 64'h036BD3D3B8D3D6D0;
  assign sbox[8'hcb] = 64'hBC2E8585AB855C39;
  assign sbox[8'hcc] = 64'h94AFE2E24DE24376;
  assign sbox[8'hcd] = 64'hA35552520752AAF1;
  assign sbox[8'hce] = 64'hE4EFF2F21DF2C316;
  assign sbox[8'hcf] = 64'hA9328282B082642B;
  
  assign sbox[8'hd0] = 64'hAD5D50500D50BAFD;
  assign sbox[8'hd1] = 64'h7BF57A7A8F7AF701;
  assign sbox[8'hd2] = 64'hCDBC2F2F932F65E2;
  assign sbox[8'hd3] = 64'h51CD7474B9748725;
  assign sbox[8'hd4] = 64'hA45153530253A2F7;
  assign sbox[8'hd5] = 64'h3EF6B3B345B3F18D;
  assign sbox[8'hd6] = 64'h3A996161F8612F5B;
  assign sbox[8'hd7] = 64'h6A86AFAF29AF11C5;
  assign sbox[8'hd8] = 64'hAFE43939DD39D596;
  assign sbox[8'hd9] = 64'h8BD43535E135B5BE;
  assign sbox[8'hda] = 64'h205FDEDE81DEBEFE;
  assign sbox[8'hdb] = 64'h5913CDCDDECD2694;
  assign sbox[8'hdc] = 64'h5D7C1F1F631FF842;
  assign sbox[8'hdd] = 64'hE85E9999C799BC71;
  assign sbox[8'hde] = 64'h638AACAC26AC09CF;
  assign sbox[8'hdf] = 64'h648EADAD23AD01C9;
  
  assign sbox[8'he0] = 64'h43D57272A772B731;
  assign sbox[8'he1] = 64'hC4B02C2C9C2C7DE8;
  assign sbox[8'he2] = 64'h2953DDDD8EDDA6F4;
  assign sbox[8'he3] = 64'h0A67D0D0B7D0CEDA;
  assign sbox[8'he4] = 64'hB2268787A1874C35;
  assign sbox[8'he5] = 64'h1DC2BEBE7CBE99A3;
  assign sbox[8'he6] = 64'h87655E5E3B5ECAD9;
  assign sbox[8'he7] = 64'h55A2A6A604A659F3;
  assign sbox[8'he8] = 64'hBE97ECEC7BEC3352;
  assign sbox[8'he9] = 64'h1C10040414042018;
  assign sbox[8'hea] = 64'h683FC6C6F9C67EAE;
  assign sbox[8'heb] = 64'h090C03030F03180A;
  assign sbox[8'hec] = 64'h8CD03434E434BDB8;
  assign sbox[8'hed] = 64'hDBCBFBFB30FB8B20;
  assign sbox[8'hee] = 64'h3B4BDBDB90DB96E0;
  assign sbox[8'hef] = 64'h927959592059F2CB;
  
  assign sbox[8'hf0] = 64'h25E2B6B654B6D993;
  assign sbox[8'hf1] = 64'h742FC2C2EDC25EB6;
  assign sbox[8'hf2] = 64'h0704010105010806;
  assign sbox[8'hf3] = 64'hEAE7F0F017F0D31A;
  assign sbox[8'hf4] = 64'h9B755A5A2F5AEAC1;
  assign sbox[8'hf5] = 64'hB993EDED7EED3B54;
  assign sbox[8'hf6] = 64'h52A6A7A701A751F5;
  assign sbox[8'hf7] = 64'h2F856666E3661749;
  assign sbox[8'hf8] = 64'hE7842121A52115C6;
  assign sbox[8'hf9] = 64'h60E17F7F9E7FDF1F;
  assign sbox[8'hfa] = 64'h91128A8A988A241B;
  assign sbox[8'hfb] = 64'hF59C2727BB2725D2;
  assign sbox[8'hfc] = 64'h6F3BC7C7FCC776A8;
  assign sbox[8'hfd] = 64'h7A27C0C0E7C04EBA;
  assign sbox[8'hfe] = 64'hDFA429298D2955F6;
  assign sbox[8'hff] = 64'h1F7BD7D7ACD7F6C8;
  
  
   

endmodule // t_5