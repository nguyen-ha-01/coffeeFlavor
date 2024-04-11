import 'package:coffeeflavor/common/widgets/outline_text_input.dart';
import 'package:flutter/material.dart';

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
        child: SingleChildScrollView(
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
              child: TextWidget(
                leading: () => const Text("+84"),
                hint: "Enter phone number",
                controller: TextEditingController(text: ""),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 58),
              child: TextButtonWidget(onTap: () {}, label: "Sign in"),
            )
          ]),
        ),
      ),
    );
  }
}
