import 'package:coffeeflavor/core/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

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
              border: const GradientBoxBorder(
                gradient: LinearGradient(colors: [Color(0xff35A0EE), Color(0xff394C62)]),
              )),
          child: Center(child: Text(style: AppTextStyle.buttonLabel, label)),
        ),
      ),
    );
  }
}

class CommonFilledButton extends StatelessWidget {
  const CommonFilledButton({super.key, required this.onTap, required this.child, this.color});
  final Function() onTap;
  final Color? color;
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        constraints: const BoxConstraints(minWidth: 81, minHeight: 40),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(6), color: color ?? Color(0xffFF5A36)),
        child: child,
      ),
    );
  }
}
