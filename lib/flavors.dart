enum Flavor {
  production,
  development,
  staging,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.production:
        return 'COFFEE ZONE';
      case Flavor.development:
        return 'dev COFFEE ZONE';
      case Flavor.staging:
        return 'stag COFFEE ZONE';
      default:
        return 'title';
    }
  }
}
