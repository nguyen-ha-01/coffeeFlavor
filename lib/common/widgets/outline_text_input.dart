import 'package:coffeeflavor/core/app_text_style.dart';
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({required this.leading, this.hint, super.key, required this.controller});

  final TextEditingController controller;
  final String? hint;
  final Widget? Function() leading;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: AppTextStyle.inputHint,
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xff35A0EE)), borderRadius: BorderRadius.circular(16)),
        border: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xff35A0EE)), borderRadius: BorderRadius.circular(16)),
        disabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xff35A0EE)), borderRadius: BorderRadius.circular(16)),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xff35A0EE)), borderRadius: BorderRadius.circular(16)),
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
    );
  }
}
