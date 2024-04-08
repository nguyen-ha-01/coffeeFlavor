import 'dart:ui';

import 'package:coffeeflavor/flavors.dart';

class SystemConfig {
  static const supportedLanguages = [Locale('vi', 'VI'), Locale('en', 'US')];
  static const defaultLanguage = Locale('vi', 'VI');

  static const int receiveTimeout = 60000;
  static const int connectionTimeout = 60000;
  static const header = {
    'Content-Type': 'application/json',
    'Accept': 'application/json',
  };
}

class URL {
  static const String _devUrl = '';
  static const String _uatUrl = '';
  static String getBaseURL() => F.appFlavor == Flavor.development ? URL._devUrl : URL._uatUrl;
}
