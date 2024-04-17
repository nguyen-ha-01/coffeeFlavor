import 'package:coffeeflavor/core/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/input_borders/gradient_outline_input_border.dart';

class TextInputItem extends StatelessWidget {
  const TextInputItem(
      {this.style, this.type, this.action, required this.leading, this.hint, super.key, required this.controller});

  final TextEditingController controller;
  final String? hint;
  final Widget? Function() leading;
  final TextInputAction? action;
  final TextInputType? type;
  final TextStyle? style;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: AppTextStyle.hint1,
        focusedBorder: GradientOutlineInputBorder(
          gradient: const LinearGradient(
              colors: [Color(0xff35A0EE), Color(0xff394C62), Color(0xff394C62), Color(0xff394C62)]),
          borderRadius: BorderRadius.circular(16),
          width: 1,
        ),
        border: GradientOutlineInputBorder(
          gradient: const LinearGradient(colors: [Color(0xff35A0EE), Color(0xff394C62)]),
          borderRadius: BorderRadius.circular(16),
          width: 1,
        ),
        disabledBorder: GradientOutlineInputBorder(
          gradient: const LinearGradient(colors: [Color(0xff35A0EE), Color(0xff394C62)]),
          borderRadius: BorderRadius.circular(16),
          width: 1,
        ),
        enabledBorder: GradientOutlineInputBorder(
          gradient: const LinearGradient(
              colors: [Color(0xff35A0EE), Color(0xff394C62), Color(0xff394C62), Color(0xff394C62)]),
          borderRadius: BorderRadius.circular(16),
          width: 1,
        ),
        prefixIcon: leading() != null
            ? Container(
                margin: const EdgeInsets.only(right: 8),
                constraints: const BoxConstraints(maxWidth: 63),
                decoration: BoxDecoration(
                  border: Border(right: BorderSide(color: const Color(0xff000000).withOpacity(0.47))),
                ),
                child: Center(
                  child: leading(),
                ),
              )
            : null,
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
      textInputAction: action ?? TextInputAction.done,
      keyboardType: type ?? TextInputType.phone,
      textAlignVertical: TextAlignVertical.center,
      style: style ?? AppTextStyle.textInput1,
    );
  }
}
