import 'package:coffeeflavor/core/app_text_style.dart';
import 'package:flutter/material.dart';

class TextItem extends StatelessWidget {
  const TextItem(this.text, {this.height, super.key, this.style});
  final String text;
  final TextStyle? style;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 44,
      child: Align(
        alignment: Alignment.center,
        child: Text(
          text,
          style: style ?? AppTextStyle.lb1,
        ),
      ),
    );
  }
}
