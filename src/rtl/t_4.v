//======================================================================
//
// t_4.v
// -------
// t_4 substitution.
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

module t_4(
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
  assign sbox[8'h00] = 64'hD77F9AA8A832A829;
  assign sbox[8'h01] = 64'h97D4114343524322;
  assign sbox[8'h02] = 64'hDF80615F5F3E5FC2;
  assign sbox[8'h03] = 64'h14121806061E0630;
  assign sbox[8'h04] = 64'h670CB16B6BDA6B7F;
  assign sbox[8'h05] = 64'h2356C97575BC758F;
  assign sbox[8'h06] = 64'h7519AD6C6CC16C47;
  assign sbox[8'h07] = 64'hCB927959592059F2;
  assign sbox[8'h08] = 64'h3B4AD97171A871AF;
  assign sbox[8'h09] = 64'hF8275BDFDF84DFB6;
  assign sbox[8'h0a] = 64'h35B2268787A1874C;
  assign sbox[8'h0b] = 64'h59CC6E9595FB95DC;
  assign sbox[8'h0c] = 64'h72655C17174B17B8;
  assign sbox[8'h0d] = 64'h1AEAE7F0F017F0D3;
  assign sbox[8'h0e] = 64'hEA3247D8D89FD88E;
  assign sbox[8'h0f] = 64'h363F2409092D0948;
  
  assign sbox[8'h10] = 64'h731EA96D6DC46D4F;
  assign sbox[8'h11] = 64'h10E3EBF3F318F3CB;
  assign sbox[8'h12] = 64'h4E53741D1D691DE8;
  assign sbox[8'h13] = 64'h804B0BCBCBC0CB16;
  assign sbox[8'h14] = 64'h8C4503C9C9CAC906;
  assign sbox[8'h15] = 64'hB3FE294D4D644D52;
  assign sbox[8'h16] = 64'hE8C4B02C2C9C2C7D;
  assign sbox[8'h17] = 64'hC56A86AFAF29AF11;
  assign sbox[8'h18] = 64'h0B72F979798079EF;
  assign sbox[8'h19] = 64'h7A9AA7E0E047E053;
  assign sbox[8'h1a] = 64'h55C2669797F197CC;
  assign sbox[8'h1b] = 64'h34C9D3FDFD2EFDBB;
  assign sbox[8'h1c] = 64'h7F10A16F6FCE6F5F;
  assign sbox[8'h1d] = 64'hA7EC314B4B7A4B62;
  assign sbox[8'h1e] = 64'h83C60945454C4512;
  assign sbox[8'h1f] = 64'h96AFE43939DD39D5;
  
  assign sbox[8'h20] = 64'h84BAF83E3EC63EED;
  assign sbox[8'h21] = 64'hF42953DDDD8EDDA6;
  assign sbox[8'h22] = 64'hED4EB6A3A315A371;
  assign sbox[8'h23] = 64'hBFF0214F4F6E4F42;
  assign sbox[8'h24] = 64'h9F2BEAB4B45EB4C9;
  assign sbox[8'h25] = 64'h9325E2B6B654B6D9;
  assign sbox[8'h26] = 64'h7BE1529A9AC89AA4;
  assign sbox[8'h27] = 64'h242A380E0E360E70;
  assign sbox[8'h28] = 64'h425D7C1F1F631FF8;
  assign sbox[8'h29] = 64'hA51AC6BFBF79BF91;
  assign sbox[8'h2a] = 64'h7E6B5415154115A8;
  assign sbox[8'h2b] = 64'h7C9DA3E1E142E15B;
  assign sbox[8'h2c] = 64'hABE2394949704972;
  assign sbox[8'h2d] = 64'hD6046FD2D2BDD2DE;
  assign sbox[8'h2e] = 64'h4DDE769393E593EC;
  assign sbox[8'h2f] = 64'hAE683FC6C6F9C67E;
  
  assign sbox[8'h30] = 64'h4BD9729292E092E4;
  assign sbox[8'h31] = 64'h3143D57272A772B7;
  assign sbox[8'h32] = 64'h63FD429E9EDC9E84;
  assign sbox[8'h33] = 64'h5B3A996161F8612F;
  assign sbox[8'h34] = 64'hDC0D63D1D1B2D1C6;
  assign sbox[8'h35] = 64'h5734916363F2633F;
  assign sbox[8'h36] = 64'h26DCCFFAFA35FA83;
  assign sbox[8'h37] = 64'h5EB09FEEEE71EE23;
  assign sbox[8'h38] = 64'h02F6F7F4F403F4F3;
  assign sbox[8'h39] = 64'h564F6419197D19C8;
  assign sbox[8'h3a] = 64'hC41173D5D5A6D5E6;
  assign sbox[8'h3b] = 64'hC9648EADAD23AD01;
  assign sbox[8'h3c] = 64'hCD957D58582558FA;
  assign sbox[8'h3d] = 64'hFF5BAAA4A40EA449;
  assign sbox[8'h3e] = 64'hBD06D6BBBB6DBBB1;
  assign sbox[8'h3f] = 64'hE140BEA1A11FA161;
  
  assign sbox[8'h40] = 64'hF22E57DCDC8BDCAE;
  assign sbox[8'h41] = 64'h16E4EFF2F21DF2C3;
  assign sbox[8'h42] = 64'h2DAE368383B5836C;
  assign sbox[8'h43] = 64'hB285DC3737EB37A5;
  assign sbox[8'h44] = 64'h91D315424257422A;
  assign sbox[8'h45] = 64'h6286B7E4E453E473;
  assign sbox[8'h46] = 64'h017BF57A7A8F7AF7;
  assign sbox[8'h47] = 64'hAC9EC83232FA328D;
  assign sbox[8'h48] = 64'h6FF34A9C9CD69C94;
  assign sbox[8'h49] = 64'h925E17CCCCDBCC2E;
  assign sbox[8'h4a] = 64'hDD7696ABAB3DAB31;
  assign sbox[8'h4b] = 64'hA1EB354A4A7F4A6A;
  assign sbox[8'h4c] = 64'h058A068F8F898F0C;
  assign sbox[8'h4d] = 64'h7917A56E6ECB6E57;
  assign sbox[8'h4e] = 64'h181C100404140420;
  assign sbox[8'h4f] = 64'hD2F59C2727BB2725;
  
  assign sbox[8'h50] = 64'hE4CAB82E2E962E6D;
  assign sbox[8'h51] = 64'h688FBBE7E75CE76B;
  assign sbox[8'h52] = 64'h7694AFE2E24DE243;
  assign sbox[8'h53] = 64'hC19B755A5A2F5AEA;
  assign sbox[8'h54] = 64'h53C5629696F496C4;
  assign sbox[8'h55] = 64'h74625816164E16B0;
  assign sbox[8'h56] = 64'hCAE98C2323AF2305;
  assign sbox[8'h57] = 64'hFAD1AC2B2B872B45;
  assign sbox[8'h58] = 64'hB6742FC2C2EDC25E;
  assign sbox[8'h59] = 64'h4326896565EC650F;
  assign sbox[8'h5a] = 64'h492F856666E36617;
  assign sbox[8'h5b] = 64'h222D3C0F0F330F78;
  assign sbox[8'h5c] = 64'hAF13CABCBC76BC89;
  assign sbox[8'h5d] = 64'hD1789EA9A937A921;
  assign sbox[8'h5e] = 64'h8FC8014747464702;
  assign sbox[8'h5f] = 64'h9BDA194141584132;
  
  assign sbox[8'h60] = 64'hB88CD03434E434BD;
  assign sbox[8'h61] = 64'hADE53D484875487A;
  assign sbox[8'h62] = 64'h32CED7FCFC2BFCB3;
  assign sbox[8'h63] = 64'h9522E6B7B751B7D1;
  assign sbox[8'h64] = 64'h610BB56A6ADF6A77;
  assign sbox[8'h65] = 64'h179F1A8888928834;
  assign sbox[8'h66] = 64'hF95CAEA5A50BA541;
  assign sbox[8'h67] = 64'hF7A45153530253A2;
  assign sbox[8'h68] = 64'h33B5228686A48644;
  assign sbox[8'h69] = 64'h2CD5C3F9F93AF99B;
  assign sbox[8'h6a] = 64'hC79C715B5B2A5BE2;
  assign sbox[8'h6b] = 64'hE03B4BDBDB90DB96;
  assign sbox[8'h6c] = 64'h90A8E03838D838DD;
  assign sbox[8'h6d] = 64'h077CF17B7B8A7BFF;
  assign sbox[8'h6e] = 64'hB0732BC3C3E8C356;
  assign sbox[8'h6f] = 64'h445A781E1E661EF0;
  
  assign sbox[8'h70] = 64'hCCEE882222AA220D;
  assign sbox[8'h71] = 64'hAA99CC3333FF3385;
  assign sbox[8'h72] = 64'hD8FC902424B4243D;
  assign sbox[8'h73] = 64'hF0D8A0282888285D;
  assign sbox[8'h74] = 64'hB482D83636EE36AD;
  assign sbox[8'h75] = 64'hA86F3BC7C7FCC776;
  assign sbox[8'h76] = 64'h8B39F2B2B240B2F9;
  assign sbox[8'h77] = 64'h9AA1EC3B3BD73BC5;
  assign sbox[8'h78] = 64'h038D028E8E8C8E04;
  assign sbox[8'h79] = 64'h2F58C17777B6779F;
  assign sbox[8'h7a] = 64'hBB01D2BABA68BAB9;
  assign sbox[8'h7b] = 64'h04F1F3F5F506F5FB;
  assign sbox[8'h7c] = 64'h786C5014144414A0;
  assign sbox[8'h7d] = 64'h65FA469F9FD99F8C;
  assign sbox[8'h7e] = 64'h3038200808280840;
  assign sbox[8'h7f] = 64'hE3B64955551C5592;
  
  assign sbox[8'h80] = 64'h7DE6569B9BCD9BAC;
  assign sbox[8'h81] = 64'hB5F92D4C4C614C5A;
  assign sbox[8'h82] = 64'h3EC0DFFEFE21FEA3;
  assign sbox[8'h83] = 64'h5D3D9D6060FD6027;
  assign sbox[8'h84] = 64'hD5896D5C5C315CDA;
  assign sbox[8'h85] = 64'hE63C4FDADA95DA9E;
  assign sbox[8'h86] = 64'h50486018187818C0;
  assign sbox[8'h87] = 64'h89CF05464643460A;
  assign sbox[8'h88] = 64'h945913CDCDDECD26;
  assign sbox[8'h89] = 64'h136EE97D7D947DCF;
  assign sbox[8'h8a] = 64'hC6E7842121A52115;
  assign sbox[8'h8b] = 64'h8737FAB0B04AB0E9;
  assign sbox[8'h8c] = 64'h82BDFC3F3FC33FE5;
  assign sbox[8'h8d] = 64'h5A416C1B1B771BD8;
  assign sbox[8'h8e] = 64'h11981E898997893C;
  assign sbox[8'h8f] = 64'h38C7DBFFFF24FFAB;
  
  assign sbox[8'h90] = 64'h40AB8BEBEB60EB0B;
  assign sbox[8'h91] = 64'h3FBB2A8484AE8454;
  assign sbox[8'h92] = 64'h6B02B96969D0696F;
  assign sbox[8'h93] = 64'h9CA6E83A3AD23ACD;
  assign sbox[8'h94] = 64'h69F44E9D9DD39D9C;
  assign sbox[8'h95] = 64'hC81F7BD7D7ACD7F6;
  assign sbox[8'h96] = 64'hD0036BD3D3B8D3D6;
  assign sbox[8'h97] = 64'h3D4DDD7070AD70A7;
  assign sbox[8'h98] = 64'h4F28816767E6671F;
  assign sbox[8'h99] = 64'h9DDD1D40405D403A;
  assign sbox[8'h9a] = 64'h992CEEB5B55BB5C1;
  assign sbox[8'h9b] = 64'hFE205FDEDE81DEBE;
  assign sbox[8'h9c] = 64'hD38E695D5D345DD2;
  assign sbox[8'h9d] = 64'hA090C03030F0309D;
  assign sbox[8'h9e] = 64'h41D07E9191EF91FC;
  assign sbox[8'h9f] = 64'h8130FEB1B14FB1E1;
  
  assign sbox[8'ha0] = 64'h0D75FD78788578E7;
  assign sbox[8'ha1] = 64'h6677441111551188;
  assign sbox[8'ha2] = 64'h0607040101050108;
  assign sbox[8'ha3] = 64'h6481B3E5E556E57B;
  assign sbox[8'ha4] = 64'h0000000000000000;
  assign sbox[8'ha5] = 64'h6D05BD6868D56867;
  assign sbox[8'ha6] = 64'h77EF5A9898C298B4;
  assign sbox[8'ha7] = 64'hE747BAA0A01AA069;
  assign sbox[8'ha8] = 64'hA46133C5C5F6C566;
  assign sbox[8'ha9] = 64'h0C0E0802020A0210;
  assign sbox[8'haa] = 64'hF355A2A6A604A659;
  assign sbox[8'hab] = 64'h2551CD7474B97487;
  assign sbox[8'hac] = 64'hEEC3B42D2D992D75;
  assign sbox[8'had] = 64'h3A312C0B0B270B58;
  assign sbox[8'hae] = 64'hEB49B2A2A210A279;
  assign sbox[8'haf] = 64'h295FC57676B37697;
  
  assign sbox[8'hb0] = 64'h8D3EF6B3B345B3F1;
  assign sbox[8'hb1] = 64'hA31DC2BEBE7CBE99;
  assign sbox[8'hb2] = 64'h9E501FCECED1CE3E;
  assign sbox[8'hb3] = 64'hA914CEBDBD73BD81;
  assign sbox[8'hb4] = 64'hC36D82AEAE2CAE19;
  assign sbox[8'hb5] = 64'h4CA583E9E96AE91B;
  assign sbox[8'hb6] = 64'h1B91128A8A988A24;
  assign sbox[8'hb7] = 64'hA697C43131F53195;
  assign sbox[8'hb8] = 64'h4854701C1C6C1CE0;
  assign sbox[8'hb9] = 64'h52BE97ECEC7BEC33;
  assign sbox[8'hba] = 64'h1CEDE3F1F112F1DB;
  assign sbox[8'hbb] = 64'h71E85E9999C799BC;
  assign sbox[8'hbc] = 64'h5FCB6A9494FE94D4;
  assign sbox[8'hbd] = 64'hDB7192AAAA38AA39;
  assign sbox[8'hbe] = 64'h0EF8FFF6F609F6E3;
  assign sbox[8'hbf] = 64'hD4F2982626BE262D;
 
  assign sbox[8'hc0] = 64'hE2CDBC2F2F932F65;
  assign sbox[8'hc1] = 64'h58B79BEFEF74EF2B;
  assign sbox[8'hc2] = 64'h4AA287E8E86FE813;
  assign sbox[8'hc3] = 64'h0F830A8C8C868C14;
  assign sbox[8'hc4] = 64'hBE8BD43535E135B5;
  assign sbox[8'hc5] = 64'h0A090C03030F0318;
  assign sbox[8'hc6] = 64'hC21677D4D4A3D4EE;
  assign sbox[8'hc7] = 64'h1F60E17F7F9E7FDF;
  assign sbox[8'hc8] = 64'h20DBCBFBFB30FB8B;
  assign sbox[8'hc9] = 64'h1E1B140505110528;
  assign sbox[8'hca] = 64'hBC7D23C1C1E2C146;
  assign sbox[8'hcb] = 64'hD987655E5E3B5ECA;
  assign sbox[8'hcc] = 64'h47D77A9090EA90F4;
  assign sbox[8'hcd] = 64'hC0E0802020A0201D;
  assign sbox[8'hce] = 64'h8EB3F43D3DC93DF5;
  assign sbox[8'hcf] = 64'h2BA9328282B08264;
 
  assign sbox[8'hd0] = 64'h08FFFBF7F70CF7EB;
  assign sbox[8'hd1] = 64'h46AC8FEAEA65EA03;
  assign sbox[8'hd2] = 64'h3C36280A0A220A50;
  assign sbox[8'hd3] = 64'h2E23340D0D390D68;
  assign sbox[8'hd4] = 64'h1967E57E7E9B7ED7;
  assign sbox[8'hd5] = 64'h2AD2C7F8F83FF893;
  assign sbox[8'hd6] = 64'hFDAD5D50500D50BA;
  assign sbox[8'hd7] = 64'h5C46681A1A721AD0;
  assign sbox[8'hd8] = 64'hA26637C4C4F3C46E;
  assign sbox[8'hd9] = 64'h12151C07071B0738;
  assign sbox[8'hda] = 64'hEFB8415757165782;
  assign sbox[8'hdb] = 64'hB70FDAB8B862B8A9;
  assign sbox[8'hdc] = 64'h88B4F03C3CCC3CFD;
  assign sbox[8'hdd] = 64'h5133956262F76237;
  assign sbox[8'hde] = 64'h7093ABE3E348E34B;
  assign sbox[8'hdf] = 64'h8A4207C8C8CFC80E;
  
  assign sbox[8'he0] = 64'hCF638AACAC26AC09;
  assign sbox[8'he1] = 64'hF1A35552520752AA;
  assign sbox[8'he2] = 64'h45218D6464E96407;
  assign sbox[8'he3] = 64'h6070401010501080;
  assign sbox[8'he4] = 64'hDA0A67D0D0B7D0CE;
  assign sbox[8'he5] = 64'hEC3543D9D99AD986;
  assign sbox[8'he6] = 64'h6A794C13135F1398;
  assign sbox[8'he7] = 64'h2824300C0C3C0C60;
  assign sbox[8'he8] = 64'h6C7E4812125A1290;
  assign sbox[8'he9] = 64'hF6DFA429298D2955;
  assign sbox[8'hea] = 64'hFBAA5951510851B2;
  assign sbox[8'heb] = 64'hB108DEB9B967B9A1;
  assign sbox[8'hec] = 64'h98571BCFCFD4CF36;
  assign sbox[8'hed] = 64'hCE187FD6D6A9D6FE;
  assign sbox[8'hee] = 64'h3744D17373A273BF;
  assign sbox[8'hef] = 64'h09840E8D8D838D1C;
  
  assign sbox[8'hf0] = 64'h21A03E8181BF817C;
  assign sbox[8'hf1] = 64'hE5B14D545419549A;
  assign sbox[8'hf2] = 64'hBA7A27C0C0E7C04E;
  assign sbox[8'hf3] = 64'h54B993EDED7EED3B;
  assign sbox[8'hf4] = 64'hB9F7254E4E6B4E4A;
  assign sbox[8'hf5] = 64'h85C10D444449441A;
  assign sbox[8'hf6] = 64'hF552A6A7A701A751;
  assign sbox[8'hf7] = 64'hFCD6A82A2A822A4D;
  assign sbox[8'hf8] = 64'h39BC2E8585AB855C;
  assign sbox[8'hf9] = 64'hDEFB942525B12535;
  assign sbox[8'hfa] = 64'h6E88BFE6E659E663;
  assign sbox[8'hfb] = 64'h864C0FCACAC5CA1E;
  assign sbox[8'hfc] = 64'h1569ED7C7C917CC7;
  assign sbox[8'hfd] = 64'h1D96168B8B9D8B2C;
  assign sbox[8'hfe] = 64'hE9BF45565613568A;
  assign sbox[8'hff] = 64'h27A73A8080BA8074;
  endmodule //t_4