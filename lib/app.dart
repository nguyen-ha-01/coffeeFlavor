import 'package:coffeeflavor/config/system.dart';
import 'package:coffeeflavor/routes/app_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'flavors.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: F.title,
      navigatorObservers: [],
      getPages: AppRouter().pages,
      locale: SystemConfig.defaultLanguage,
      themeMode: ThemeMode.light,
    );
  }
}
