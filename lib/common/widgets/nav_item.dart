import 'package:coffeeflavor/common/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/app_color.dart';
import '../../core/app_text_style.dart';

class NavItem extends StatelessWidget {
  const NavItem({super.key, required this.src, required this.title, required this.onTap, required this.isSelected});
  final String src, title;
  final bool isSelected;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
        constraints: const BoxConstraints(maxHeight: 68),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              src,
              width: 35,
              height: 35,
              colorFilter: ColorFilter.mode(isSelected ? AppColor.highLight : AppColor.lowLight, BlendMode.srcIn),
              fit: BoxFit.fill,
            ),
            TextItem(
              title,
              height: 15,
              style: AppTextStyle.hint2,
            )
          ],
        ),
      ),
    );
  }
}
