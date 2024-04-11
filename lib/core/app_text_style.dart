import 'package:coffeeflavor/gen/fonts.gen.dart';
import 'package:flutter/material.dart';

class AppTextStyle {
  static TextStyle inputHint = TextStyle(
    fontSize: 16,
    fontFamily: FontFamily.openSans,
    color: const Color(0x7F000000).withOpacity(0.47),
  );
  static TextStyle buttonLabel = const TextStyle(
    fontSize: 24,
    fontFamily: FontFamily.openSans,
    fontWeight: FontWeight.w500,
    color: Color(0xff6C63FF),
  );
}
