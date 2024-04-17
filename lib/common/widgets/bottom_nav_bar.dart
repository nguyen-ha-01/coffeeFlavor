import 'package:coffeeflavor/bloc/nav_bar_cubit.dart';
import 'package:coffeeflavor/core/app_color.dart';
import 'package:coffeeflavor/gen/assets.gen.dart';
import 'package:coffeeflavor/service/live_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'nav_item.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxHeight: 68),
      decoration: BoxDecoration(
          color: context.read<LiveTheme>().background,
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: AppColor.shadow,
              offset: const Offset(3, 3),
              spreadRadius: 5,
              blurRadius: 7,
            )
          ]),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          BlocBuilder<NavBarCubit, NavBarPages>(
            builder: (ctx, state) => NavItem(
              src: Assets.icons.iconNav1,
              title: 'nav.l1'.tr(),
              onTap: () => ctx.read<NavBarCubit>().next(NavBarPages.home),
              isSelected: state == NavBarPages.home,
            ),
            buildWhen: (last, next) => last.name != next.name,
          ),
          BlocBuilder<NavBarCubit, NavBarPages>(
            builder: (ctx, state) => NavItem(
              src: Assets.icons.iconNav2,
              title: 'nav.l2'.tr(),
              onTap: () => ctx.read<NavBarCubit>().next(NavBarPages.message),
              isSelected: state == NavBarPages.message,
            ),
            buildWhen: (last, next) => last.name != next.name,
          ),
          const Spacer(),
          BlocBuilder<NavBarCubit, NavBarPages>(
            builder: (ctx, state) => NavItem(
              src: Assets.icons.iconNav3,
              title: 'nav.l3'.tr(),
              onTap: () => ctx.read<NavBarCubit>().next(NavBarPages.notification),
              isSelected: state == NavBarPages.notification,
            ),
            buildWhen: (last, next) => last.name != next.name,
          ),
          BlocBuilder<NavBarCubit, NavBarPages>(
            builder: (ctx, state) => NavItem(
              src: Assets.icons.iconNav4,
              title: 'nav.l4'.tr(),
              onTap: () => ctx.read<NavBarCubit>().next(NavBarPages.profile),
              isSelected: state == NavBarPages.profile,
            ),
            buildWhen: (last, next) => last.name != next.name,
          )
        ],
      ),
    );
  }
}
