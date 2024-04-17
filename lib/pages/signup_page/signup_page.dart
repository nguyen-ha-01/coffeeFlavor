import 'package:coffeeflavor/bloc/signup_cube.dart';
import 'package:coffeeflavor/common/widgets/outline_text_input.dart';
import 'package:coffeeflavor/common/widgets/text.dart';
import 'package:coffeeflavor/core/app_text_style.dart';
import 'package:coffeeflavor/core/theme.dart';
import 'package:coffeeflavor/gen/assets.gen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/instance_manager.dart';
import 'package:pinput/pinput.dart';

import '../../common/widgets/button.dart';
import '../../routes/routes.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  _SignupPageState();
  final TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (ctx) => RegisterCubit(),
      child: Scaffold(
        body: SafeArea(
          child: BlocBuilder<RegisterCubit, RegisterPages>(
            builder: (ctx, state) {
              switch (state) {
                case RegisterPages.phone:
                  return phone(ctx);
                case RegisterPages.pinCode:
                  return pin(ctx);

                case RegisterPages.name:
                  return name(ctx);
                default:
                  return Container();
              }
            },
          ),
        ),
      ),
    );
  }

  Widget phone(BuildContext ctx) => Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: SvgPicture.asset(
              Assets.icons.iconRegister,
              width: 222,
              height: 143,
              fit: BoxFit.contain,
            ),
          ),
          TextItem(
            'register.l1'.tr(),
            style: AppTextStyle.boldLb2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 82),
            child: Text(
              'register.l2'.tr(),
              style: AppTextStyle.hint1,
              maxLines: 2,
            ),
          ),
          const SizedBox(
            height: 29,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 58),
            child: TextInputItem(
              leading: () => Text('register.h1'.tr()),
              hint: 'register.h2'.tr(),
              controller: TextEditingController(text: ""),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 58, vertical: 48),
            child: TextButtonWidget(
                onTap: () {
                  ctx.read<RegisterCubit>().next(RegisterPages.pinCode);
                },
                label: 'register.b1'.tr()),
          ),
        ],
      );
  Widget pin(BuildContext ctx) => Column(
        children: [
          const SizedBox(
            height: 68,
          ),
          SvgPicture.asset(Assets.icons.iconRegister2, height: 168, width: 159, fit: BoxFit.contain),
          TextItem(
            'register.l3'.tr(),
            style: AppTextStyle.lb1,
          ),
          Pinput(
            length: 6,
            defaultPinTheme: AppTheme.defaultPinTheme,
            focusedPinTheme: AppTheme.defaultPinTheme.copyWith(
                decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xff6C63FF)),
                    borderRadius: BorderRadius.circular(6),
                    color: const Color(0xffD9D9D9))),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 41, vertical: 46),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 31),
                  child: SizedBox(
                    width: 121,
                    child: TextButton(
                      onPressed: () {},
                      style: AppTheme.noSplashBtn,
                      child: Text(style: AppTextStyle.lb1, 'register.b2'.tr()),
                    ),
                  ),
                ),
                Expanded(
                  child: TextButtonWidget(
                      onTap: () {
                        ctx.read<RegisterCubit>().next(RegisterPages.name);
                      },
                      label: 'register.b3'.tr()),
                )
              ],
            ),
          )
        ],
      );
  Widget name(BuildContext ctx) => Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 31),
            child: SvgPicture.asset(Assets.icons.iconRegister3, height: 233, width: 351, fit: BoxFit.contain),
          ),
          SizedBox(
            height: 44,
            child: Align(
              alignment: Alignment.center,
              child: TextItem(
                'register.l4'.tr(),
                style: AppTextStyle.lb1,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 45),
            child: TextInputItem(leading: () => null, controller: nameController, hint: 'register.h3'.tr()),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 41, vertical: 46),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 31),
                  child: SizedBox(
                    width: 121,
                    child: TextButton(
                      onPressed: () {},
                      style: AppTheme.noSplashBtn,
                      child: Text(style: AppTextStyle.lb1, 'register.b2'.tr()),
                    ),
                  ),
                ),
                Expanded(
                  child: TextButtonWidget(
                      onTap: () {
                        //todo: handle for profile then push to home
                        Get.offNamed(Routes.homeNamedPage);
                      },
                      label: 'register.b4'.tr()),
                )
              ],
            ),
          )
        ],
      );
}
