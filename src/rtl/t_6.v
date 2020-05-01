//======================================================================
//
// t_6.v
// -------
// t_6 substitution.
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

module t_6(
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
  assign sbox[8'h00] = 64'h769393E593EC4DDE;
  assign sbox[8'h01] = 64'h43D9D99AD986EC35;
  assign sbox[8'h02] = 64'h529A9AC89AA47BE1;
  assign sbox[8'h03] = 64'hEEB5B55BB5C1992C;
  assign sbox[8'h04] = 64'h5A9898C298B477EF;
  assign sbox[8'h05] = 64'h882222AA220DCCEE;
  assign sbox[8'h06] = 64'h0945454C451283C6;
  assign sbox[8'h07] = 64'hD7FCFC2BFCB332CE;
  assign sbox[8'h08] = 64'hD2BABA68BAB9BB01;
  assign sbox[8'h09] = 64'hB56A6ADF6A77610B;
  assign sbox[8'h0a] = 64'h5BDFDF84DFB6F827;
  assign sbox[8'h0b] = 64'h0802020A02100C0E;
  assign sbox[8'h0c] = 64'h469F9FD99F8C65FA;
  assign sbox[8'h0d] = 64'h57DCDC8BDCAEF22E;
  assign sbox[8'h0e] = 64'h5951510851B2FBAA;
  assign sbox[8'h0f] = 64'h7959592059F2CB92;
  
  assign sbox[8'h10] = 64'h354A4A7F4A6AA1EB;
  assign sbox[8'h11] = 64'h5C17174B17B87265;
  assign sbox[8'h12] = 64'hAC2B2B872B45FAD1;
  assign sbox[8'h13] = 64'h2FC2C2EDC25EB674;
  assign sbox[8'h14] = 64'h6A9494FE94D45FCB;
  assign sbox[8'h15] = 64'hF7F4F403F4F302F6;
  assign sbox[8'h16] = 64'hD6BBBB6DBBB1BD06;
  assign sbox[8'h17] = 64'hB6A3A315A371ED4E;
  assign sbox[8'h18] = 64'h956262F762375133;
  assign sbox[8'h19] = 64'hB7E4E453E4736286;
  assign sbox[8'h1a] = 64'hD97171A871AF3B4A;
  assign sbox[8'h1b] = 64'h77D4D4A3D4EEC216;
  assign sbox[8'h1c] = 64'h13CDCDDECD269459;
  assign sbox[8'h1d] = 64'hDD7070AD70A73D4D;
  assign sbox[8'h1e] = 64'h5816164E16B07462;
  assign sbox[8'h1f] = 64'hA3E1E142E15B7C9D;
  
  assign sbox[8'h20] = 64'h394949704972ABE2;
  assign sbox[8'h21] = 64'hF03C3CCC3CFD88B4;
  assign sbox[8'h22] = 64'h27C0C0E7C04EBA7A;
  assign sbox[8'h23] = 64'h47D8D89FD88EEA32;
  assign sbox[8'h24] = 64'h6D5C5C315CDAD589;
  assign sbox[8'h25] = 64'h569B9BCD9BAC7DE6;
  assign sbox[8'h26] = 64'h8EADAD23AD01C964;
  assign sbox[8'h27] = 64'h2E8585AB855C39BC;
  assign sbox[8'h28] = 64'h5153530253A2F7A4;
  assign sbox[8'h29] = 64'hBEA1A11FA161E140;
  assign sbox[8'h2a] = 64'hF57A7A8F7AF7017B;
  assign sbox[8'h2b] = 64'h07C8C8CFC80E8A42;
  assign sbox[8'h2c] = 64'hB42D2D992D75EEC3;
  assign sbox[8'h2d] = 64'hA7E0E047E0537A9A;
  assign sbox[8'h2e] = 64'h63D1D1B2D1C6DC0D;
  assign sbox[8'h2f] = 64'hD57272A772B73143;
  
  assign sbox[8'h30] = 64'hA2A6A604A659F355;
  assign sbox[8'h31] = 64'hB02C2C9C2C7DE8C4;
  assign sbox[8'h32] = 64'h37C4C4F3C46EA266;
  assign sbox[8'h33] = 64'hABE3E348E34B7093;
  assign sbox[8'h34] = 64'hC57676B37697295F;
  assign sbox[8'h35] = 64'hFD78788578E70D75;
  assign sbox[8'h36] = 64'hE6B7B751B7D19522;
  assign sbox[8'h37] = 64'hEAB4B45EB4C99F2B;
  assign sbox[8'h38] = 64'h2409092D0948363F;
  assign sbox[8'h39] = 64'hEC3B3BD73BC59AA1;
  assign sbox[8'h3a] = 64'h380E0E360E70242A;
  assign sbox[8'h3b] = 64'h1941415841329BDA;
  assign sbox[8'h3c] = 64'h2D4C4C614C5AB5F9;
  assign sbox[8'h3d] = 64'h5FDEDE81DEBEFE20;
  assign sbox[8'h3e] = 64'hF2B2B240B2F98B39;
  assign sbox[8'h3f] = 64'h7A9090EA90F447D7;
  
  assign sbox[8'h40] = 64'h942525B12535DEFB;
  assign sbox[8'h41] = 64'hAEA5A50BA541F95C;
  assign sbox[8'h42] = 64'h7BD7D7ACD7F6C81F;
  assign sbox[8'h43] = 64'h0C03030F03180A09;
  assign sbox[8'h44] = 64'h4411115511886677;
  assign sbox[8'h45] = 64'h0000000000000000;
  assign sbox[8'h46] = 64'h2BC3C3E8C356B073;
  assign sbox[8'h47] = 64'hB82E2E962E6DE4CA;
  assign sbox[8'h48] = 64'h729292E092E44BD9;
  assign sbox[8'h49] = 64'h9BEFEF74EF2B58B7;
  assign sbox[8'h4a] = 64'h254E4E6B4E4AB9F7;
  assign sbox[8'h4b] = 64'h4812125A12906C7E;
  assign sbox[8'h4c] = 64'h4E9D9DD39D9C69F4;
  assign sbox[8'h4d] = 64'hE97D7D947DCF136E;
  assign sbox[8'h4e] = 64'h0BCBCBC0CB16804B;
  assign sbox[8'h4f] = 64'hD43535E135B5BE8B;
  
  assign sbox[8'h50] = 64'h4010105010806070;
  assign sbox[8'h51] = 64'h73D5D5A6D5E6C411;
  assign sbox[8'h52] = 64'h214F4F6E4F42BFF0;
  assign sbox[8'h53] = 64'h429E9EDC9E8463FD;
  assign sbox[8'h54] = 64'h294D4D644D52B3FE;
  assign sbox[8'h55] = 64'h9EA9A937A921D178;
  assign sbox[8'h56] = 64'h4955551C5592E3B6;
  assign sbox[8'h57] = 64'h3FC6C6F9C67EAE68;
  assign sbox[8'h58] = 64'h67D0D0B7D0CEDA0A;
  assign sbox[8'h59] = 64'hF17B7B8A7BFF077C;
  assign sbox[8'h5a] = 64'h6018187818C05048;
  assign sbox[8'h5b] = 64'h669797F197CC55C2;
  assign sbox[8'h5c] = 64'h6BD3D3B8D3D6D003;
  assign sbox[8'h5d] = 64'hD83636EE36ADB482;
  assign sbox[8'h5e] = 64'hBFE6E659E6636E88;
  assign sbox[8'h5f] = 64'h3D484875487AADE5;
  
  assign sbox[8'h60] = 64'h45565613568AE9BF;
  assign sbox[8'h61] = 64'h3E8181BF817C21A0;
  assign sbox[8'h62] = 64'h068F8F898F0C058A;
  assign sbox[8'h63] = 64'hC17777B6779F2F58;
  assign sbox[8'h64] = 64'h17CCCCDBCC2E925E;
  assign sbox[8'h65] = 64'h4A9C9CD69C946FF3;
  assign sbox[8'h66] = 64'hDEB9B967B9A1B108;
  assign sbox[8'h67] = 64'hAFE2E24DE2437694;
  assign sbox[8'h68] = 64'h8AACAC26AC09CF63;
  assign sbox[8'h69] = 64'hDAB8B862B8A9B70F;
  assign sbox[8'h6a] = 64'hBC2F2F932F65E2CD;
  assign sbox[8'h6b] = 64'h5415154115A87E6B;
  assign sbox[8'h6c] = 64'hAAA4A40EA449FF5B;
  assign sbox[8'h6d] = 64'hED7C7C917CC71569;
  assign sbox[8'h6e] = 64'h4FDADA95DA9EE63C;
  assign sbox[8'h6f] = 64'hE03838D838DD90A8;
  
  assign sbox[8'h70] = 64'h781E1E661EF0445A;
  assign sbox[8'h71] = 64'h2C0B0B270B583A31;
  assign sbox[8'h72] = 64'h1405051105281E1B;
  assign sbox[8'h73] = 64'h7FD6D6A9D6FECE18;
  assign sbox[8'h74] = 64'h5014144414A0786C;
  assign sbox[8'h75] = 64'hA56E6ECB6E577917;
  assign sbox[8'h76] = 64'hAD6C6CC16C477519;
  assign sbox[8'h77] = 64'hE57E7E9B7ED71967;
  assign sbox[8'h78] = 64'h856666E36617492F;
  assign sbox[8'h79] = 64'hD3FDFD2EFDBB34C9;
  assign sbox[8'h7a] = 64'hFEB1B14FB1E18130;
  assign sbox[8'h7b] = 64'hB3E5E556E57B6481;
  assign sbox[8'h7c] = 64'h9D6060FD60275D3D;
  assign sbox[8'h7d] = 64'h86AFAF29AF11C56A;
  assign sbox[8'h7e] = 64'h655E5E3B5ECAD987;
  assign sbox[8'h7f] = 64'hCC3333FF3385AA99;
  
  assign sbox[8'h80] = 64'h268787A1874C35B2;
  assign sbox[8'h81] = 64'h03C9C9CAC9068C45;
  assign sbox[8'h82] = 64'hE7F0F017F0D31AEA;
  assign sbox[8'h83] = 64'h695D5D345DD2D38E;
  assign sbox[8'h84] = 64'hA96D6DC46D4F731E;
  assign sbox[8'h85] = 64'hFC3F3FC33FE582BD;
  assign sbox[8'h86] = 64'h1A8888928834179F;
  assign sbox[8'h87] = 64'h0E8D8D838D1C0984;
  assign sbox[8'h88] = 64'h3BC7C7FCC776A86F;
  assign sbox[8'h89] = 64'hFBF7F70CF7EB08FF;
  assign sbox[8'h8a] = 64'h741D1D691DE84E53;
  assign sbox[8'h8b] = 64'h83E9E96AE91B4CA5;
  assign sbox[8'h8c] = 64'h97ECEC7BEC3352BE;
  assign sbox[8'h8d] = 64'h93EDED7EED3B54B9;
  assign sbox[8'h8e] = 64'h3A8080BA807427A7;
  assign sbox[8'h8f] = 64'hA429298D2955F6DF;
  
  assign sbox[8'h90] = 64'h9C2727BB2725D2F5;
  assign sbox[8'h91] = 64'h1BCFCFD4CF369857;
  assign sbox[8'h92] = 64'h5E9999C799BC71E8;
  assign sbox[8'h93] = 64'h9AA8A832A829D77F;
  assign sbox[8'h94] = 64'h5D50500D50BAFDAD;
  assign sbox[8'h95] = 64'h3C0F0F330F78222D;
  assign sbox[8'h96] = 64'hDC3737EB37A5B285;
  assign sbox[8'h97] = 64'h902424B4243DD8FC;
  assign sbox[8'h98] = 64'hA0282888285DF0D8;
  assign sbox[8'h99] = 64'hC03030F0309DA090;
  assign sbox[8'h9a] = 64'h6E9595FB95DC59CC;
  assign sbox[8'h9b] = 64'h6FD2D2BDD2DED604;
  assign sbox[8'h9c] = 64'hF83E3EC63EED84BA;
  assign sbox[8'h9d] = 64'h715B5B2A5BE2C79C;
  assign sbox[8'h9e] = 64'h1D40405D403A9DDD;
  assign sbox[8'h9f] = 64'h368383B5836C2DAE;
  
  assign sbox[8'ha0] = 64'hF6B3B345B3F18D3E;
  assign sbox[8'ha1] = 64'hB96969D0696F6B02;
  assign sbox[8'ha2] = 64'h415757165782EFB8;
  assign sbox[8'ha3] = 64'h7C1F1F631FF8425D;
  assign sbox[8'ha4] = 64'h1C07071B07381215;
  assign sbox[8'ha5] = 64'h701C1C6C1CE04854;
  assign sbox[8'ha6] = 64'h128A8A988A241B91;
  assign sbox[8'ha7] = 64'hCABCBC76BC89AF13;
  assign sbox[8'ha8] = 64'h802020A0201DC0E0;
  assign sbox[8'ha9] = 64'h8BEBEB60EB0B40AB;
  assign sbox[8'haa] = 64'h1FCECED1CE3E9E50;
  assign sbox[8'hab] = 64'h028E8E8C8E04038D;
  assign sbox[8'hac] = 64'h96ABAB3DAB31DD76;
  assign sbox[8'had] = 64'h9FEEEE71EE235EB0;
  assign sbox[8'hae] = 64'hC43131F53195A697;
  assign sbox[8'haf] = 64'hB2A2A210A279EB49;
  
  assign sbox[8'hb0] = 64'hD17373A273BF3744;
  assign sbox[8'hb1] = 64'hC3F9F93AF99B2CD5;
  assign sbox[8'hb2] = 64'h0FCACAC5CA1E864C;
  assign sbox[8'hb3] = 64'hE83A3AD23ACD9CA6;
  assign sbox[8'hb4] = 64'h681A1A721AD05C46;
  assign sbox[8'hb5] = 64'hCBFBFB30FB8B20DB;
  assign sbox[8'hb6] = 64'h340D0D390D682E23;
  assign sbox[8'hb7] = 64'h23C1C1E2C146BC7D;
  assign sbox[8'hb8] = 64'hDFFEFE21FEA33EC0;
  assign sbox[8'hb9] = 64'hCFFAFA35FA8326DC;
  assign sbox[8'hba] = 64'hEFF2F21DF2C316E4;
  assign sbox[8'hbb] = 64'hA16F6FCE6F5F7F10;
  assign sbox[8'hbc] = 64'hCEBDBD73BD81A914;
  assign sbox[8'hbd] = 64'h629696F496C453C5;
  assign sbox[8'hbe] = 64'h53DDDD8EDDA6F429;
  assign sbox[8'hbf] = 64'h11434352432297D4;
  
  assign sbox[8'hc0] = 64'h5552520752AAF1A3;
  assign sbox[8'hc1] = 64'hE2B6B654B6D99325;
  assign sbox[8'hc2] = 64'h2008082808403038;
  assign sbox[8'hc3] = 64'hEBF3F318F3CB10E3;
  assign sbox[8'hc4] = 64'h82AEAE2CAE19C36D;
  assign sbox[8'hc5] = 64'hC2BEBE7CBE99A31D;
  assign sbox[8'hc6] = 64'h6419197D19C8564F;
  assign sbox[8'hc7] = 64'h1E898997893C1198;
  assign sbox[8'hc8] = 64'hC83232FA328DAC9E;
  assign sbox[8'hc9] = 64'h982626BE262DD4F2;
  assign sbox[8'hca] = 64'hFAB0B04AB0E98737;
  assign sbox[8'hcb] = 64'h8FEAEA65EA0346AC;
  assign sbox[8'hcc] = 64'h314B4B7A4B62A7EC;
  assign sbox[8'hcd] = 64'h8D6464E964074521;
  assign sbox[8'hce] = 64'h2A8484AE84543FBB;
  assign sbox[8'hcf] = 64'h328282B082642BA9;
  
  assign sbox[8'hd0] = 64'hB16B6BDA6B7F670C;
  assign sbox[8'hd1] = 64'hF3F5F506F5FB04F1;
  assign sbox[8'hd2] = 64'hF979798079EF0B72;
  assign sbox[8'hd3] = 64'hC6BFBF79BF91A51A;
  assign sbox[8'hd4] = 64'h0401010501080607;
  assign sbox[8'hd5] = 64'h615F5F3E5FC2DF80;
  assign sbox[8'hd6] = 64'hC97575BC758F2356;
  assign sbox[8'hd7] = 64'h916363F2633F5734;
  assign sbox[8'hd8] = 64'h6C1B1B771BD85A41;
  assign sbox[8'hd9] = 64'h8C2323AF2305CAE9;
  assign sbox[8'hda] = 64'hF43D3DC93DF58EB3;
  assign sbox[8'hdb] = 64'hBD6868D568676D05;
  assign sbox[8'hdc] = 64'hA82A2A822A4DFCD6;
  assign sbox[8'hdd] = 64'h896565EC650F4326;
  assign sbox[8'hde] = 64'h87E8E86FE8134AA2;
  assign sbox[8'hdf] = 64'h7E9191EF91FC41D0;
  
  assign sbox[8'he0] = 64'hFFF6F609F6E30EF8;
  assign sbox[8'he1] = 64'hDBFFFF24FFAB38C7;
  assign sbox[8'he2] = 64'h4C13135F13986A79;
  assign sbox[8'he3] = 64'h7D58582558FACD95;
  assign sbox[8'he4] = 64'hE3F1F112F1DB1CED;
  assign sbox[8'he5] = 64'h0147474647028FC8;
  assign sbox[8'he6] = 64'h280A0A220A503C36;
  assign sbox[8'he7] = 64'hE17F7F9E7FDF1F60;
  assign sbox[8'he8] = 64'h33C5C5F6C566A461;
  assign sbox[8'he9] = 64'hA6A7A701A751F552;
  assign sbox[8'hea] = 64'hBBE7E75CE76B688F;
  assign sbox[8'heb] = 64'h996161F8612F5B3A;
  assign sbox[8'hec] = 64'h755A5A2F5AEAC19B;
  assign sbox[8'hed] = 64'h1806061E06301412;
  assign sbox[8'hee] = 64'h05464643460A89CF;
  assign sbox[8'hef] = 64'h0D444449441A85C1;
  
  assign sbox[8'hf0] = 64'h15424257422A91D3;
  assign sbox[8'hf1] = 64'h100404140420181C;
  assign sbox[8'hf2] = 64'hBAA0A01AA069E747;
  assign sbox[8'hf3] = 64'h4BDBDB90DB96E03B;
  assign sbox[8'hf4] = 64'hE43939DD39D596AF;
  assign sbox[8'hf5] = 64'h228686A4864433B5;
  assign sbox[8'hf6] = 64'h4D545419549AE5B1;
  assign sbox[8'hf7] = 64'h92AAAA38AA39DB71;
  assign sbox[8'hf8] = 64'h0A8C8C868C140F83;
  assign sbox[8'hf9] = 64'hD03434E434BDB88C;
  assign sbox[8'hfa] = 64'h842121A52115C6E7;
  assign sbox[8'hfb] = 64'h168B8B9D8B2C1D96;
  assign sbox[8'hfc] = 64'hC7F8F83FF8932AD2;
  assign sbox[8'hfd] = 64'h300C0C3C0C602824;
  assign sbox[8'hfe] = 64'hCD7474B974872551;
  assign sbox[8'hff] = 64'h816767E6671F4F28;
  
 
endmodule // t_6