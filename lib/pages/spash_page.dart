import 'package:coffeeflavor/bloc/base/base_state.dart';
import 'package:coffeeflavor/bloc/splash_bloc.dart';
import 'package:coffeeflavor/common/utils/extention.dart';
import 'package:coffeeflavor/gen/assets.gen.dart';
import 'package:coffeeflavor/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (ctx) => SplashCubit()..init(),
      child: Scaffold(
        body: BlocListener<SplashCubit, BaseCubitState>(
          listener: (ctx, state) {
            if (state.status == Status.success) {
              Get.offAllNamed(Routes.homeNamedPage);
            }
          },
          child: SizedBox(
            width: context.widthDevice,
            height: context.heightDevice,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Lottie.asset(Assets.anim.coffee,
                    width: 488, fit: BoxFit.fill, alignment: Alignment.center, height: 366),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Lottie.asset(Assets.anim.loading,
                      width: 100, height: 100, fit: BoxFit.fill, backgroundLoading: true),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
