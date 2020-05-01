//======================================================================
//
// t_2.v
// -------
// t_2 substitution.
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

module t_2(
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
  assign sbox[8'h00] = 64'h93EC4DDE769393E5;
  assign sbox[8'h01] = 64'hD986EC3543D9D99A;
  assign sbox[8'h02] = 64'h9AA47BE1529A9AC8;
  assign sbox[8'h03] = 64'hB5C1992CEEB5B55B;
  assign sbox[8'h04] = 64'h98B477EF5A9898C2;
  assign sbox[8'h05] = 64'h220DCCEE882222AA;
  assign sbox[8'h06] = 64'h451283C60945454C;
  assign sbox[8'h07] = 64'hFCB332CED7FCFC2B;
  assign sbox[8'h08] = 64'hBAB9BB01D2BABA68;
  assign sbox[8'h09] = 64'h6A77610BB56A6ADF;
  assign sbox[8'h0a] = 64'hDFB6F8275BDFDF84;
  assign sbox[8'h0b] = 64'h02100C0E0802020A;
  assign sbox[8'h0c] = 64'h9F8C65FA469F9FD9;
  assign sbox[8'h0d] = 64'hDCAEF22E57DCDC8B;
  assign sbox[8'h0e] = 64'h51B2FBAA59515108;
  assign sbox[8'h0f] = 64'h59F2CB9279595920;
  
  assign sbox[8'h10] = 64'h4A6AA1EB354A4A7F;
  assign sbox[8'h11] = 64'h17B872655C17174B;
  assign sbox[8'h12] = 64'h2B45FAD1AC2B2B87;
  assign sbox[8'h13] = 64'hC25EB6742FC2C2ED;
  assign sbox[8'h14] = 64'h94D45FCB6A9494FE;
  assign sbox[8'h15] = 64'hF4F302F6F7F4F403;
  assign sbox[8'h16] = 64'hBBB1BD06D6BBBB6D;
  assign sbox[8'h17] = 64'hA371ED4EB6A3A315;
  assign sbox[8'h18] = 64'h62375133956262F7;
  assign sbox[8'h19] = 64'hE4736286B7E4E453;
  assign sbox[8'h1a] = 64'h71AF3B4AD97171A8;
  assign sbox[8'h1b] = 64'hD4EEC21677D4D4A3;
  assign sbox[8'h1c] = 64'hCD26945913CDCDDE;
  assign sbox[8'h1d] = 64'h70A73D4DDD7070AD;
  assign sbox[8'h1e] = 64'h16B074625816164E;
  assign sbox[8'h1f] = 64'hE15B7C9DA3E1E142;
  
  assign sbox[8'h20] = 64'h4972ABE239494970;
  assign sbox[8'h21] = 64'h3CFD88B4F03C3CCC;
  assign sbox[8'h22] = 64'hC04EBA7A27C0C0E7;
  assign sbox[8'h23] = 64'hD88EEA3247D8D89F;
  assign sbox[8'h24] = 64'h5CDAD5896D5C5C31;
  assign sbox[8'h25] = 64'h9BAC7DE6569B9BCD;
  assign sbox[8'h26] = 64'hAD01C9648EADAD23;
  assign sbox[8'h27] = 64'h855C39BC2E8585AB;
  assign sbox[8'h28] = 64'h53A2F7A451535302;
  assign sbox[8'h29] = 64'hA161E140BEA1A11F;
  assign sbox[8'h2a] = 64'h7AF7017BF57A7A8F;
  assign sbox[8'h2b] = 64'hC80E8A4207C8C8CF;
  assign sbox[8'h2c] = 64'h2D75EEC3B42D2D99;
  assign sbox[8'h2d] = 64'hE0537A9AA7E0E047;
  assign sbox[8'h2e] = 64'hD1C6DC0D63D1D1B2;
  assign sbox[8'h2f] = 64'h72B73143D57272A7;
  
  assign sbox[8'h30] = 64'hA659F355A2A6A604;
  assign sbox[8'h31] = 64'h2C7DE8C4B02C2C9C;
  assign sbox[8'h32] = 64'hC46EA26637C4C4F3;
  assign sbox[8'h33] = 64'hE34B7093ABE3E348;
  assign sbox[8'h34] = 64'h7697295FC57676B3;
  assign sbox[8'h35] = 64'h78E70D75FD787885;
  assign sbox[8'h36] = 64'hB7D19522E6B7B751;
  assign sbox[8'h37] = 64'hB4C99F2BEAB4B45E;
  assign sbox[8'h38] = 64'h0948363F2409092D;
  assign sbox[8'h39] = 64'h3BC59AA1EC3B3BD7;
  assign sbox[8'h3a] = 64'h0E70242A380E0E36;
  assign sbox[8'h3b] = 64'h41329BDA19414158;
  assign sbox[8'h3c] = 64'h4C5AB5F92D4C4C61;
  assign sbox[8'h3d] = 64'hDEBEFE205FDEDE81;
  assign sbox[8'h3e] = 64'hB2F98B39F2B2B240;
  assign sbox[8'h3f] = 64'h90F447D77A9090EA;
  
  assign sbox[8'h40] = 64'h2535DEFB942525B1;
  assign sbox[8'h41] = 64'hA541F95CAEA5A50B;
  assign sbox[8'h42] = 64'hD7F6C81F7BD7D7AC;
  assign sbox[8'h43] = 64'h03180A090C03030F;
  assign sbox[8'h44] = 64'h1188667744111155;
  assign sbox[8'h45] = 64'h0000000000000000;
  assign sbox[8'h46] = 64'hC356B0732BC3C3E8;
  assign sbox[8'h47] = 64'h2E6DE4CAB82E2E96;
  assign sbox[8'h48] = 64'h92E44BD9729292E0;
  assign sbox[8'h49] = 64'hEF2B58B79BEFEF74;
  assign sbox[8'h4a] = 64'h4E4AB9F7254E4E6B;
  assign sbox[8'h4b] = 64'h12906C7E4812125A;
  assign sbox[8'h4c] = 64'h9D9C69F44E9D9DD3;
  assign sbox[8'h4d] = 64'h7DCF136EE97D7D94;
  assign sbox[8'h4e] = 64'hCB16804B0BCBCBC0;
  assign sbox[8'h4f] = 64'h35B5BE8BD43535E1;
  
  assign sbox[8'h50] = 64'h1080607040101050;
  assign sbox[8'h51] = 64'hD5E6C41173D5D5A6;
  assign sbox[8'h52] = 64'h4F42BFF0214F4F6E;
  assign sbox[8'h53] = 64'h9E8463FD429E9EDC;
  assign sbox[8'h54] = 64'h4D52B3FE294D4D64;
  assign sbox[8'h55] = 64'hA921D1789EA9A937;
  assign sbox[8'h56] = 64'h5592E3B64955551C;
  assign sbox[8'h57] = 64'hC67EAE683FC6C6F9;
  assign sbox[8'h58] = 64'hD0CEDA0A67D0D0B7;
  assign sbox[8'h59] = 64'h7BFF077CF17B7B8A;
  assign sbox[8'h5a] = 64'h18C0504860181878;
  assign sbox[8'h5b] = 64'h97CC55C2669797F1;
  assign sbox[8'h5c] = 64'hD3D6D0036BD3D3B8;
  assign sbox[8'h5d] = 64'h36ADB482D83636EE;
  assign sbox[8'h5e] = 64'hE6636E88BFE6E659;
  assign sbox[8'h5f] = 64'h487AADE53D484875;
  
  assign sbox[8'h60] = 64'h568AE9BF45565613;
  assign sbox[8'h61] = 64'h817C21A03E8181BF;
  assign sbox[8'h62] = 64'h8F0C058A068F8F89;
  assign sbox[8'h63] = 64'h779F2F58C17777B6;
  assign sbox[8'h64] = 64'hCC2E925E17CCCCDB;
  assign sbox[8'h65] = 64'h9C946FF34A9C9CD6;
  assign sbox[8'h66] = 64'hB9A1B108DEB9B967;
  assign sbox[8'h67] = 64'hE2437694AFE2E24D;
  assign sbox[8'h68] = 64'hAC09CF638AACAC26;
  assign sbox[8'h69] = 64'hB8A9B70FDAB8B862;
  assign sbox[8'h6a] = 64'h2F65E2CDBC2F2F93;
  assign sbox[8'h6b] = 64'h15A87E6B54151541;
  assign sbox[8'h6c] = 64'hA449FF5BAAA4A40E;
  assign sbox[8'h6d] = 64'h7CC71569ED7C7C91;
  assign sbox[8'h6e] = 64'hDA9EE63C4FDADA95;
  assign sbox[8'h6f] = 64'h38DD90A8E03838D8;
  
  assign sbox[8'h70] = 64'h1EF0445A781E1E66;
  assign sbox[8'h71] = 64'h0B583A312C0B0B27;
  assign sbox[8'h72] = 64'h05281E1B14050511;
  assign sbox[8'h73] = 64'hD6FECE187FD6D6A9;
  assign sbox[8'h74] = 64'h14A0786C50141444;
  assign sbox[8'h75] = 64'h6E577917A56E6ECB;
  assign sbox[8'h76] = 64'h6C477519AD6C6CC1;
  assign sbox[8'h77] = 64'h7ED71967E57E7E9B;
  assign sbox[8'h78] = 64'h6617492F856666E3;
  assign sbox[8'h79] = 64'hFDBB34C9D3FDFD2E;
  assign sbox[8'h7a] = 64'hB1E18130FEB1B14F;
  assign sbox[8'h7b] = 64'hE57B6481B3E5E556;
  assign sbox[8'h7c] = 64'h60275D3D9D6060FD;
  assign sbox[8'h7d] = 64'hAF11C56A86AFAF29;
  assign sbox[8'h7e] = 64'h5ECAD987655E5E3B;
  assign sbox[8'h7f] = 64'h3385AA99CC3333FF;
  
  assign sbox[8'h80] = 64'h874C35B2268787A1;
  assign sbox[8'h81] = 64'hC9068C4503C9C9CA;
  assign sbox[8'h82] = 64'hF0D31AEAE7F0F017;
  assign sbox[8'h83] = 64'h5DD2D38E695D5D34;
  assign sbox[8'h84] = 64'h6D4F731EA96D6DC4;
  assign sbox[8'h85] = 64'h3FE582BDFC3F3FC3;
  assign sbox[8'h86] = 64'h8834179F1A888892;
  assign sbox[8'h87] = 64'h8D1C09840E8D8D83;
  assign sbox[8'h88] = 64'hC776A86F3BC7C7FC;
  assign sbox[8'h89] = 64'hF7EB08FFFBF7F70C;
  assign sbox[8'h8a] = 64'h1DE84E53741D1D69;
  assign sbox[8'h8b] = 64'hE91B4CA583E9E96A;
  assign sbox[8'h8c] = 64'hEC3352BE97ECEC7B;
  assign sbox[8'h8d] = 64'hED3B54B993EDED7E;
  assign sbox[8'h8e] = 64'h807427A73A8080BA;
  assign sbox[8'h8f] = 64'h2955F6DFA429298D;
  
  assign sbox[8'h90] = 64'h2725D2F59C2727BB;
  assign sbox[8'h91] = 64'hCF3698571BCFCFD4;
  assign sbox[8'h92] = 64'h99BC71E85E9999C7;
  assign sbox[8'h93] = 64'hA829D77F9AA8A832;
  assign sbox[8'h94] = 64'h50BAFDAD5D50500D;
  assign sbox[8'h95] = 64'h0F78222D3C0F0F33;
  assign sbox[8'h96] = 64'h37A5B285DC3737EB;
  assign sbox[8'h97] = 64'h243DD8FC902424B4;
  assign sbox[8'h98] = 64'h285DF0D8A0282888;
  assign sbox[8'h99] = 64'h309DA090C03030F0;
  assign sbox[8'h9a] = 64'h95DC59CC6E9595FB;
  assign sbox[8'h9b] = 64'hD2DED6046FD2D2BD;
  assign sbox[8'h9c] = 64'h3EED84BAF83E3EC6;
  assign sbox[8'h9d] = 64'h5BE2C79C715B5B2A;
  assign sbox[8'h9e] = 64'h403A9DDD1D40405D;
  assign sbox[8'h9f] = 64'h836C2DAE368383B5;
  
  assign sbox[8'ha0] = 64'hB3F18D3EF6B3B345;
  assign sbox[8'ha1] = 64'h696F6B02B96969D0;
  assign sbox[8'ha2] = 64'h5782EFB841575716;
  assign sbox[8'ha3] = 64'h1FF8425D7C1F1F63;
  assign sbox[8'ha4] = 64'h073812151C07071B;
  assign sbox[8'ha5] = 64'h1CE04854701C1C6C;
  assign sbox[8'ha6] = 64'h8A241B91128A8A98;
  assign sbox[8'ha7] = 64'hBC89AF13CABCBC76;
  assign sbox[8'ha8] = 64'h201DC0E0802020A0;
  assign sbox[8'ha9] = 64'hEB0B40AB8BEBEB60;
  assign sbox[8'haa] = 64'hCE3E9E501FCECED1;
  assign sbox[8'hab] = 64'h8E04038D028E8E8C;
  assign sbox[8'hac] = 64'hAB31DD7696ABAB3D;
  assign sbox[8'had] = 64'hEE235EB09FEEEE71;
  assign sbox[8'hae] = 64'h3195A697C43131F5;
  assign sbox[8'haf] = 64'hA279EB49B2A2A210;
  
  assign sbox[8'hb0] = 64'h73BF3744D17373A2;
  assign sbox[8'hb1] = 64'hF99B2CD5C3F9F93A;
  assign sbox[8'hb2] = 64'hCA1E864C0FCACAC5;
  assign sbox[8'hb3] = 64'h3ACD9CA6E83A3AD2;
  assign sbox[8'hb4] = 64'h1AD05C46681A1A72;
  assign sbox[8'hb5] = 64'hFB8B20DBCBFBFB30;
  assign sbox[8'hb6] = 64'h0D682E23340D0D39;
  assign sbox[8'hb7] = 64'hC146BC7D23C1C1E2;
  assign sbox[8'hb8] = 64'hFEA33EC0DFFEFE21;
  assign sbox[8'hb9] = 64'hFA8326DCCFFAFA35;
  assign sbox[8'hba] = 64'hF2C316E4EFF2F21D;
  assign sbox[8'hbb] = 64'h6F5F7F10A16F6FCE;
  assign sbox[8'hbc] = 64'hBD81A914CEBDBD73;
  assign sbox[8'hbd] = 64'h96C453C5629696F4;
  assign sbox[8'hbe] = 64'hDDA6F42953DDDD8E;
  assign sbox[8'hbf] = 64'h432297D411434352;
  
  assign sbox[8'hc0] = 64'h52AAF1A355525207;
  assign sbox[8'hc1] = 64'hB6D99325E2B6B654;
  assign sbox[8'hc2] = 64'h0840303820080828;
  assign sbox[8'hc3] = 64'hF3CB10E3EBF3F318;
  assign sbox[8'hc4] = 64'hAE19C36D82AEAE2C;
  assign sbox[8'hc5] = 64'hBE99A31DC2BEBE7C;
  assign sbox[8'hc6] = 64'h19C8564F6419197D;
  assign sbox[8'hc7] = 64'h893C11981E898997;
  assign sbox[8'hc8] = 64'h328DAC9EC83232FA;
  assign sbox[8'hc9] = 64'h262DD4F2982626BE;
  assign sbox[8'hca] = 64'hB0E98737FAB0B04A;
  assign sbox[8'hcb] = 64'hEA0346AC8FEAEA65;
  assign sbox[8'hcc] = 64'h4B62A7EC314B4B7A;
  assign sbox[8'hcd] = 64'h640745218D6464E9;
  assign sbox[8'hce] = 64'h84543FBB2A8484AE;
  assign sbox[8'hcf] = 64'h82642BA9328282B0;
  
  assign sbox[8'hd0] = 64'h6B7F670CB16B6BDA;
  assign sbox[8'hd1] = 64'hF5FB04F1F3F5F506;
  assign sbox[8'hd2] = 64'h79EF0B72F9797980;
  assign sbox[8'hd3] = 64'hBF91A51AC6BFBF79;
  assign sbox[8'hd4] = 64'h0108060704010105;
  assign sbox[8'hd5] = 64'h5FC2DF80615F5F3E;
  assign sbox[8'hd6] = 64'h758F2356C97575BC;
  assign sbox[8'hd7] = 64'h633F5734916363F2;
  assign sbox[8'hd8] = 64'h1BD85A416C1B1B77;
  assign sbox[8'hd9] = 64'h2305CAE98C2323AF;
  assign sbox[8'hda] = 64'h3DF58EB3F43D3DC9;
  assign sbox[8'hdb] = 64'h68676D05BD6868D5;
  assign sbox[8'hdc] = 64'h2A4DFCD6A82A2A82;
  assign sbox[8'hdd] = 64'h650F4326896565EC;
  assign sbox[8'hde] = 64'hE8134AA287E8E86F;
  assign sbox[8'hdf] = 64'h91FC41D07E9191EF;
  
  assign sbox[8'he0] = 64'hF6E30EF8FFF6F609;
  assign sbox[8'he1] = 64'hFFAB38C7DBFFFF24;
  assign sbox[8'he2] = 64'h13986A794C13135F;
  assign sbox[8'he3] = 64'h58FACD957D585825;
  assign sbox[8'he4] = 64'hF1DB1CEDE3F1F112;
  assign sbox[8'he5] = 64'h47028FC801474746;
  assign sbox[8'he6] = 64'h0A503C36280A0A22;
  assign sbox[8'he7] = 64'h7FDF1F60E17F7F9E;
  assign sbox[8'he8] = 64'hC566A46133C5C5F6;
  assign sbox[8'he9] = 64'hA751F552A6A7A701;
  assign sbox[8'hea] = 64'hE76B688FBBE7E75C;
  assign sbox[8'heb] = 64'h612F5B3A996161F8;
  assign sbox[8'hec] = 64'h5AEAC19B755A5A2F;
  assign sbox[8'hed] = 64'h063014121806061E;
  assign sbox[8'hee] = 64'h460A89CF05464643;
  assign sbox[8'hef] = 64'h441A85C10D444449;
  
  assign sbox[8'hf0] = 64'h422A91D315424257;
  assign sbox[8'hf1] = 64'h0420181C10040414;
  assign sbox[8'hf2] = 64'hA069E747BAA0A01A;
  assign sbox[8'hf3] = 64'hDB96E03B4BDBDB90;
  assign sbox[8'hf4] = 64'h39D596AFE43939DD;
  assign sbox[8'hf5] = 64'h864433B5228686A4;
  assign sbox[8'hf6] = 64'h549AE5B14D545419;
  assign sbox[8'hf7] = 64'hAA39DB7192AAAA38;
  assign sbox[8'hf8] = 64'h8C140F830A8C8C86;
  assign sbox[8'hf9] = 64'h34BDB88CD03434E4;
  assign sbox[8'hfa] = 64'h2115C6E7842121A5;
  assign sbox[8'hfb] = 64'h8B2C1D96168B8B9D;
  assign sbox[8'hfc] = 64'hF8932AD2C7F8F83F;
  assign sbox[8'hfd] = 64'h0C602824300C0C3C;
  assign sbox[8'hfe] = 64'h74872551CD7474B9;
  assign sbox[8'hff] = 64'h671F4F28816767E6;


endmodule //t_2
