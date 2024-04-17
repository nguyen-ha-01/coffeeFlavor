import 'dart:math';

import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => Theme.of(this).textTheme;

  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;

  MaterialColor get randomColor => Colors.primaries[Random().nextInt(17)];

  MediaQueryData get mediaQuery => MediaQuery.of(this);

  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  bool get isKeyBoardOpen => MediaQuery.of(this).viewInsets.bottom > 0;

  Brightness get appBrightness => MediaQuery.of(this).platformBrightness;

  // double get textScaleFactor => MediaQuery.of(this).textScaleFactor;
}

extension MediaQueryExtension on BuildContext {
  double get heightDevice => mediaQuery.size.height;

  double get widthDevice => mediaQuery.size.width;

  double dynamicWidth({required double val}) => widthDevice * val;

  double dynamicHeight({required double val}) => heightDevice * val;
}

extension Strings on String? {
  String toPrice() => this != null ? 'from ${this.toString()} vnđ' : 'from 29000 vnđ';
}
