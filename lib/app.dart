import 'package:coffeeflavor/routes/app_route.dart';
import 'package:coffeeflavor/service/live_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

import 'flavors.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => LiveTheme(),
      child: GetMaterialApp(
        title: F.title,
        localizationsDelegates: context.localizationDelegates,
        navigatorObservers: [GetObserver()],
        getPages: AppRouter().pages,
        locale: context.locale,
        themeMode: ThemeMode.light,
      ),
    );
  }
}
