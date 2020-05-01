//======================================================================
//
// t_1.v
// -------
// t_1 substitution.
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

module t_1(
                input wire [7 : 0]  sboxw,
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
  assign sbox[8'h00] = 64'hD1CE3E9E501FCECE;
  assign sbox[8'h01] = 64'h6DBBB1BD06D6BBBB;
  assign sbox[8'h02] = 64'h60EB0B40AB8BEBEB;
  assign sbox[8'h03] = 64'hE092E44BD9729292;
  assign sbox[8'h04] = 64'h65EA0346AC8FEAEA;
  assign sbox[8'h05] = 64'hC0CB16804B0BCBCB;
  assign sbox[8'h06] = 64'h5F13986A794C1313;
  assign sbox[8'h07] = 64'hE2C146BC7D23C1C1;
  assign sbox[8'h08] = 64'h6AE91B4CA583E9E9;
  assign sbox[8'h09] = 64'hD23ACD9CA6E83A3A;
  assign sbox[8'h0a] = 64'hA9D6FECE187FD6D6;
  assign sbox[8'h0b] = 64'h40B2F98B39F2B2B2;
  assign sbox[8'h0c] = 64'hBDD2DED6046FD2D2;
  assign sbox[8'h0d] = 64'hEA90F447D77A9090;
  assign sbox[8'h0e] = 64'h4B17B872655C1717;
  assign sbox[8'h0f] = 64'h3FF8932AD2C7F8F8;
  
  assign sbox[8'h10] = 64'h57422A91D3154242;
  assign sbox[8'h11] = 64'h4115A87E6B541515;
  assign sbox[8'h12] = 64'h13568AE9BF455656;
  assign sbox[8'h13] = 64'h5EB4C99F2BEAB4B4;
  assign sbox[8'h14] = 64'hEC650F4326896565;
  assign sbox[8'h15] = 64'h6C1CE04854701C1C;
  assign sbox[8'h16] = 64'h928834179F1A8888;
  assign sbox[8'h17] = 64'h52432297D4114343;
  assign sbox[8'h18] = 64'hF6C566A46133C5C5;
  assign sbox[8'h19] = 64'h315CDAD5896D5C5C;
  assign sbox[8'h1a] = 64'hEE36ADB482D83636;
  assign sbox[8'h1b] = 64'h68BAB9BB01D2BABA;
  assign sbox[8'h1c] = 64'h06F5FB04F1F3F5F5;
  assign sbox[8'h1d] = 64'h165782EFB8415757;
  assign sbox[8'h1e] = 64'hE6671F4F28816767;
  assign sbox[8'h1f] = 64'h838D1C09840E8D8D;
  
  assign sbox[8'h20] = 64'hF53195A697C43131;
  assign sbox[8'h21] = 64'h09F6E30EF8FFF6F6;
  assign sbox[8'h22] = 64'hE9640745218D6464;
  assign sbox[8'h23] = 64'h2558FACD957D5858;
  assign sbox[8'h24] = 64'hDC9E8463FD429E9E;
  assign sbox[8'h25] = 64'h03F4F302F6F7F4F4;
  assign sbox[8'h26] = 64'hAA220DCCEE882222;
  assign sbox[8'h27] = 64'h38AA39DB7192AAAA;
  assign sbox[8'h28] = 64'hBC758F2356C97575;
  assign sbox[8'h29] = 64'h330F78222D3C0F0F;
  assign sbox[8'h2a] = 64'h0A02100C0E080202;
  assign sbox[8'h2b] = 64'h4FB1E18130FEB1B1;
  assign sbox[8'h2c] = 64'h84DFB6F8275BDFDF;
  assign sbox[8'h2d] = 64'hC46D4F731EA96D6D;
  assign sbox[8'h2e] = 64'hA273BF3744D17373;
  assign sbox[8'h2f] = 64'h644D52B3FE294D4D;
  
  assign sbox[8'h30] = 64'h917CC71569ED7C7C;
  assign sbox[8'h31] = 64'hBE262DD4F2982626;
  assign sbox[8'h32] = 64'h962E6DE4CAB82E2E;
  assign sbox[8'h33] = 64'h0CF7EB08FFFBF7F7;
  assign sbox[8'h34] = 64'h2808403038200808;
  assign sbox[8'h35] = 64'h345DD2D38E695D5D;
  assign sbox[8'h36] = 64'h49441A85C10D4444;
  assign sbox[8'h37] = 64'hC63EED84BAF83E3E;
  assign sbox[8'h38] = 64'hD99F8C65FA469F9F;
  assign sbox[8'h39] = 64'h4414A0786C501414;
  assign sbox[8'h3a] = 64'hCFC80E8A4207C8C8;
  assign sbox[8'h3b] = 64'h2CAE19C36D82AEAE;
  assign sbox[8'h3c] = 64'h19549AE5B14D5454;
  assign sbox[8'h3d] = 64'h5010806070401010;
  assign sbox[8'h3e] = 64'h9FD88EEA3247D8D8;
  assign sbox[8'h3f] = 64'h76BC89AF13CABCBC;
  
  assign sbox[8'h40] = 64'h721AD05C46681A1A;
  assign sbox[8'h41] = 64'hDA6B7F670CB16B6B;
  assign sbox[8'h42] = 64'hD0696F6B02B96969;
  assign sbox[8'h43] = 64'h18F3CB10E3EBF3F3;
  assign sbox[8'h44] = 64'h73BD81A914CEBDBD;
  assign sbox[8'h45] = 64'hFF3385AA99CC3333;
  assign sbox[8'h46] = 64'h3DAB31DD7696ABAB;
  assign sbox[8'h47] = 64'h35FA8326DCCFFAFA;
  assign sbox[8'h48] = 64'hB2D1C6DC0D63D1D1;
  assign sbox[8'h49] = 64'hCD9BAC7DE6569B9B;
  assign sbox[8'h4a] = 64'hD568676D05BD6868;
  assign sbox[8'h4b] = 64'h6B4E4AB9F7254E4E;
  assign sbox[8'h4c] = 64'h4E16B07462581616;
  assign sbox[8'h4d] = 64'hFB95DC59CC6E9595;
  assign sbox[8'h4e] = 64'hEF91FC41D07E9191;
  assign sbox[8'h4f] = 64'h71EE235EB09FEEEE;
  
  assign sbox[8'h50] = 64'h614C5AB5F92D4C4C;
  assign sbox[8'h51] = 64'hF2633F5734916363;
  assign sbox[8'h52] = 64'h8C8E04038D028E8E;
  assign sbox[8'h53] = 64'h2A5BE2C79C715B5B;
  assign sbox[8'h54] = 64'hDBCC2E925E17CCCC;
  assign sbox[8'h55] = 64'hCC3CFD88B4F03C3C;
  assign sbox[8'h56] = 64'h7D19C8564F641919;
  assign sbox[8'h57] = 64'h1FA161E140BEA1A1;
  assign sbox[8'h58] = 64'hBF817C21A03E8181;
  assign sbox[8'h59] = 64'h704972ABE2394949;
  assign sbox[8'h5a] = 64'h8A7BFF077CF17B7B;
  assign sbox[8'h5b] = 64'h9AD986EC3543D9D9;
  assign sbox[8'h5c] = 64'hCE6F5F7F10A16F6F;
  assign sbox[8'h5d] = 64'hEB37A5B285DC3737;
  assign sbox[8'h5e] = 64'hFD60275D3D9D6060;
  assign sbox[8'h5f] = 64'hC5CA1E864C0FCACA;
  
  assign sbox[8'h60] = 64'h5CE76B688FBBE7E7;
  assign sbox[8'h61] = 64'h872B45FAD1AC2B2B;
  assign sbox[8'h62] = 64'h75487AADE53D4848;
  assign sbox[8'h63] = 64'h2EFDBB34C9D3FDFD;
  assign sbox[8'h64] = 64'hF496C453C5629696;
  assign sbox[8'h65] = 64'h4C451283C6094545;
  assign sbox[8'h66] = 64'h2BFCB332CED7FCFC;
  assign sbox[8'h67] = 64'h5841329BDA194141;
  assign sbox[8'h68] = 64'h5A12906C7E481212;
  assign sbox[8'h69] = 64'h390D682E23340D0D;
  assign sbox[8'h6a] = 64'h8079EF0B72F97979;
  assign sbox[8'h6b] = 64'h56E57B6481B3E5E5;
  assign sbox[8'h6c] = 64'h97893C11981E8989;
  assign sbox[8'h6d] = 64'h868C140F830A8C8C;
  assign sbox[8'h6e] = 64'h48E34B7093ABE3E3;
  assign sbox[8'h6f] = 64'hA0201DC0E0802020;
  
  assign sbox[8'h70] = 64'hF0309DA090C03030;
  assign sbox[8'h71] = 64'h8BDCAEF22E57DCDC;
  assign sbox[8'h72] = 64'h51B7D19522E6B7B7;
  assign sbox[8'h73] = 64'hC16C477519AD6C6C;
  assign sbox[8'h74] = 64'h7F4A6AA1EB354A4A;
  assign sbox[8'h75] = 64'h5BB5C1992CEEB5B5;
  assign sbox[8'h76] = 64'hC33FE582BDFC3F3F;
  assign sbox[8'h77] = 64'hF197CC55C2669797;
  assign sbox[8'h78] = 64'hA3D4EEC21677D4D4;
  assign sbox[8'h79] = 64'hF762375133956262;
  assign sbox[8'h7a] = 64'h992D75EEC3B42D2D;
  assign sbox[8'h7b] = 64'h1E06301412180606;
  assign sbox[8'h7c] = 64'h0EA449FF5BAAA4A4;
  assign sbox[8'h7d] = 64'h0BA541F95CAEA5A5;
  assign sbox[8'h7e] = 64'hB5836C2DAE368383;
  assign sbox[8'h7f] = 64'h3E5FC2DF80615F5F;
  
  assign sbox[8'h80] = 64'h822A4DFCD6A82A2A;
  assign sbox[8'h81] = 64'h95DA9EE63C4FDADA;
  assign sbox[8'h82] = 64'hCAC9068C4503C9C9;
  assign sbox[8'h83] = 64'h0000000000000000;
  assign sbox[8'h84] = 64'h9B7ED71967E57E7E;
  assign sbox[8'h85] = 64'h10A279EB49B2A2A2;
  assign sbox[8'h86] = 64'h1C5592E3B6495555;
  assign sbox[8'h87] = 64'h79BF91A51AC6BFBF;
  assign sbox[8'h88] = 64'h5511886677441111;
  assign sbox[8'h89] = 64'hA6D5E6C41173D5D5;
  assign sbox[8'h8a] = 64'hD69C946FF34A9C9C;
  assign sbox[8'h8b] = 64'hD4CF3698571BCFCF;
  assign sbox[8'h8c] = 64'h360E70242A380E0E;
  assign sbox[8'h8d] = 64'h220A503C36280A0A;
  assign sbox[8'h8e] = 64'hC93DF58EB3F43D3D;
  assign sbox[8'h8f] = 64'h0851B2FBAA595151;
  
  assign sbox[8'h90] = 64'h947DCF136EE97D7D;
  assign sbox[8'h91] = 64'hE593EC4DDE769393;
  assign sbox[8'h92] = 64'h771BD85A416C1B1B;
  assign sbox[8'h93] = 64'h21FEA33EC0DFFEFE;
  assign sbox[8'h94] = 64'hF3C46EA26637C4C4;
  assign sbox[8'h95] = 64'h4647028FC8014747;
  assign sbox[8'h96] = 64'h2D0948363F240909;
  assign sbox[8'h97] = 64'hA4864433B5228686;
  assign sbox[8'h98] = 64'h270B583A312C0B0B;
  assign sbox[8'h99] = 64'h898F0C058A068F8F;
  assign sbox[8'h9a] = 64'hD39D9C69F44E9D9D;
  assign sbox[8'h9b] = 64'hDF6A77610BB56A6A;
  assign sbox[8'h9c] = 64'h1B073812151C0707;
  assign sbox[8'h9d] = 64'h67B9A1B108DEB9B9;
  assign sbox[8'h9e] = 64'h4AB0E98737FAB0B0;
  assign sbox[8'h9f] = 64'hC298B477EF5A9898;
  
  assign sbox[8'ha0] = 64'h7818C05048601818;
  assign sbox[8'ha1] = 64'hFA328DAC9EC83232;
  assign sbox[8'ha2] = 64'hA871AF3B4AD97171;
  assign sbox[8'ha3] = 64'h7A4B62A7EC314B4B;
  assign sbox[8'ha4] = 64'h74EF2B58B79BEFEF;
  assign sbox[8'ha5] = 64'hD73BC59AA1EC3B3B;
  assign sbox[8'ha6] = 64'hAD70A73D4DDD7070;
  assign sbox[8'ha7] = 64'h1AA069E747BAA0A0;
  assign sbox[8'ha8] = 64'h53E4736286B7E4E4;
  assign sbox[8'ha9] = 64'h5D403A9DDD1D4040;
  assign sbox[8'haa] = 64'h24FFAB38C7DBFFFF;
  assign sbox[8'hab] = 64'hE8C356B0732BC3C3;
  assign sbox[8'hac] = 64'h37A921D1789EA9A9;
  assign sbox[8'had] = 64'h59E6636E88BFE6E6;
  assign sbox[8'hae] = 64'h8578E70D75FD7878;
  assign sbox[8'haf] = 64'h3AF99B2CD5C3F9F9;
  
  assign sbox[8'hb0] = 64'h9D8B2C1D96168B8B;
  assign sbox[8'hb1] = 64'h43460A89CF054646;
  assign sbox[8'hb2] = 64'hBA807427A73A8080;
  assign sbox[8'hb3] = 64'h661EF0445A781E1E;
  assign sbox[8'hb4] = 64'hD838DD90A8E03838;
  assign sbox[8'hb5] = 64'h42E15B7C9DA3E1E1;
  assign sbox[8'hb6] = 64'h62B8A9B70FDAB8B8;
  assign sbox[8'hb7] = 64'h32A829D77F9AA8A8;
  assign sbox[8'hb8] = 64'h47E0537A9AA7E0E0;
  assign sbox[8'hb9] = 64'h3C0C602824300C0C;
  assign sbox[8'hba] = 64'hAF2305CAE98C2323;
  assign sbox[8'hbb] = 64'hB37697295FC57676;
  assign sbox[8'hbc] = 64'h691DE84E53741D1D;
  assign sbox[8'hbd] = 64'hB12535DEFB942525;
  assign sbox[8'hbe] = 64'hB4243DD8FC902424;
  assign sbox[8'hbf] = 64'h1105281E1B140505;
  
  assign sbox[8'hc0] = 64'h12F1DB1CEDE3F1F1;
  assign sbox[8'hc1] = 64'hCB6E577917A56E6E;
  assign sbox[8'hc2] = 64'hFE94D45FCB6A9494;
  assign sbox[8'hc3] = 64'h88285DF0D8A02828;
  assign sbox[8'hc4] = 64'hC89AA47BE1529A9A;
  assign sbox[8'hc5] = 64'hAE84543FBB2A8484;
  assign sbox[8'hc6] = 64'h6FE8134AA287E8E8;
  assign sbox[8'hc7] = 64'h15A371ED4EB6A3A3;
  assign sbox[8'hc8] = 64'h6E4F42BFF0214F4F;
  assign sbox[8'hc9] = 64'hB6779F2F58C17777;
  assign sbox[8'hca] = 64'hB8D3D6D0036BD3D3;
  assign sbox[8'hcb] = 64'hAB855C39BC2E8585;
  assign sbox[8'hcc] = 64'h4DE2437694AFE2E2;
  assign sbox[8'hcd] = 64'h0752AAF1A3555252;
  assign sbox[8'hce] = 64'h1DF2C316E4EFF2F2;
  assign sbox[8'hcf] = 64'hB082642BA9328282;
  
  assign sbox[8'hd0] = 64'h0D50BAFDAD5D5050;
  assign sbox[8'hd1] = 64'h8F7AF7017BF57A7A;
  assign sbox[8'hd2] = 64'h932F65E2CDBC2F2F;
  assign sbox[8'hd3] = 64'hB974872551CD7474;
  assign sbox[8'hd4] = 64'h0253A2F7A4515353;
  assign sbox[8'hd5] = 64'h45B3F18D3EF6B3B3;
  assign sbox[8'hd6] = 64'hF8612F5B3A996161;
  assign sbox[8'hd7] = 64'h29AF11C56A86AFAF;
  assign sbox[8'hd8] = 64'hDD39D596AFE43939;
  assign sbox[8'hd9] = 64'hE135B5BE8BD43535;
  assign sbox[8'hda] = 64'h81DEBEFE205FDEDE;
  assign sbox[8'hdb] = 64'hDECD26945913CDCD;
  assign sbox[8'hdc] = 64'h631FF8425D7C1F1F;
  assign sbox[8'hdd] = 64'hC799BC71E85E9999;
  assign sbox[8'hde] = 64'h26AC09CF638AACAC;
  assign sbox[8'hdf] = 64'h23AD01C9648EADAD;
  
  assign sbox[8'he0] = 64'hA772B73143D57272;
  assign sbox[8'he1] = 64'h9C2C7DE8C4B02C2C;
  assign sbox[8'he2] = 64'h8EDDA6F42953DDDD;
  assign sbox[8'he3] = 64'hB7D0CEDA0A67D0D0;
  assign sbox[8'he4] = 64'hA1874C35B2268787;
  assign sbox[8'he5] = 64'h7CBE99A31DC2BEBE;
  assign sbox[8'he6] = 64'h3B5ECAD987655E5E;
  assign sbox[8'he7] = 64'h04A659F355A2A6A6;
  assign sbox[8'he8] = 64'h7BEC3352BE97ECEC;
  assign sbox[8'he9] = 64'h140420181C100404;
  assign sbox[8'hea] = 64'hF9C67EAE683FC6C6;
  assign sbox[8'heb] = 64'h0F03180A090C0303;
  assign sbox[8'hec] = 64'hE434BDB88CD03434;
  assign sbox[8'hed] = 64'h30FB8B20DBCBFBFB;
  assign sbox[8'hee] = 64'h90DB96E03B4BDBDB;
  assign sbox[8'hef] = 64'h2059F2CB92795959;
  
  assign sbox[8'hf0] = 64'h54B6D99325E2B6B6;
  assign sbox[8'hf1] = 64'hEDC25EB6742FC2C2;
  assign sbox[8'hf2] = 64'h0501080607040101;
  assign sbox[8'hf3] = 64'h17F0D31AEAE7F0F0;
  assign sbox[8'hf4] = 64'h2F5AEAC19B755A5A;
  assign sbox[8'hf5] = 64'h7EED3B54B993EDED;
  assign sbox[8'hf6] = 64'h01A751F552A6A7A7;
  assign sbox[8'hf7] = 64'hE36617492F856666;
  assign sbox[8'hf8] = 64'hA52115C6E7842121;
  assign sbox[8'hf9] = 64'h9E7FDF1F60E17F7F;
  assign sbox[8'hfa] = 64'h988A241B91128A8A;
  assign sbox[8'hfb] = 64'hBB2725D2F59C2727;
  assign sbox[8'hfc] = 64'hFCC776A86F3BC7C7;
  assign sbox[8'hfd] = 64'hE7C04EBA7A27C0C0;
  assign sbox[8'hfe] = 64'h8D2955F6DFA42929;
  assign sbox[8'hff] = 64'hACD7F6C81F7BD7D7;
  
  

endmodule // t_1
