import 'package:coffeeflavor/common/widgets/text.dart';
import 'package:coffeeflavor/core/app_color.dart';
import 'package:coffeeflavor/core/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemCategory extends StatelessWidget {
  const ItemCategory({super.key, required this.onClick, required this.iconSrc, required this.label});

  final Function() onClick;
  final String iconSrc, label;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxHeight: 124),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            width: 70,
            height: 70,
            decoration: BoxDecoration(color: AppColor.white, shape: BoxShape.circle, boxShadow: [
              BoxShadow(
                color: AppColor.shadow,
                offset: const Offset(3, 3),
                spreadRadius: 4,
                blurRadius: 7,
              )
            ]),
            child: SvgPicture.asset(
              iconSrc,
              width: 40,
              height: 40,
            ),
          ),
          TextItem(
            label,
            height: 35,
            style: AppTextStyle.lb2,
          )
        ],
      ),
    );
  }
}
