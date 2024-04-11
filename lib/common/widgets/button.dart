import 'package:coffeeflavor/core/app_text_style.dart';
import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({super.key, required this.onTap, required this.label});

  final Function() onTap;
  final String label;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ConstrainedBox(
        constraints: const BoxConstraints(minHeight: 57, maxHeight: 60, minWidth: 83, maxWidth: double.infinity),
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: const Color(0xff35A0EE),
            ),
          ),
          child: Center(child: Text(style: AppTextStyle.buttonLabel, label)),
        ),
      ),
    );
  }
}
