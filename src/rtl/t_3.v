//======================================================================
//
// t_3.v
// -------
// t_3 substitution.
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

module t_3(
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
  assign sbox[8'h00] = 64'h676D05BD6868D568;
  assign sbox[8'h01] = 64'h1C09840E8D8D838D;
  assign sbox[8'h02] = 64'h1E864C0FCACAC5CA;
  assign sbox[8'h03] = 64'h52B3FE294D4D644D;
  assign sbox[8'h04] = 64'hBF3744D17373A273;
  assign sbox[8'h05] = 64'h62A7EC314B4B7A4B;
  assign sbox[8'h06] = 64'h4AB9F7254E4E6B4E;
  assign sbox[8'h07] = 64'h4DFCD6A82A2A822A;
  assign sbox[8'h08] = 64'hEEC21677D4D4A3D4;
  assign sbox[8'h09] = 64'hAAF1A35552520752;
  assign sbox[8'h0a] = 64'h2DD4F2982626BE26;
  assign sbox[8'h0b] = 64'hF18D3EF6B3B345B3;
  assign sbox[8'h0c] = 64'h9AE5B14D54541954;
  assign sbox[8'h0d] = 64'hF0445A781E1E661E;
  assign sbox[8'h0e] = 64'hC8564F6419197D19;
  assign sbox[8'h0f] = 64'hF8425D7C1F1F631F;
  
  assign sbox[8'h10] = 64'h0DCCEE882222AA22;
  assign sbox[8'h11] = 64'h180A090C03030F03;
  assign sbox[8'h12] = 64'h0A89CF0546464346;
  assign sbox[8'h13] = 64'hF58EB3F43D3DC93D;
  assign sbox[8'h14] = 64'h75EEC3B42D2D992D;
  assign sbox[8'h15] = 64'h6AA1EB354A4A7F4A;
  assign sbox[8'h16] = 64'hA2F7A45153530253;
  assign sbox[8'h17] = 64'h6C2DAE368383B583;
  assign sbox[8'h18] = 64'h986A794C13135F13;
  assign sbox[8'h19] = 64'h241B91128A8A988A;
  assign sbox[8'h1a] = 64'hD19522E6B7B751B7;
  assign sbox[8'h1b] = 64'hE6C41173D5D5A6D5;
  assign sbox[8'h1c] = 64'h35DEFB942525B125;
  assign sbox[8'h1d] = 64'hEF0B72F979798079;
  assign sbox[8'h1e] = 64'hFB04F1F3F5F506F5;
  assign sbox[8'h1f] = 64'h81A914CEBDBD73BD;
  
  assign sbox[8'h20] = 64'hFACD957D58582558;
  assign sbox[8'h21] = 64'h65E2CDBC2F2F932F;
  assign sbox[8'h22] = 64'h682E23340D0D390D;
  assign sbox[8'h23] = 64'h100C0E0802020A02;
  assign sbox[8'h24] = 64'h3B54B993EDED7EED;
  assign sbox[8'h25] = 64'hB2FBAA5951510851;
  assign sbox[8'h26] = 64'h8463FD429E9EDC9E;
  assign sbox[8'h27] = 64'h8866774411115511;
  assign sbox[8'h28] = 64'hC316E4EFF2F21DF2;
  assign sbox[8'h29] = 64'hED84BAF83E3EC63E;
  assign sbox[8'h2a] = 64'h92E3B64955551C55;
  assign sbox[8'h2b] = 64'hCAD987655E5E3B5E;
  assign sbox[8'h2c] = 64'hC6DC0D63D1D1B2D1;
  assign sbox[8'h2d] = 64'hB074625816164E16;
  assign sbox[8'h2e] = 64'hFD88B4F03C3CCC3C;
  assign sbox[8'h2f] = 64'h17492F856666E366;
  
  assign sbox[8'h30] = 64'hA73D4DDD7070AD70;
  assign sbox[8'h31] = 64'hD2D38E695D5D345D;
  assign sbox[8'h32] = 64'hCB10E3EBF3F318F3;
  assign sbox[8'h33] = 64'h1283C60945454C45;
  assign sbox[8'h34] = 64'h3A9DDD1D40405D40;
  assign sbox[8'h35] = 64'h2E925E17CCCCDBCC;
  assign sbox[8'h36] = 64'h134AA287E8E86FE8;
  assign sbox[8'h37] = 64'hD45FCB6A9494FE94;
  assign sbox[8'h38] = 64'h8AE9BF4556561356;
  assign sbox[8'h39] = 64'h4030382008082808;
  assign sbox[8'h3a] = 64'h3E9E501FCECED1CE;
  assign sbox[8'h3b] = 64'hD05C46681A1A721A;
  assign sbox[8'h3c] = 64'hCD9CA6E83A3AD23A;
  assign sbox[8'h3d] = 64'hDED6046FD2D2BDD2;
  assign sbox[8'h3e] = 64'h5B7C9DA3E1E142E1;
  assign sbox[8'h3f] = 64'hB6F8275BDFDF84DF;
  
  assign sbox[8'h40] = 64'hC1992CEEB5B55BB5;
  assign sbox[8'h41] = 64'hDD90A8E03838D838;
  assign sbox[8'h42] = 64'h577917A56E6ECB6E;
  assign sbox[8'h43] = 64'h70242A380E0E360E;
  assign sbox[8'h44] = 64'h7B6481B3E5E556E5;
  assign sbox[8'h45] = 64'hF302F6F7F4F403F4;
  assign sbox[8'h46] = 64'h9B2CD5C3F9F93AF9;
  assign sbox[8'h47] = 64'h4433B5228686A486;
  assign sbox[8'h48] = 64'h1B4CA583E9E96AE9;
  assign sbox[8'h49] = 64'h42BFF0214F4F6E4F;
  assign sbox[8'h4a] = 64'hFECE187FD6D6A9D6;
  assign sbox[8'h4b] = 64'h5C39BC2E8585AB85;
  assign sbox[8'h4c] = 64'h05CAE98C2323AF23;
  assign sbox[8'h4d] = 64'h3698571BCFCFD4CF;
  assign sbox[8'h4e] = 64'h8DAC9EC83232FA32;
  assign sbox[8'h4f] = 64'hBC71E85E9999C799;
  
  assign sbox[8'h50] = 64'h95A697C43131F531;
  assign sbox[8'h51] = 64'hA0786C5014144414;
  assign sbox[8'h52] = 64'h19C36D82AEAE2CAE;
  assign sbox[8'h53] = 64'h235EB09FEEEE71EE;
  assign sbox[8'h54] = 64'h0E8A4207C8C8CFC8;
  assign sbox[8'h55] = 64'h7AADE53D48487548;
  assign sbox[8'h56] = 64'hD6D0036BD3D3B8D3;
  assign sbox[8'h57] = 64'h9DA090C03030F030;
  assign sbox[8'h58] = 64'h61E140BEA1A11FA1;
  assign sbox[8'h59] = 64'hE44BD9729292E092;
  assign sbox[8'h5a] = 64'h329BDA1941415841;
  assign sbox[8'h5b] = 64'hE18130FEB1B14FB1;
  assign sbox[8'h5c] = 64'hC050486018187818;
  assign sbox[8'h5d] = 64'h6EA26637C4C4F3C4;
  assign sbox[8'h5e] = 64'h7DE8C4B02C2C9C2C;
  assign sbox[8'h5f] = 64'hAF3B4AD97171A871;
  
  assign sbox[8'h60] = 64'hB73143D57272A772;
  assign sbox[8'h61] = 64'h1A85C10D44444944;
  assign sbox[8'h62] = 64'hA87E6B5415154115;
  assign sbox[8'h63] = 64'hBB34C9D3FDFD2EFD;
  assign sbox[8'h64] = 64'hA5B285DC3737EB37;
  assign sbox[8'h65] = 64'h99A31DC2BEBE7CBE;
  assign sbox[8'h66] = 64'hC2DF80615F5F3E5F;
  assign sbox[8'h67] = 64'h39DB7192AAAA38AA;
  assign sbox[8'h68] = 64'hAC7DE6569B9BCD9B;
  assign sbox[8'h69] = 64'h34179F1A88889288;
  assign sbox[8'h6a] = 64'h8EEA3247D8D89FD8;
  assign sbox[8'h6b] = 64'h31DD7696ABAB3DAB;
  assign sbox[8'h6c] = 64'h3C11981E89899789;
  assign sbox[8'h6d] = 64'h946FF34A9C9CD69C;
  assign sbox[8'h6e] = 64'h8326DCCFFAFA35FA;
  assign sbox[8'h6f] = 64'h275D3D9D6060FD60;
  
  assign sbox[8'h70] = 64'h0346AC8FEAEA65EA;
  assign sbox[8'h71] = 64'h89AF13CABCBC76BC;
  assign sbox[8'h72] = 64'h375133956262F762;
  assign sbox[8'h73] = 64'h602824300C0C3C0C;
  assign sbox[8'h74] = 64'h3DD8FC902424B424;
  assign sbox[8'h75] = 64'h59F355A2A6A604A6;
  assign sbox[8'h76] = 64'h29D77F9AA8A832A8;
  assign sbox[8'h77] = 64'h3352BE97ECEC7BEC;
  assign sbox[8'h78] = 64'h1F4F28816767E667;
  assign sbox[8'h79] = 64'h1DC0E0802020A020;
  assign sbox[8'h7a] = 64'h96E03B4BDBDB90DB;
  assign sbox[8'h7b] = 64'hC71569ED7C7C917C;
  assign sbox[8'h7c] = 64'h5DF0D8A028288828;
  assign sbox[8'h7d] = 64'hA6F42953DDDD8EDD;
  assign sbox[8'h7e] = 64'h09CF638AACAC26AC;
  assign sbox[8'h7f] = 64'hE2C79C715B5B2A5B;
  
  assign sbox[8'h80] = 64'hBDB88CD03434E434;
  assign sbox[8'h81] = 64'hD71967E57E7E9B7E;
  assign sbox[8'h82] = 64'h8060704010105010;
  assign sbox[8'h83] = 64'hDB1CEDE3F1F112F1;
  assign sbox[8'h84] = 64'hFF077CF17B7B8A7B;
  assign sbox[8'h85] = 64'h0C058A068F8F898F;
  assign sbox[8'h86] = 64'h3F5734916363F263;
  assign sbox[8'h87] = 64'h69E747BAA0A01AA0;
  assign sbox[8'h88] = 64'h281E1B1405051105;
  assign sbox[8'h89] = 64'hA47BE1529A9AC89A;
  assign sbox[8'h8a] = 64'h2297D41143435243;
  assign sbox[8'h8b] = 64'h9F2F58C17777B677;
  assign sbox[8'h8c] = 64'h15C6E7842121A521;
  assign sbox[8'h8d] = 64'h91A51AC6BFBF79BF;
  assign sbox[8'h8e] = 64'h25D2F59C2727BB27;
  assign sbox[8'h8f] = 64'h48363F2409092D09;
  
  assign sbox[8'h90] = 64'h56B0732BC3C3E8C3;
  assign sbox[8'h91] = 64'h8C65FA469F9FD99F;
  assign sbox[8'h92] = 64'hD99325E2B6B654B6;
  assign sbox[8'h93] = 64'hF6C81F7BD7D7ACD7;
  assign sbox[8'h94] = 64'h55F6DFA429298D29;
  assign sbox[8'h95] = 64'h5EB6742FC2C2EDC2;
  assign sbox[8'h96] = 64'h0B40AB8BEBEB60EB;
  assign sbox[8'h97] = 64'h4EBA7A27C0C0E7C0;
  assign sbox[8'h98] = 64'h49FF5BAAA4A40EA4;
  assign sbox[8'h99] = 64'h2C1D96168B8B9D8B;
  assign sbox[8'h9a] = 64'h140F830A8C8C868C;
  assign sbox[8'h9b] = 64'hE84E53741D1D691D;
  assign sbox[8'h9c] = 64'h8B20DBCBFBFB30FB;
  assign sbox[8'h9d] = 64'hAB38C7DBFFFF24FF;
  assign sbox[8'h9e] = 64'h46BC7D23C1C1E2C1;
  assign sbox[8'h9f] = 64'hF98B39F2B2B240B2;
  
  assign sbox[8'ha0] = 64'hCC55C2669797F197;
  assign sbox[8'ha1] = 64'h6DE4CAB82E2E962E;
  assign sbox[8'ha2] = 64'h932AD2C7F8F83FF8;
  assign sbox[8'ha3] = 64'h0F4326896565EC65;
  assign sbox[8'ha4] = 64'hE30EF8FFF6F609F6;
  assign sbox[8'ha5] = 64'h8F2356C97575BC75;
  assign sbox[8'ha6] = 64'h3812151C07071B07;
  assign sbox[8'ha7] = 64'h20181C1004041404;
  assign sbox[8'ha8] = 64'h72ABE23949497049;
  assign sbox[8'ha9] = 64'h85AA99CC3333FF33;
  assign sbox[8'haa] = 64'h736286B7E4E453E4;
  assign sbox[8'hab] = 64'h86EC3543D9D99AD9;
  assign sbox[8'hac] = 64'hA1B108DEB9B967B9;
  assign sbox[8'had] = 64'hCEDA0A67D0D0B7D0;
  assign sbox[8'hae] = 64'h2A91D31542425742;
  assign sbox[8'haf] = 64'h76A86F3BC7C7FCC7;
  
  assign sbox[8'hb0] = 64'h477519AD6C6CC16C;
  assign sbox[8'hb1] = 64'hF447D77A9090EA90;
  assign sbox[8'hb2] = 64'h0000000000000000;
  assign sbox[8'hb3] = 64'h04038D028E8E8C8E;
  assign sbox[8'hb4] = 64'h5F7F10A16F6FCE6F;
  assign sbox[8'hb5] = 64'hBAFDAD5D50500D50;
  assign sbox[8'hb6] = 64'h0806070401010501;
  assign sbox[8'hb7] = 64'h66A46133C5C5F6C5;
  assign sbox[8'hb8] = 64'h9EE63C4FDADA95DA;
  assign sbox[8'hb9] = 64'h028FC80147474647;
  assign sbox[8'hba] = 64'hE582BDFC3F3FC33F;
  assign sbox[8'hbb] = 64'h26945913CDCDDECD;
  assign sbox[8'hbc] = 64'h6F6B02B96969D069;
  assign sbox[8'hbd] = 64'h79EB49B2A2A210A2;
  assign sbox[8'hbe] = 64'h437694AFE2E24DE2;
  assign sbox[8'hbf] = 64'hF7017BF57A7A8F7A;
  
  assign sbox[8'hc0] = 64'h51F552A6A7A701A7;
  assign sbox[8'hc1] = 64'h7EAE683FC6C6F9C6;
  assign sbox[8'hc2] = 64'hEC4DDE769393E593;
  assign sbox[8'hc3] = 64'h78222D3C0F0F330F;
  assign sbox[8'hc4] = 64'h503C36280A0A220A;
  assign sbox[8'hc5] = 64'h3014121806061E06;
  assign sbox[8'hc6] = 64'h636E88BFE6E659E6;
  assign sbox[8'hc7] = 64'h45FAD1AC2B2B872B;
  assign sbox[8'hc8] = 64'hC453C5629696F496;
  assign sbox[8'hc9] = 64'h71ED4EB6A3A315A3;
  assign sbox[8'hca] = 64'hE04854701C1C6C1C;
  assign sbox[8'hcb] = 64'h11C56A86AFAF29AF;
  assign sbox[8'hcc] = 64'h77610BB56A6ADF6A;
  assign sbox[8'hcd] = 64'h906C7E4812125A12;
  assign sbox[8'hce] = 64'h543FBB2A8484AE84;
  assign sbox[8'hcf] = 64'hD596AFE43939DD39;
  
  assign sbox[8'hd0] = 64'h6B688FBBE7E75CE7;
  assign sbox[8'hd1] = 64'hE98737FAB0B04AB0;
  assign sbox[8'hd2] = 64'h642BA9328282B082;
  assign sbox[8'hd3] = 64'hEB08FFFBF7F70CF7;
  assign sbox[8'hd4] = 64'hA33EC0DFFEFE21FE;
  assign sbox[8'hd5] = 64'h9C69F44E9D9DD39D;
  assign sbox[8'hd6] = 64'h4C35B2268787A187;
  assign sbox[8'hd7] = 64'hDAD5896D5C5C315C;
  assign sbox[8'hd8] = 64'h7C21A03E8181BF81;
  assign sbox[8'hd9] = 64'hB5BE8BD43535E135;
  assign sbox[8'hda] = 64'hBEFE205FDEDE81DE;
  assign sbox[8'hdb] = 64'hC99F2BEAB4B45EB4;
  assign sbox[8'hdc] = 64'h41F95CAEA5A50BA5;
  assign sbox[8'hdd] = 64'hB332CED7FCFC2BFC;
  assign sbox[8'hde] = 64'h7427A73A8080BA80;
  assign sbox[8'hdf] = 64'h2B58B79BEFEF74EF;
  
  assign sbox[8'he0] = 64'h16804B0BCBCBC0CB;
  assign sbox[8'he1] = 64'hB1BD06D6BBBB6DBB;
  assign sbox[8'he2] = 64'h7F670CB16B6BDA6B;
  assign sbox[8'he3] = 64'h97295FC57676B376;
  assign sbox[8'he4] = 64'hB9BB01D2BABA68BA;
  assign sbox[8'he5] = 64'hEAC19B755A5A2F5A;
  assign sbox[8'he6] = 64'hCF136EE97D7D947D;
  assign sbox[8'he7] = 64'hE70D75FD78788578;
  assign sbox[8'he8] = 64'h583A312C0B0B270B;
  assign sbox[8'he9] = 64'hDC59CC6E9595FB95;
  assign sbox[8'hea] = 64'h4B7093ABE3E348E3;
  assign sbox[8'heb] = 64'h01C9648EADAD23AD;
  assign sbox[8'hec] = 64'h872551CD7474B974;
  assign sbox[8'hed] = 64'hB477EF5A9898C298;
  assign sbox[8'hee] = 64'hC59AA1EC3B3BD73B;
  assign sbox[8'hef] = 64'hADB482D83636EE36;
  
  assign sbox[8'hf0] = 64'h0745218D6464E964;
  assign sbox[8'hf1] = 64'h4F731EA96D6DC46D;
  assign sbox[8'hf2] = 64'hAEF22E57DCDC8BDC;
  assign sbox[8'hf3] = 64'hD31AEAE7F0F017F0;
  assign sbox[8'hf4] = 64'hF2CB927959592059;
  assign sbox[8'hf5] = 64'h21D1789EA9A937A9;
  assign sbox[8'hf6] = 64'h5AB5F92D4C4C614C;
  assign sbox[8'hf7] = 64'hB872655C17174B17;
  assign sbox[8'hf8] = 64'hDF1F60E17F7F9E7F;
  assign sbox[8'hf9] = 64'hFC41D07E9191EF91;
  assign sbox[8'hfa] = 64'hA9B70FDAB8B862B8;
  assign sbox[8'hfb] = 64'h068C4503C9C9CAC9;
  assign sbox[8'hfc] = 64'h82EFB84157571657;
  assign sbox[8'hfd] = 64'hD85A416C1B1B771B;
  assign sbox[8'hfe] = 64'h537A9AA7E0E047E0;
  assign sbox[8'hff] = 64'h2F5B3A996161F861;
endmodule //t_3