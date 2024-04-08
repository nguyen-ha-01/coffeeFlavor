import 'package:coffeeflavor/pages/my_home_page.dart';
import 'package:coffeeflavor/pages/spash_page.dart';
import 'package:coffeeflavor/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppRouter {
  List<GetPage> get pages => [
        _getPage(name: Routes.splashNamedPage, page: () => const SplashPage()),
        _getPage(name: Routes.homeNamedPage, page: () => MyHomePage())
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
