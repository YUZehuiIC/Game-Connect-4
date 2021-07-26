// 
// ******************************************************************************
// *                                                                            *
// *                   Copyright (C) 2004-2012, Nangate Inc.                    *
// *                           All rights reserved.                             *
// *                                                                            *
// * Nangate and the Nangate logo are trademarks of Nangate Inc.                *
// *                                                                            *
// * All trademarks, logos, software marks, and trade names (collectively the   *
// * "Marks") in this program are proprietary to Nangate or other respective    *
// * owners that have granted Nangate the right and license to use such Marks.  *
// * You are not permitted to use the Marks without the prior written consent   *
// * of Nangate or such third party that may own the Marks.                     *
// *                                                                            *
// * This file has been provided pursuant to a License Agreement containing     *
// * restrictions on its use. This file contains valuable trade secrets and     *
// * proprietary information of Nangate Inc., and is protected by U.S. and      *
// * international laws and/or treaties.                                        *
// *                                                                            *
// * The copyright notice(s) in this file does not indicate actual or intended  *
// * publication of this file.                                                  *
// *                                                                            *
// * NGLibraryCharacterizer, v2011.05-QR02-SP5-2011-05-18_32 - build 1109030300 *
// *                                                                            *
// ******************************************************************************
// 
// 
// Running on du28259l for user Bodo Kaufmann (bka).
// Local time is now Thu, 12 Jan 2012, 17:51:25.
// Main process id is 17253.
// 
// * Default delays
//   * comb. path delay        : 0.1
//   * seq. path delay         : 0.1
//   * delay cells             : 0.1
//   * timing checks           : 0.1
// 
// * NTC Setup
//   * Export NTC sections     : true
//   * Combine setup / hold    : true
//   * Combine recovery/removal: true
// 
// * Extras
//   * Export `celldefine      : false
//   * Export `timescale       : -
// 

`timescale 1ns/1ps
`celldefine 

