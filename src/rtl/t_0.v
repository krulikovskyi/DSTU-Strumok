//======================================================================
//
// t_0.v
// -------
// t_0 substitution.
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

module t_0(
                input wire  [07 : 0] sboxw,
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


  assign sbox[8'h00] = 64'hA832A829D77F9AA8;
  assign sbox[8'h01] = 64'h4352432297D41143;
  assign sbox[8'h02] = 64'h5F3E5FC2DF80615F;
  assign sbox[8'h03] = 64'h061E063014121806;
  assign sbox[8'h04] = 64'h6BDA6B7F670CB16B;
  assign sbox[8'h05] = 64'h75BC758F2356C975;
  assign sbox[8'h06] = 64'h6CC16C477519AD6C;
  assign sbox[8'h07] = 64'h592059F2CB927959;
  assign sbox[8'h08] = 64'h71A871AF3B4AD971;
  assign sbox[8'h09] = 64'hDF84DFB6F8275BDF;
  assign sbox[8'h0a] = 64'h87A1874C35B22687;
  assign sbox[8'h0b] = 64'h95FB95DC59CC6E95;
  assign sbox[8'h0c] = 64'h174B17B872655C17;
  assign sbox[8'h0d] = 64'hF017F0D31AEAE7F0;
  assign sbox[8'h0e] = 64'hD89FD88EEA3247D8;
  assign sbox[8'h0f] = 64'h092D0948363F2409;
  
  assign sbox[8'h10] = 64'h6DC46D4F731EA96D;
  assign sbox[8'h11] = 64'hF318F3CB10E3EBF3;
  assign sbox[8'h12] = 64'h1D691DE84E53741D;
  assign sbox[8'h13] = 64'hCBC0CB16804B0BCB;
  assign sbox[8'h14] = 64'hC9CAC9068C4503C9;
  assign sbox[8'h15] = 64'h4D644D52B3FE294D;
  assign sbox[8'h16] = 64'h2C9C2C7DE8C4B02C;
  assign sbox[8'h17] = 64'hAF29AF11C56A86AF;
  assign sbox[8'h18] = 64'h798079EF0B72F979;
  assign sbox[8'h19] = 64'hE047E0537A9AA7E0;
  assign sbox[8'h1a] = 64'h97F197CC55C26697;
  assign sbox[8'h1b] = 64'hFD2EFDBB34C9D3FD;
  assign sbox[8'h1c] = 64'h6FCE6F5F7F10A16F;
  assign sbox[8'h1d] = 64'h4B7A4B62A7EC314B;
  assign sbox[8'h1e] = 64'h454C451283C60945;
  assign sbox[8'h1f] = 64'h39DD39D596AFE439;
  
  assign sbox[8'h20] = 64'h3EC63EED84BAF83E;
  assign sbox[8'h21] = 64'hDD8EDDA6F42953DD;
  assign sbox[8'h22] = 64'hA315A371ED4EB6A3;
  assign sbox[8'h23] = 64'h4F6E4F42BFF0214F;
  assign sbox[8'h24] = 64'hB45EB4C99F2BEAB4;
  assign sbox[8'h25] = 64'hB654B6D99325E2B6;
  assign sbox[8'h26] = 64'h9AC89AA47BE1529A;
  assign sbox[8'h27] = 64'h0E360E70242A380E;
  assign sbox[8'h28] = 64'h1F631FF8425D7C1F;
  assign sbox[8'h29] = 64'hBF79BF91A51AC6BF;
  assign sbox[8'h2a] = 64'h154115A87E6B5415;
  assign sbox[8'h2b] = 64'hE142E15B7C9DA3E1;
  assign sbox[8'h2c] = 64'h49704972ABE23949;
  assign sbox[8'h2d] = 64'hD2BDD2DED6046FD2;
  assign sbox[8'h2e] = 64'h93E593EC4DDE7693;
  assign sbox[8'h2f] = 64'hC6F9C67EAE683FC6;
  
  assign sbox[8'h30] = 64'h92E092E44BD97292;
  assign sbox[8'h31] = 64'h72A772B73143D572;
  assign sbox[8'h32] = 64'h9EDC9E8463FD429E;
  assign sbox[8'h33] = 64'h61F8612F5B3A9961;
  assign sbox[8'h34] = 64'hD1B2D1C6DC0D63D1;
  assign sbox[8'h35] = 64'h63F2633F57349163;
  assign sbox[8'h36] = 64'hFA35FA8326DCCFFA;
  assign sbox[8'h37] = 64'hEE71EE235EB09FEE;
  assign sbox[8'h38] = 64'hF403F4F302F6F7F4;
  assign sbox[8'h39] = 64'h197D19C8564F6419;
  assign sbox[8'h3a] = 64'hD5A6D5E6C41173D5;
  assign sbox[8'h3b] = 64'hAD23AD01C9648EAD;
  assign sbox[8'h3c] = 64'h582558FACD957D58;
  assign sbox[8'h3d] = 64'hA40EA449FF5BAAA4;
  assign sbox[8'h3e] = 64'hBB6DBBB1BD06D6BB;
  assign sbox[8'h3f] = 64'hA11FA161E140BEA1;
  
  assign sbox[8'h40] = 64'hDC8BDCAEF22E57DC;
  assign sbox[8'h41] = 64'hF21DF2C316E4EFF2;
  assign sbox[8'h42] = 64'h83B5836C2DAE3683;
  assign sbox[8'h43] = 64'h37EB37A5B285DC37;
  assign sbox[8'h44] = 64'h4257422A91D31542;
  assign sbox[8'h45] = 64'hE453E4736286B7E4;
  assign sbox[8'h46] = 64'h7A8F7AF7017BF57A;
  assign sbox[8'h47] = 64'h32FA328DAC9EC832;
  assign sbox[8'h48] = 64'h9CD69C946FF34A9C;
  assign sbox[8'h49] = 64'hCCDBCC2E925E17CC;
  assign sbox[8'h4a] = 64'hAB3DAB31DD7696AB;
  assign sbox[8'h4b] = 64'h4A7F4A6AA1EB354A;
  assign sbox[8'h4c] = 64'h8F898F0C058A068F;
  assign sbox[8'h4d] = 64'h6ECB6E577917A56E;
  assign sbox[8'h4e] = 64'h04140420181C1004;
  assign sbox[8'h4f] = 64'h27BB2725D2F59C27;
  
  assign sbox[8'h50] = 64'h2E962E6DE4CAB82E;
  assign sbox[8'h51] = 64'hE75CE76B688FBBE7;
  assign sbox[8'h52] = 64'hE24DE2437694AFE2;
  assign sbox[8'h53] = 64'h5A2F5AEAC19B755A;
  assign sbox[8'h54] = 64'h96F496C453C56296;
  assign sbox[8'h55] = 64'h164E16B074625816;
  assign sbox[8'h56] = 64'h23AF2305CAE98C23;
  assign sbox[8'h57] = 64'h2B872B45FAD1AC2B;
  assign sbox[8'h58] = 64'hC2EDC25EB6742FC2;
  assign sbox[8'h59] = 64'h65EC650F43268965;
  assign sbox[8'h5a] = 64'h66E36617492F8566;
  assign sbox[8'h5b] = 64'h0F330F78222D3C0F;
  assign sbox[8'h5c] = 64'hBC76BC89AF13CABC;
  assign sbox[8'h5d] = 64'hA937A921D1789EA9;
  assign sbox[8'h5e] = 64'h474647028FC80147;
  assign sbox[8'h5f] = 64'h415841329BDA1941;
  
  assign sbox[8'h60] = 64'h34E434BDB88CD034;
  assign sbox[8'h61] = 64'h4875487AADE53D48;
  assign sbox[8'h62] = 64'hFC2BFCB332CED7FC;
  assign sbox[8'h63] = 64'hB751B7D19522E6B7;
  assign sbox[8'h64] = 64'h6ADF6A77610BB56A;
  assign sbox[8'h65] = 64'h88928834179F1A88;
  assign sbox[8'h66] = 64'hA50BA541F95CAEA5;
  assign sbox[8'h67] = 64'h530253A2F7A45153;
  assign sbox[8'h68] = 64'h86A4864433B52286;
  assign sbox[8'h69] = 64'hF93AF99B2CD5C3F9;
  assign sbox[8'h6a] = 64'h5B2A5BE2C79C715B;
  assign sbox[8'h6b] = 64'hDB90DB96E03B4BDB;
  assign sbox[8'h6c] = 64'h38D838DD90A8E038;
  assign sbox[8'h6d] = 64'h7B8A7BFF077CF17B;
  assign sbox[8'h6e] = 64'hC3E8C356B0732BC3;
  assign sbox[8'h6f] = 64'h1E661EF0445A781E;
  
  assign sbox[8'h70] = 64'h22AA220DCCEE8822;
  assign sbox[8'h71] = 64'h33FF3385AA99CC33;
  assign sbox[8'h72] = 64'h24B4243DD8FC9024;
  assign sbox[8'h73] = 64'h2888285DF0D8A028;
  assign sbox[8'h74] = 64'h36EE36ADB482D836;
  assign sbox[8'h75] = 64'hC7FCC776A86F3BC7;
  assign sbox[8'h76] = 64'hB240B2F98B39F2B2;
  assign sbox[8'h77] = 64'h3BD73BC59AA1EC3B;
  assign sbox[8'h78] = 64'h8E8C8E04038D028E;
  assign sbox[8'h79] = 64'h77B6779F2F58C177;
  assign sbox[8'h7a] = 64'hBA68BAB9BB01D2BA;
  assign sbox[8'h7b] = 64'hF506F5FB04F1F3F5;
  assign sbox[8'h7c] = 64'h144414A0786C5014;
  assign sbox[8'h7d] = 64'h9FD99F8C65FA469F;
  assign sbox[8'h7e] = 64'h0828084030382008;
  assign sbox[8'h7f] = 64'h551C5592E3B64955;
  
  assign sbox[8'h80] = 64'h9BCD9BAC7DE6569B;
  assign sbox[8'h81] = 64'h4C614C5AB5F92D4C;
  assign sbox[8'h82] = 64'hFE21FEA33EC0DFFE;
  assign sbox[8'h83] = 64'h60FD60275D3D9D60;
  assign sbox[8'h84] = 64'h5C315CDAD5896D5C;
  assign sbox[8'h85] = 64'hDA95DA9EE63C4FDA;
  assign sbox[8'h86] = 64'h187818C050486018;
  assign sbox[8'h87] = 64'h4643460A89CF0546;
  assign sbox[8'h88] = 64'hCDDECD26945913CD;
  assign sbox[8'h89] = 64'h7D947DCF136EE97D;
  assign sbox[8'h8a] = 64'h21A52115C6E78421;
  assign sbox[8'h8b] = 64'hB04AB0E98737FAB0;
  assign sbox[8'h8c] = 64'h3FC33FE582BDFC3F;
  assign sbox[8'h8d] = 64'h1B771BD85A416C1B;
  assign sbox[8'h8e] = 64'h8997893C11981E89;
  assign sbox[8'h8f] = 64'hFF24FFAB38C7DBFF;
  
  assign sbox[8'h90] = 64'hEB60EB0B40AB8BEB;
  assign sbox[8'h91] = 64'h84AE84543FBB2A84;
  assign sbox[8'h92] = 64'h69D0696F6B02B969;
  assign sbox[8'h93] = 64'h3AD23ACD9CA6E83A;
  assign sbox[8'h94] = 64'h9DD39D9C69F44E9D;
  assign sbox[8'h95] = 64'hD7ACD7F6C81F7BD7;
  assign sbox[8'h96] = 64'hD3B8D3D6D0036BD3;
  assign sbox[8'h97] = 64'h70AD70A73D4DDD70;
  assign sbox[8'h98] = 64'h67E6671F4F288167;
  assign sbox[8'h99] = 64'h405D403A9DDD1D40;
  assign sbox[8'h9a] = 64'hB55BB5C1992CEEB5;
  assign sbox[8'h9b] = 64'hDE81DEBEFE205FDE;
  assign sbox[8'h9c] = 64'h5D345DD2D38E695D;
  assign sbox[8'h9d] = 64'h30F0309DA090C030;
  assign sbox[8'h9e] = 64'h91EF91FC41D07E91;
  assign sbox[8'h9f] = 64'hB14FB1E18130FEB1;
  
  assign sbox[8'ha0] = 64'h788578E70D75FD78;
  assign sbox[8'ha1] = 64'h1155118866774411;
  assign sbox[8'ha2] = 64'h0105010806070401;
  assign sbox[8'ha3] = 64'hE556E57B6481B3E5;
  assign sbox[8'ha4] = 64'h0000000000000000;
  assign sbox[8'ha5] = 64'h68D568676D05BD68;
  assign sbox[8'ha6] = 64'h98C298B477EF5A98;
  assign sbox[8'ha7] = 64'hA01AA069E747BAA0;
  assign sbox[8'ha8] = 64'hC5F6C566A46133C5;
  assign sbox[8'ha9] = 64'h020A02100C0E0802;
  assign sbox[8'haa] = 64'hA604A659F355A2A6;
  assign sbox[8'hab] = 64'h74B974872551CD74;
  assign sbox[8'hac] = 64'h2D992D75EEC3B42D;
  assign sbox[8'had] = 64'h0B270B583A312C0B;
  assign sbox[8'hae] = 64'hA210A279EB49B2A2;
  assign sbox[8'haf] = 64'h76B37697295FC576;
  
  assign sbox[8'hb0] = 64'hB345B3F18D3EF6B3;
  assign sbox[8'hb1] = 64'hBE7CBE99A31DC2BE;
  assign sbox[8'hb2] = 64'hCED1CE3E9E501FCE;
  assign sbox[8'hb3] = 64'hBD73BD81A914CEBD;
  assign sbox[8'hb4] = 64'hAE2CAE19C36D82AE;
  assign sbox[8'hb5] = 64'hE96AE91B4CA583E9;
  assign sbox[8'hb6] = 64'h8A988A241B91128A;
  assign sbox[8'hb7] = 64'h31F53195A697C431;
  assign sbox[8'hb8] = 64'h1C6C1CE04854701C;
  assign sbox[8'hb9] = 64'hEC7BEC3352BE97EC;
  assign sbox[8'hba] = 64'hF112F1DB1CEDE3F1;
  assign sbox[8'hbb] = 64'h99C799BC71E85E99;
  assign sbox[8'hbc] = 64'h94FE94D45FCB6A94;
  assign sbox[8'hbd] = 64'hAA38AA39DB7192AA;
  assign sbox[8'hbe] = 64'hF609F6E30EF8FFF6;
  assign sbox[8'hbf] = 64'h26BE262DD4F29826;
  
  assign sbox[8'hc0] = 64'h2F932F65E2CDBC2F;
  assign sbox[8'hc1] = 64'hEF74EF2B58B79BEF;
  assign sbox[8'hc2] = 64'hE86FE8134AA287E8;
  assign sbox[8'hc3] = 64'h8C868C140F830A8C;
  assign sbox[8'hc4] = 64'h35E135B5BE8BD435;
  assign sbox[8'hc5] = 64'h030F03180A090C03;
  assign sbox[8'hc6] = 64'hD4A3D4EEC21677D4;
  assign sbox[8'hc7] = 64'h7F9E7FDF1F60E17F;
  assign sbox[8'hc8] = 64'hFB30FB8B20DBCBFB;
  assign sbox[8'hc9] = 64'h051105281E1B1405;
  assign sbox[8'hca] = 64'hC1E2C146BC7D23C1;
  assign sbox[8'hcb] = 64'h5E3B5ECAD987655E;
  assign sbox[8'hcc] = 64'h90EA90F447D77A90;
  assign sbox[8'hcd] = 64'h20A0201DC0E08020;
  assign sbox[8'hce] = 64'h3DC93DF58EB3F43D;
  assign sbox[8'hcf] = 64'h82B082642BA93282;
  
  assign sbox[8'hd0] = 64'hF70CF7EB08FFFBF7;
  assign sbox[8'hd1] = 64'hEA65EA0346AC8FEA;
  assign sbox[8'hd2] = 64'h0A220A503C36280A;
  assign sbox[8'hd3] = 64'h0D390D682E23340D;
  assign sbox[8'hd4] = 64'h7E9B7ED71967E57E;
  assign sbox[8'hd5] = 64'hF83FF8932AD2C7F8;
  assign sbox[8'hd6] = 64'h500D50BAFDAD5D50;
  assign sbox[8'hd7] = 64'h1A721AD05C46681A;
  assign sbox[8'hd8] = 64'hC4F3C46EA26637C4;
  assign sbox[8'hd9] = 64'h071B073812151C07;
  assign sbox[8'hda] = 64'h57165782EFB84157;
  assign sbox[8'hdb] = 64'hB862B8A9B70FDAB8;
  assign sbox[8'hdc] = 64'h3CCC3CFD88B4F03C;
  assign sbox[8'hdd] = 64'h62F7623751339562;
  assign sbox[8'hde] = 64'hE348E34B7093ABE3;
  assign sbox[8'hdf] = 64'hC8CFC80E8A4207C8;
  
  assign sbox[8'he0] = 64'hAC26AC09CF638AAC;
  assign sbox[8'he1] = 64'h520752AAF1A35552;
  assign sbox[8'he2] = 64'h64E9640745218D64;
  assign sbox[8'he3] = 64'h1050108060704010;
  assign sbox[8'he4] = 64'hD0B7D0CEDA0A67D0;
  assign sbox[8'he5] = 64'hD99AD986EC3543D9;
  assign sbox[8'he6] = 64'h135F13986A794C13;
  assign sbox[8'he7] = 64'h0C3C0C602824300C;
  assign sbox[8'he8] = 64'h125A12906C7E4812;
  assign sbox[8'he9] = 64'h298D2955F6DFA429;
  assign sbox[8'hea] = 64'h510851B2FBAA5951;
  assign sbox[8'heb] = 64'hB967B9A1B108DEB9;
  assign sbox[8'hec] = 64'hCFD4CF3698571BCF;
  assign sbox[8'hed] = 64'hD6A9D6FECE187FD6;
  assign sbox[8'hee] = 64'h73A273BF3744D173;
  assign sbox[8'hef] = 64'h8D838D1C09840E8D;
  
  assign sbox[8'hf0] = 64'h81BF817C21A03E81;
  assign sbox[8'hf1] = 64'h5419549AE5B14D54;
  assign sbox[8'hf2] = 64'hC0E7C04EBA7A27C0;
  assign sbox[8'hf3] = 64'hED7EED3B54B993ED;
  assign sbox[8'hf4] = 64'h4E6B4E4AB9F7254E;
  assign sbox[8'hf5] = 64'h4449441A85C10D44;
  assign sbox[8'hf6] = 64'hA701A751F552A6A7;
  assign sbox[8'hf7] = 64'h2A822A4DFCD6A82A;
  assign sbox[8'hf8] = 64'h85AB855C39BC2E85;
  assign sbox[8'hf9] = 64'h25B12535DEFB9425;
  assign sbox[8'hfa] = 64'hE659E6636E88BFE6;
  assign sbox[8'hfb] = 64'hCAC5CA1E864C0FCA;
  assign sbox[8'hfc] = 64'h7C917CC71569ED7C;
  assign sbox[8'hfd] = 64'h8B9D8B2C1D96168B;
  assign sbox[8'hfe] = 64'h5613568AE9BF4556;
  assign sbox[8'hff] = 64'h80BA807427A73A80;
  
  

endmodule // t_0
