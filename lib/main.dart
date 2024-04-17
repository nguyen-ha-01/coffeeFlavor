import 'dart:async';

import 'package:coffeeflavor/bloc/bloc_obsever/bloc_observer.dart';
import 'package:coffeeflavor/config/firebase_config.dart';
import 'package:coffeeflavor/config/system.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app.dart';

FutureOr<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: FirebaseConfig.currentPlatform);
  await EasyLocalization.ensureInitialized();
  Bloc.observer = MeBlocObserver();
  runApp(EasyLocalization(
    supportedLocales: SystemConfig.supportedLanguages,
    path: 'assets/i18n',
    fallbackLocale: SystemConfig.defaultLanguage,
    child: const App(),
  ));
}