module BBCD1P (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBCD4P (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBCD4SMP (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBCD8P (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBCD8SMP (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBCD8SP (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBCD16P (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBCD16SMP (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBCD16SP (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBCD24P (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBCD24SMP (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBCD24SP (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBCU1P (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBCU4P (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBCU4SMP (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBCU8P (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBCU8SMP (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBCU8SP (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBCU16P (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBCU16SMP (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBCU16SP (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBCU24P (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBCU24SMP (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBCU24SP (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBC1P (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBC4P (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBC4SMP (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBC8P (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBC8SMP (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBC8SP (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBC16P (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBC16SMP (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBC16SP (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBC24P (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBC24SMP (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBC24SP (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBSD1P (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBSD4P (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBSD4SMP (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBSD8P (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBSD8SMP (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBSD8SP (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBSD16P (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBSD16SMP (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBSD16SP (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBSD24P (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBSD24SMP (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBSD24SP (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBSU1P (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBSU4P (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBSU4SMP (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBSU8P (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBSU8SMP (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBSU8SP (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBSU16P (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBSU16SMP (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBSU16SP (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBSU24P (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBSU24SMP (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBSU24SP (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBS1P (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBS4P (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBS4SMP (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBS8P (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBS8SMP (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBS8SP (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBS16P (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBS16SMP (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBS16SP (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBS24P (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBS24SMP (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBS24SP (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBTD1P (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBTD4P (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBTD4SMP (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBTD8P (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBTD8SMP (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBTD8SP (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBTD16P (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBTD16SMP (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBTD16SP (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBTD24P (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBTD24SMP (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBTD24SP (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBTU1P (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBTU4P (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBTU4SMP (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBTU8P (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBTU8SMP (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBTU8SP (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBTU16P (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBTU16SMP (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBTU16SP (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBTU24P (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBTU24SMP (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBTU24SP (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBT1P (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBT4P (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBT4SMP (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBT8P (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBT8SMP (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBT8SP (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBT16P (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBT16SMP (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBT16SP (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBT24P (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBT24SMP (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BBT24SP (A, EN, PAD, Y);
  input A;
  input EN;
  inout PAD;
  output Y;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);
  buf(Y, PAD);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module BT1P (A, EN, PAD);
  input A;
  input EN;
  output PAD;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
  endspecify

endmodule

module BT2P (A, EN, PAD);
  input A;
  input EN;
  output PAD;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
  endspecify

endmodule

module BT4P (A, EN, PAD);
  input A;
  input EN;
  output PAD;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
  endspecify

endmodule

module BT4SMP (A, EN, PAD);
  input A;
  input EN;
  output PAD;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
  endspecify

endmodule

module BT8P (A, EN, PAD);
  input A;
  input EN;
  output PAD;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
  endspecify

endmodule

module BT8SMP (A, EN, PAD);
  input A;
  input EN;
  output PAD;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
  endspecify

endmodule

module BT8SP (A, EN, PAD);
  input A;
  input EN;
  output PAD;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
  endspecify

endmodule

module BT12P (A, EN, PAD);
  input A;
  input EN;
  output PAD;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
  endspecify

endmodule

module BT12SMP (A, EN, PAD);
  input A;
  input EN;
  output PAD;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
  endspecify

endmodule

module BT12SP (A, EN, PAD);
  input A;
  input EN;
  output PAD;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
  endspecify

endmodule

module BT16P (A, EN, PAD);
  input A;
  input EN;
  output PAD;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
  endspecify

endmodule

module BT16SMP (A, EN, PAD);
  input A;
  input EN;
  output PAD;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
  endspecify

endmodule

module BT16SP (A, EN, PAD);
  input A;
  input EN;
  output PAD;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
  endspecify

endmodule

module BT24P (A, EN, PAD);
  input A;
  input EN;
  output PAD;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
  endspecify

endmodule

module BT24SMP (A, EN, PAD);
  input A;
  input EN;
  output PAD;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
  endspecify

endmodule

module BT24SP (A, EN, PAD);
  input A;
  input EN;
  output PAD;

  bufif0(PAD, PAD_in, PAD_enable);
  buf(PAD_enable, EN);
  buf(PAD_in, A);

  specify
    (A => PAD) = (0.1, 0.1);
    (EN => PAD) = (0.1, 0.1, 0.1, 0.1, 0.1, 0.1);
  endspecify

endmodule

module BUDD1P (A, PAD);
  input A;
  output PAD;

  buf(PAD, A);

  specify
    (A => PAD) = (0.1, 0.1);
  endspecify

endmodule

module BUDD2P (A, PAD);
  input A;
  output PAD;

  buf(PAD, A);

  specify
    (A => PAD) = (0.1, 0.1);
  endspecify

endmodule

module BUDD4P (A, PAD);
  input A;
  output PAD;

  buf(PAD, A);

  specify
    (A => PAD) = (0.1, 0.1);
  endspecify

endmodule

module BUDD8P (A, PAD);
  input A;
  output PAD;

  buf(PAD, A);

  specify
    (A => PAD) = (0.1, 0.1);
  endspecify

endmodule

module BUDD12P (A, PAD);
  input A;
  output PAD;

  buf(PAD, A);

  specify
    (A => PAD) = (0.1, 0.1);
  endspecify

endmodule

module BUDD16P (A, PAD);
  input A;
  output PAD;

  buf(PAD, A);

  specify
    (A => PAD) = (0.1, 0.1);
  endspecify

endmodule

module BUDD24P (A, PAD);
  input A;
  output PAD;

  buf(PAD, A);

  specify
    (A => PAD) = (0.1, 0.1);
  endspecify

endmodule

module BUDU1P (A, PAD);
  input A;
  output PAD;

  buf(PAD, A);

  specify
    (A => PAD) = (0.1, 0.1);
  endspecify

endmodule

module BUDU2P (A, PAD);
  input A;
  output PAD;

  buf(PAD, A);

  specify
    (A => PAD) = (0.1, 0.1);
  endspecify

endmodule

module BUDU4P (A, PAD);
  input A;
  output PAD;

  buf(PAD, A);

  specify
    (A => PAD) = (0.1, 0.1);
  endspecify

endmodule

module BUDU8P (A, PAD);
  input A;
  output PAD;

  buf(PAD, A);

  specify
    (A => PAD) = (0.1, 0.1);
  endspecify

endmodule

module BUDU12P (A, PAD);
  input A;
  output PAD;

  buf(PAD, A);

  specify
    (A => PAD) = (0.1, 0.1);
  endspecify

endmodule

module BUDU16P (A, PAD);
  input A;
  output PAD;

  buf(PAD, A);

  specify
    (A => PAD) = (0.1, 0.1);
  endspecify

endmodule

module BUDU24P (A, PAD);
  input A;
  output PAD;

  buf(PAD, A);

  specify
    (A => PAD) = (0.1, 0.1);
  endspecify

endmodule

module BU1P (A, PAD);
  input A;
  output PAD;

  buf(PAD, A);

  specify
    (A => PAD) = (0.1, 0.1);
  endspecify

endmodule

module BU2P (A, PAD);
  input A;
  output PAD;

  buf(PAD, A);

  specify
    (A => PAD) = (0.1, 0.1);
  endspecify

endmodule

module BU4P (A, PAD);
  input A;
  output PAD;

  buf(PAD, A);

  specify
    (A => PAD) = (0.1, 0.1);
  endspecify

endmodule

module BU4SMP (A, PAD);
  input A;
  output PAD;

  buf(PAD, A);

  specify
    (A => PAD) = (0.1, 0.1);
  endspecify

endmodule

module BU8P (A, PAD);
  input A;
  output PAD;

  buf(PAD, A);

  specify
    (A => PAD) = (0.1, 0.1);
  endspecify

endmodule

module BU8SMP (A, PAD);
  input A;
  output PAD;

  buf(PAD, A);

  specify
    (A => PAD) = (0.1, 0.1);
  endspecify

endmodule

module BU8SP (A, PAD);
  input A;
  output PAD;

  buf(PAD, A);

  specify
    (A => PAD) = (0.1, 0.1);
  endspecify

endmodule

module BU12P (A, PAD);
  input A;
  output PAD;

  buf(PAD, A);

  specify
    (A => PAD) = (0.1, 0.1);
  endspecify

endmodule

module BU12SMP (A, PAD);
  input A;
  output PAD;

  buf(PAD, A);

  specify
    (A => PAD) = (0.1, 0.1);
  endspecify

endmodule

module BU12SP (A, PAD);
  input A;
  output PAD;

  buf(PAD, A);

  specify
    (A => PAD) = (0.1, 0.1);
  endspecify

endmodule

module BU16P (A, PAD);
  input A;
  output PAD;

  buf(PAD, A);

  specify
    (A => PAD) = (0.1, 0.1);
  endspecify

endmodule

module BU16SMP (A, PAD);
  input A;
  output PAD;

  buf(PAD, A);

  specify
    (A => PAD) = (0.1, 0.1);
  endspecify

endmodule

module BU16SP (A, PAD);
  input A;
  output PAD;

  buf(PAD, A);

  specify
    (A => PAD) = (0.1, 0.1);
  endspecify

endmodule

module BU24P (A, PAD);
  input A;
  output PAD;

  buf(PAD, A);

  specify
    (A => PAD) = (0.1, 0.1);
  endspecify

endmodule

module BU24SMP (A, PAD);
  input A;
  output PAD;

  buf(PAD, A);

  specify
    (A => PAD) = (0.1, 0.1);
  endspecify

endmodule

module BU24SP (A, PAD);
  input A;
  output PAD;

  buf(PAD, A);

  specify
    (A => PAD) = (0.1, 0.1);
  endspecify

endmodule

module CBU1P (A, Y);
  input A;
  output Y;

  buf(Y, A);

  specify
    (A => Y) = (0.1, 0.1);
  endspecify

endmodule

module CBU2P (A, Y);
  input A;
  output Y;

  buf(Y, A);

  specify
    (A => Y) = (0.1, 0.1);
  endspecify

endmodule

module ICCK2P (PAD, Y);
  input PAD;
  output Y;

  buf(Y, PAD);

  specify
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module ICCK4P (PAD, Y);
  input PAD;
  output Y;

  buf(Y, PAD);

  specify
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module ICCK8P (PAD, Y);
  input PAD;
  output Y;

  buf(Y, PAD);

  specify
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module ICCK16P (PAD, Y);
  input PAD;
  output Y;

  buf(Y, PAD);

  specify
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module ICDP (PAD, Y);
  input PAD;
  output Y;

  buf(Y, PAD);

  specify
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module ICP (PAD, Y);
  input PAD;
  output Y;

  buf(Y, PAD);

  specify
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module ICUP (PAD, Y);
  input PAD;
  output Y;

  buf(Y, PAD);

  specify
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module ISDP (PAD, Y);
  input PAD;
  output Y;

  buf(Y, PAD);

  specify
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module ISP (PAD, Y);
  input PAD;
  output Y;

  buf(Y, PAD);

  specify
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module ISUP (PAD, Y);
  input PAD;
  output Y;

  buf(Y, PAD);

  specify
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module ITCK2P (PAD, Y);
  input PAD;
  output Y;

  buf(Y, PAD);

  specify
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module ITCK4P (PAD, Y);
  input PAD;
  output Y;

  buf(Y, PAD);

  specify
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module ITCK8P (PAD, Y);
  input PAD;
  output Y;

  buf(Y, PAD);

  specify
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module ITCK16P (PAD, Y);
  input PAD;
  output Y;

  buf(Y, PAD);

  specify
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module ITDP (PAD, Y);
  input PAD;
  output Y;

  buf(Y, PAD);

  specify
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module ITP (PAD, Y);
  input PAD;
  output Y;

  buf(Y, PAD);

  specify
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module ITUP (PAD, Y);
  input PAD;
  output Y;

  buf(Y, PAD);

  specify
    (PAD => Y) = (0.1, 0.1);
  endspecify

endmodule

module GND3ALLP(A);
  inout A;
 
endmodule
 
module GND3IP(A);
  inout A;
 
endmodule
 
module GND3OP(A);
  inout A;
 
endmodule
 
module GND3RP(A);
  inout A;
 
endmodule

module VDD3ALLP(A);
  inout A;
 
endmodule
 
module VDD3IP(A);
  inout A;
 
endmodule
 
module VDD3OP(A);
  inout A;
 
endmodule
 
module VDD3RP(A);
  inout A;
 
endmodule

module RAILPROTP;
endmodule

 
`endcelldefine

