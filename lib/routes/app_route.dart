import 'package:coffeeflavor/pages/home_page/home_page.dart';
import 'package:coffeeflavor/pages/login_page/login_page.dart';
import 'package:coffeeflavor/pages/message_page/message_page.dart';
import 'package:coffeeflavor/pages/notification_page/notification_page.dart';
import 'package:coffeeflavor/pages/profile_page/profile_page.dart';
import 'package:coffeeflavor/pages/shop_page/shop_page.dart';
import 'package:coffeeflavor/pages/signup_page/signup_page.dart';
import 'package:coffeeflavor/pages/splash_page/splash_page.dart';
import 'package:coffeeflavor/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppRouter {
  List<GetPage> get pages => [
        _getPage(name: Routes.splashNamedPage, page: () => const SplashPage()),
        _getPage(name: Routes.homeNamedPage, page: () => const HomePage()),
        _getPage(name: Routes.loginNamedPage, page: () => const LoginPage()),
        _getPage(name: Routes.signupNamePage, page: () => const SignupPage()),
        _getPage(name: Routes.messageNamedPage, page: () => const MessagePage()),
        _getPage(name: Routes.notificationNamedPage, page: () => const NotificationPage()),
        _getPage(name: Routes.profileNamedPage, page: () => const ProfilePage()),
        _getPage(name: Routes.shopNamedPage, page: () => const ShopPage()),
      ];
  GetPage _getPage({
    required String name,
    required Widget Function() page,
    Object? args,
    Transition? transition,
    CustomTransition? customTransition,
    Duration? transitionDuration,
    List<Bindings>? bindings,
    bool? fullscreenDialog,
    bool? preventDuplicates,
    bool? opaque,
    bool? maintainState,
    Curve? curve,
    Alignment? alignment,
    List<GetMiddleware>? middlewares,
  }) =>
      GetPage(
        name: name,
        page: page,
        arguments: args,
        bindings: bindings ?? [],
        middlewares: middlewares,
        fullscreenDialog: fullscreenDialog ?? false,
        preventDuplicates: preventDuplicates ?? true,
        maintainState: maintainState ?? true,
        opaque: opaque ?? true,
        curve: curve ?? Curves.linear,
        alignment: alignment,
        transition: transition ?? Transition.rightToLeft,
        transitionDuration: transitionDuration ?? const Duration(milliseconds: 250),
        customTransition: customTransition,
        /** Additional attributes*/
      );
}
