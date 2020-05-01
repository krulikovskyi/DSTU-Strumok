//======================================================================
//
// t_7.v
// -------
// t_7 substitution.
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

module t_7(
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
  
  assign sbox[8'h00] = 64'h6868D568676D05BD;
  assign sbox[8'h01] = 64'h8D8D838D1C09840E;
  assign sbox[8'h02] = 64'hCACAC5CA1E864C0F;
  assign sbox[8'h03] = 64'h4D4D644D52B3FE29;
  assign sbox[8'h04] = 64'h7373A273BF3744D1;
  assign sbox[8'h05] = 64'h4B4B7A4B62A7EC31;
  assign sbox[8'h06] = 64'h4E4E6B4E4AB9F725;
  assign sbox[8'h07] = 64'h2A2A822A4DFCD6A8;
  assign sbox[8'h08] = 64'hD4D4A3D4EEC21677;
  assign sbox[8'h09] = 64'h52520752AAF1A355;
  assign sbox[8'h0a] = 64'h2626BE262DD4F298;
  assign sbox[8'h0b] = 64'hB3B345B3F18D3EF6;
  assign sbox[8'h0c] = 64'h545419549AE5B14D;
  assign sbox[8'h0d] = 64'h1E1E661EF0445A78;
  assign sbox[8'h0e] = 64'h19197D19C8564F64;
  assign sbox[8'h0f] = 64'h1F1F631FF8425D7C;
  
  assign sbox[8'h10] = 64'h2222AA220DCCEE88;
  assign sbox[8'h11] = 64'h03030F03180A090C;
  assign sbox[8'h12] = 64'h464643460A89CF05;
  assign sbox[8'h13] = 64'h3D3DC93DF58EB3F4;
  assign sbox[8'h14] = 64'h2D2D992D75EEC3B4;
  assign sbox[8'h15] = 64'h4A4A7F4A6AA1EB35;
  assign sbox[8'h16] = 64'h53530253A2F7A451;
  assign sbox[8'h17] = 64'h8383B5836C2DAE36;
  assign sbox[8'h18] = 64'h13135F13986A794C;
  assign sbox[8'h19] = 64'h8A8A988A241B9112;
  assign sbox[8'h1a] = 64'hB7B751B7D19522E6;
  assign sbox[8'h1b] = 64'hD5D5A6D5E6C41173;
  assign sbox[8'h1c] = 64'h2525B12535DEFB94;
  assign sbox[8'h1d] = 64'h79798079EF0B72F9;
  assign sbox[8'h1e] = 64'hF5F506F5FB04F1F3;
  assign sbox[8'h1f] = 64'hBDBD73BD81A914CE;
  
  assign sbox[8'h20] = 64'h58582558FACD957D;
  assign sbox[8'h21] = 64'h2F2F932F65E2CDBC;
  assign sbox[8'h22] = 64'h0D0D390D682E2334;
  assign sbox[8'h23] = 64'h02020A02100C0E08;
  assign sbox[8'h24] = 64'hEDED7EED3B54B993;
  assign sbox[8'h25] = 64'h51510851B2FBAA59;
  assign sbox[8'h26] = 64'h9E9EDC9E8463FD42;
  assign sbox[8'h27] = 64'h1111551188667744;
  assign sbox[8'h28] = 64'hF2F21DF2C316E4EF;
  assign sbox[8'h29] = 64'h3E3EC63EED84BAF8;
  assign sbox[8'h2a] = 64'h55551C5592E3B649;
  assign sbox[8'h2b] = 64'h5E5E3B5ECAD98765;
  assign sbox[8'h2c] = 64'hD1D1B2D1C6DC0D63;
  assign sbox[8'h2d] = 64'h16164E16B0746258;
  assign sbox[8'h2e] = 64'h3C3CCC3CFD88B4F0;
  assign sbox[8'h2f] = 64'h6666E36617492F85;
  
  assign sbox[8'h30] = 64'h7070AD70A73D4DDD;
  assign sbox[8'h31] = 64'h5D5D345DD2D38E69;
  assign sbox[8'h32] = 64'hF3F318F3CB10E3EB;
  assign sbox[8'h33] = 64'h45454C451283C609;
  assign sbox[8'h34] = 64'h40405D403A9DDD1D;
  assign sbox[8'h35] = 64'hCCCCDBCC2E925E17;
  assign sbox[8'h36] = 64'hE8E86FE8134AA287;
  assign sbox[8'h37] = 64'h9494FE94D45FCB6A;
  assign sbox[8'h38] = 64'h565613568AE9BF45;
  assign sbox[8'h39] = 64'h0808280840303820;
  assign sbox[8'h3a] = 64'hCECED1CE3E9E501F;
  assign sbox[8'h3b] = 64'h1A1A721AD05C4668;
  assign sbox[8'h3c] = 64'h3A3AD23ACD9CA6E8;
  assign sbox[8'h3d] = 64'hD2D2BDD2DED6046F;
  assign sbox[8'h3e] = 64'hE1E142E15B7C9DA3;
  assign sbox[8'h3f] = 64'hDFDF84DFB6F8275B;
  
  assign sbox[8'h40] = 64'hB5B55BB5C1992CEE;
  assign sbox[8'h41] = 64'h3838D838DD90A8E0;
  assign sbox[8'h42] = 64'h6E6ECB6E577917A5;
  assign sbox[8'h43] = 64'h0E0E360E70242A38;
  assign sbox[8'h44] = 64'hE5E556E57B6481B3;
  assign sbox[8'h45] = 64'hF4F403F4F302F6F7;
  assign sbox[8'h46] = 64'hF9F93AF99B2CD5C3;
  assign sbox[8'h47] = 64'h8686A4864433B522;
  assign sbox[8'h48] = 64'hE9E96AE91B4CA583;
  assign sbox[8'h49] = 64'h4F4F6E4F42BFF021;
  assign sbox[8'h4a] = 64'hD6D6A9D6FECE187F;
  assign sbox[8'h4b] = 64'h8585AB855C39BC2E;
  assign sbox[8'h4c] = 64'h2323AF2305CAE98C;
  assign sbox[8'h4d] = 64'hCFCFD4CF3698571B;
  assign sbox[8'h4e] = 64'h3232FA328DAC9EC8;
  assign sbox[8'h4f] = 64'h9999C799BC71E85E;
  
  assign sbox[8'h50] = 64'h3131F53195A697C4;
  assign sbox[8'h51] = 64'h14144414A0786C50;
  assign sbox[8'h52] = 64'hAEAE2CAE19C36D82;
  assign sbox[8'h53] = 64'hEEEE71EE235EB09F;
  assign sbox[8'h54] = 64'hC8C8CFC80E8A4207;
  assign sbox[8'h55] = 64'h484875487AADE53D;
  assign sbox[8'h56] = 64'hD3D3B8D3D6D0036B;
  assign sbox[8'h57] = 64'h3030F0309DA090C0;
  assign sbox[8'h58] = 64'hA1A11FA161E140BE;
  assign sbox[8'h59] = 64'h9292E092E44BD972;
  assign sbox[8'h5a] = 64'h41415841329BDA19;
  assign sbox[8'h5b] = 64'hB1B14FB1E18130FE;
  assign sbox[8'h5c] = 64'h18187818C0504860;
  assign sbox[8'h5d] = 64'hC4C4F3C46EA26637;
  assign sbox[8'h5e] = 64'h2C2C9C2C7DE8C4B0;
  assign sbox[8'h5f] = 64'h7171A871AF3B4AD9;
  
  assign sbox[8'h60] = 64'h7272A772B73143D5;
  assign sbox[8'h61] = 64'h444449441A85C10D;
  assign sbox[8'h62] = 64'h15154115A87E6B54;
  assign sbox[8'h63] = 64'hFDFD2EFDBB34C9D3;
  assign sbox[8'h64] = 64'h3737EB37A5B285DC;
  assign sbox[8'h65] = 64'hBEBE7CBE99A31DC2;
  assign sbox[8'h66] = 64'h5F5F3E5FC2DF8061;
  assign sbox[8'h67] = 64'hAAAA38AA39DB7192;
  assign sbox[8'h68] = 64'h9B9BCD9BAC7DE656;
  assign sbox[8'h69] = 64'h8888928834179F1A;
  assign sbox[8'h6a] = 64'hD8D89FD88EEA3247;
  assign sbox[8'h6b] = 64'hABAB3DAB31DD7696;
  assign sbox[8'h6c] = 64'h898997893C11981E;
  assign sbox[8'h6d] = 64'h9C9CD69C946FF34A;
  assign sbox[8'h6e] = 64'hFAFA35FA8326DCCF;
  assign sbox[8'h6f] = 64'h6060FD60275D3D9D;
  
  assign sbox[8'h70] = 64'hEAEA65EA0346AC8F;
  assign sbox[8'h71] = 64'hBCBC76BC89AF13CA;
  assign sbox[8'h72] = 64'h6262F76237513395;
  assign sbox[8'h73] = 64'h0C0C3C0C60282430;
  assign sbox[8'h74] = 64'h2424B4243DD8FC90;
  assign sbox[8'h75] = 64'hA6A604A659F355A2;
  assign sbox[8'h76] = 64'hA8A832A829D77F9A;
  assign sbox[8'h77] = 64'hECEC7BEC3352BE97;
  assign sbox[8'h78] = 64'h6767E6671F4F2881;
  assign sbox[8'h79] = 64'h2020A0201DC0E080;
  assign sbox[8'h7a] = 64'hDBDB90DB96E03B4B;
  assign sbox[8'h7b] = 64'h7C7C917CC71569ED;
  assign sbox[8'h7c] = 64'h282888285DF0D8A0;
  assign sbox[8'h7d] = 64'hDDDD8EDDA6F42953;
  assign sbox[8'h7e] = 64'hACAC26AC09CF638A;
  assign sbox[8'h7f] = 64'h5B5B2A5BE2C79C71;
  
  assign sbox[8'h80] = 64'h3434E434BDB88CD0;
  assign sbox[8'h81] = 64'h7E7E9B7ED71967E5;
  assign sbox[8'h82] = 64'h1010501080607040;
  assign sbox[8'h83] = 64'hF1F112F1DB1CEDE3;
  assign sbox[8'h84] = 64'h7B7B8A7BFF077CF1;
  assign sbox[8'h85] = 64'h8F8F898F0C058A06;
  assign sbox[8'h86] = 64'h6363F2633F573491;
  assign sbox[8'h87] = 64'hA0A01AA069E747BA;
  assign sbox[8'h88] = 64'h05051105281E1B14;
  assign sbox[8'h89] = 64'h9A9AC89AA47BE152;
  assign sbox[8'h8a] = 64'h434352432297D411;
  assign sbox[8'h8b] = 64'h7777B6779F2F58C1;
  assign sbox[8'h8c] = 64'h2121A52115C6E784;
  assign sbox[8'h8d] = 64'hBFBF79BF91A51AC6;
  assign sbox[8'h8e] = 64'h2727BB2725D2F59C;
  assign sbox[8'h8f] = 64'h09092D0948363F24;
  
  assign sbox[8'h90] = 64'hC3C3E8C356B0732B;
  assign sbox[8'h91] = 64'h9F9FD99F8C65FA46;
  assign sbox[8'h92] = 64'hB6B654B6D99325E2;
  assign sbox[8'h93] = 64'hD7D7ACD7F6C81F7B;
  assign sbox[8'h94] = 64'h29298D2955F6DFA4;
  assign sbox[8'h95] = 64'hC2C2EDC25EB6742F;
  assign sbox[8'h96] = 64'hEBEB60EB0B40AB8B;
  assign sbox[8'h97] = 64'hC0C0E7C04EBA7A27;
  assign sbox[8'h98] = 64'hA4A40EA449FF5BAA;
  assign sbox[8'h99] = 64'h8B8B9D8B2C1D9616;
  assign sbox[8'h9a] = 64'h8C8C868C140F830A;
  assign sbox[8'h9b] = 64'h1D1D691DE84E5374;
  assign sbox[8'h9c] = 64'hFBFB30FB8B20DBCB;
  assign sbox[8'h9d] = 64'hFFFF24FFAB38C7DB;
  assign sbox[8'h9e] = 64'hC1C1E2C146BC7D23;
  assign sbox[8'h9f] = 64'hB2B240B2F98B39F2;
  
  assign sbox[8'ha0] = 64'h9797F197CC55C266;
  assign sbox[8'ha1] = 64'h2E2E962E6DE4CAB8;
  assign sbox[8'ha2] = 64'hF8F83FF8932AD2C7;
  assign sbox[8'ha3] = 64'h6565EC650F432689;
  assign sbox[8'ha4] = 64'hF6F609F6E30EF8FF;
  assign sbox[8'ha5] = 64'h7575BC758F2356C9;
  assign sbox[8'ha6] = 64'h07071B073812151C;
  assign sbox[8'ha7] = 64'h0404140420181C10;
  assign sbox[8'ha8] = 64'h4949704972ABE239;
  assign sbox[8'ha9] = 64'h3333FF3385AA99CC;
  assign sbox[8'haa] = 64'hE4E453E4736286B7;
  assign sbox[8'hab] = 64'hD9D99AD986EC3543;
  assign sbox[8'hac] = 64'hB9B967B9A1B108DE;
  assign sbox[8'had] = 64'hD0D0B7D0CEDA0A67;
  assign sbox[8'hae] = 64'h424257422A91D315;
  assign sbox[8'haf] = 64'hC7C7FCC776A86F3B;
  
  assign sbox[8'hb0] = 64'h6C6CC16C477519AD;
  assign sbox[8'hb1] = 64'h9090EA90F447D77A;
  assign sbox[8'hb2] = 64'h0000000000000000;
  assign sbox[8'hb3] = 64'h8E8E8C8E04038D02;
  assign sbox[8'hb4] = 64'h6F6FCE6F5F7F10A1;
  assign sbox[8'hb5] = 64'h50500D50BAFDAD5D;
  assign sbox[8'hb6] = 64'h0101050108060704;
  assign sbox[8'hb7] = 64'hC5C5F6C566A46133;
  assign sbox[8'hb8] = 64'hDADA95DA9EE63C4F;
  assign sbox[8'hb9] = 64'h47474647028FC801;
  assign sbox[8'hba] = 64'h3F3FC33FE582BDFC;
  assign sbox[8'hbb] = 64'hCDCDDECD26945913;
  assign sbox[8'hbc] = 64'h6969D0696F6B02B9;
  assign sbox[8'hbd] = 64'hA2A210A279EB49B2;
  assign sbox[8'hbe] = 64'hE2E24DE2437694AF;
  assign sbox[8'hbf] = 64'h7A7A8F7AF7017BF5;
  
  assign sbox[8'hc0] = 64'hA7A701A751F552A6;
  assign sbox[8'hc1] = 64'hC6C6F9C67EAE683F;
  assign sbox[8'hc2] = 64'h9393E593EC4DDE76;
  assign sbox[8'hc3] = 64'h0F0F330F78222D3C;
  assign sbox[8'hc4] = 64'h0A0A220A503C3628;
  assign sbox[8'hc5] = 64'h06061E0630141218;
  assign sbox[8'hc6] = 64'hE6E659E6636E88BF;
  assign sbox[8'hc7] = 64'h2B2B872B45FAD1AC;
  assign sbox[8'hc8] = 64'h9696F496C453C562;
  assign sbox[8'hc9] = 64'hA3A315A371ED4EB6;
  assign sbox[8'hca] = 64'h1C1C6C1CE0485470;
  assign sbox[8'hcb] = 64'hAFAF29AF11C56A86;
  assign sbox[8'hcc] = 64'h6A6ADF6A77610BB5;
  assign sbox[8'hcd] = 64'h12125A12906C7E48;
  assign sbox[8'hce] = 64'h8484AE84543FBB2A;
  assign sbox[8'hcf] = 64'h3939DD39D596AFE4;
  
  assign sbox[8'hd0] = 64'hE7E75CE76B688FBB;
  assign sbox[8'hd1] = 64'hB0B04AB0E98737FA;
  assign sbox[8'hd2] = 64'h8282B082642BA932;
  assign sbox[8'hd3] = 64'hF7F70CF7EB08FFFB;
  assign sbox[8'hd4] = 64'hFEFE21FEA33EC0DF;
  assign sbox[8'hd5] = 64'h9D9DD39D9C69F44E;
  assign sbox[8'hd6] = 64'h8787A1874C35B226;
  assign sbox[8'hd7] = 64'h5C5C315CDAD5896D;
  assign sbox[8'hd8] = 64'h8181BF817C21A03E;
  assign sbox[8'hd9] = 64'h3535E135B5BE8BD4;
  assign sbox[8'hda] = 64'hDEDE81DEBEFE205F;
  assign sbox[8'hdb] = 64'hB4B45EB4C99F2BEA;
  assign sbox[8'hdc] = 64'hA5A50BA541F95CAE;
  assign sbox[8'hdd] = 64'hFCFC2BFCB332CED7;
  assign sbox[8'hde] = 64'h8080BA807427A73A;
  assign sbox[8'hdf] = 64'hEFEF74EF2B58B79B;
  
  assign sbox[8'he0] = 64'hCBCBC0CB16804B0B;
  assign sbox[8'he1] = 64'hBBBB6DBBB1BD06D6;
  assign sbox[8'he2] = 64'h6B6BDA6B7F670CB1;
  assign sbox[8'he3] = 64'h7676B37697295FC5;
  assign sbox[8'he4] = 64'hBABA68BAB9BB01D2;
  assign sbox[8'he5] = 64'h5A5A2F5AEAC19B75;
  assign sbox[8'he6] = 64'h7D7D947DCF136EE9;
  assign sbox[8'he7] = 64'h78788578E70D75FD;
  assign sbox[8'he8] = 64'h0B0B270B583A312C;
  assign sbox[8'he9] = 64'h9595FB95DC59CC6E;
  assign sbox[8'hea] = 64'hE3E348E34B7093AB;
  assign sbox[8'heb] = 64'hADAD23AD01C9648E;
  assign sbox[8'hec] = 64'h7474B974872551CD;
  assign sbox[8'hed] = 64'h9898C298B477EF5A;
  assign sbox[8'hee] = 64'h3B3BD73BC59AA1EC;
  assign sbox[8'hef] = 64'h3636EE36ADB482D8;
  
  assign sbox[8'hf0] = 64'h6464E9640745218D;
  assign sbox[8'hf1] = 64'h6D6DC46D4F731EA9;
  assign sbox[8'hf2] = 64'hDCDC8BDCAEF22E57;
  assign sbox[8'hf3] = 64'hF0F017F0D31AEAE7;
  assign sbox[8'hf4] = 64'h59592059F2CB9279;
  assign sbox[8'hf5] = 64'hA9A937A921D1789E;
  assign sbox[8'hf6] = 64'h4C4C614C5AB5F92D;
  assign sbox[8'hf7] = 64'h17174B17B872655C;
  assign sbox[8'hf8] = 64'h7F7F9E7FDF1F60E1;
  assign sbox[8'hf9] = 64'h9191EF91FC41D07E;
  assign sbox[8'hfa] = 64'hB8B862B8A9B70FDA;
  assign sbox[8'hfb] = 64'hC9C9CAC9068C4503;
  assign sbox[8'hfc] = 64'h5757165782EFB841;
  assign sbox[8'hfd] = 64'h1B1B771BD85A416C;
  assign sbox[8'hfe] = 64'hE0E047E0537A9AA7;
  assign sbox[8'hff] = 64'h6161F8612F5B3A99;
  
   
endmodule // t_7