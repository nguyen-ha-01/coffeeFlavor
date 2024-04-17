import 'package:coffeeflavor/gen/fonts.gen.dart';
import 'package:flutter/material.dart';

class AppTextStyle {
  static TextStyle hint1 = TextStyle(
    fontSize: 16,
    fontFamily: FontFamily.openSans,
    color: const Color(0x7F000000).withOpacity(0.47),
  );
  static TextStyle hint2 = const TextStyle(
      fontSize: 14, fontFamily: FontFamily.openSans, color: Color(0xffB4B4B4), fontWeight: FontWeight.w500);
  static TextStyle buttonLabel = const TextStyle(
      fontSize: 24, fontFamily: FontFamily.openSans, fontWeight: FontWeight.w500, color: Color(0xff6C63FF));
  static TextStyle boldLb1 = const TextStyle(
      fontSize: 24, color: Color(0xff000000), fontFamily: FontFamily.openSans, fontWeight: FontWeight.w500);
  static TextStyle boldLb2 = const TextStyle(
      fontSize: 24, color: Color(0xff000000), fontFamily: FontFamily.openSans, fontWeight: FontWeight.w700);
  static TextStyle lb1 = const TextStyle(
      fontSize: 20, color: Color(0xff000000), fontFamily: FontFamily.openSans, fontWeight: FontWeight.w500);
  static TextStyle lb2 = const TextStyle(
      fontSize: 16, color: Color(0xff000000), fontFamily: FontFamily.openSans, fontWeight: FontWeight.w400);
  static TextStyle textInput1 = const TextStyle(
    fontSize: 20,
    color: Color(0xff000000),
    fontWeight: FontWeight.w600,
    fontFamily: FontFamily.openSans,
  );
  static TextStyle btnContentWhite1 = const TextStyle(
      fontSize: 16, color: Color(0xffffffff), fontFamily: FontFamily.openSans, fontWeight: FontWeight.w500);
}
