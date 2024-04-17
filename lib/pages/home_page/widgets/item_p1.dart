///display in home page as an item in list view to show menu

import 'package:cached_network_image/cached_network_image.dart';
import 'package:coffeeflavor/common/utils/extention.dart';
import 'package:coffeeflavor/common/widgets/button.dart';
import 'package:coffeeflavor/common/widgets/text.dart';
import 'package:coffeeflavor/core/app_color.dart';
import 'package:coffeeflavor/core/app_text_style.dart';
import 'package:coffeeflavor/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({super.key, this.url, this.name, this.vote, this.price, required this.onAdd, required this.onClick});
  final String? url, name, vote, price;
  final Function() onAdd;
  final Function() onClick;
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxHeight: 137, maxWidth: double.infinity),
      decoration: BoxDecoration(
        color: AppColor.cardBackground,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: AppColor.shadow,
            offset: const Offset(3, 3),
            spreadRadius: 5,
            blurRadius: 7,
          )
        ],
      ),
      child: Row(
        children: [
          SizedBox(
            width: 137,
            height: 142,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(topLeft: Radius.circular(18), bottomLeft: Radius.circular(18)),
              child: url != null
                  ? CachedNetworkImage(
                      imageUrl: url!,
                      fit: BoxFit.fill,
                    )
                  : Image.asset(
                      'assets/images/demo_data.png',
                      fit: BoxFit.fill,
                    ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 18.0, bottom: 15, left: 11, right: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextItem(
                            name ?? 'bacxiu',
                            height: 28,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SvgPicture.asset(
                                Assets.icons.iconHomeStar,
                                width: 18,
                                height: 18,
                                fit: BoxFit.fill,
                              ),
                              TextItem(vote ?? '4.5', height: 22)
                            ],
                          ),
                        ],
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: SvgPicture.asset(
                          Assets.icons.iconHomeLike,
                          width: 52,
                          height: 51,
                          fit: BoxFit.fill,
                        ),
                      )
                    ],
                  ),
                  const Spacer(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextItem(
                        price.toPrice(),
                        height: 30,
                        style: AppTextStyle.hint1,
                      ),
                      const Spacer(),
                      CommonFilledButton(
                          onTap: () {},
                          child: TextItem(
                            'ADD',
                            height: 40,
                            style: AppTextStyle.btnContentWhite1,
                          ))
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
