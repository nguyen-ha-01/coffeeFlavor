import 'package:coffeeflavor/common/widgets/outline_text_input.dart';
import 'package:coffeeflavor/core/app_text_style.dart';
import 'package:coffeeflavor/routes/routes.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../../common/widgets/button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  _LoginPageState();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          const SizedBox(
            height: 44,
          ),
          Image.asset(
            'assets/images/app_icon.png',
            width: 231,
            height: 221,
          ),
          const SizedBox(
            height: 170,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 58),
            child: TextInputItem(
              leading: () => Text('login.h1'.tr()),
              hint: 'login.h2'.tr(),
              controller: TextEditingController(text: ""),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 58),
            child: TextButtonWidget(onTap: () {}, label: 'login.b1'.tr()),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 21),
            child: TextButton(
                onPressed: () {
                  Get.offNamed(Routes.signupNamedPage);
                },
                child: Text(
                  'login.b2'.tr(),
                  style: AppTextStyle.boldLb1,
                )),
          )
        ]),
      ),
    );
  }
}
