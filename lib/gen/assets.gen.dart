/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsAnimGen {
  const $AssetsAnimGen();

  /// File path: assets/anim/coffee.json
  String get coffee => 'assets/anim/coffee.json';

  /// File path: assets/anim/loading.json
  String get loading => 'assets/anim/loading.json';

  /// List of all assets
  List<String> get values => [coffee, loading];
}

class $AssetsI18nGen {
  const $AssetsI18nGen();

  /// File path: assets/i18n/en-US.json
  String get enUS => 'assets/i18n/en-US.json';

  /// File path: assets/i18n/vi-VI.json
  String get viVI => 'assets/i18n/vi-VI.json';

  /// List of all assets
  List<String> get values => [enUS, viVI];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/icon_cate_coffee.svg
  String get iconCateCoffee => 'assets/icons/icon_cate_coffee.svg';

  /// File path: assets/icons/icon_home_like.svg
  String get iconHomeLike => 'assets/icons/icon_home_like.svg';

  /// File path: assets/icons/icon_home_star.svg
  String get iconHomeStar => 'assets/icons/icon_home_star.svg';

  /// File path: assets/icons/icon_nav_1.svg
  String get iconNav1 => 'assets/icons/icon_nav_1.svg';

  /// File path: assets/icons/icon_nav_2.svg
  String get iconNav2 => 'assets/icons/icon_nav_2.svg';

  /// File path: assets/icons/icon_nav_3.svg
  String get iconNav3 => 'assets/icons/icon_nav_3.svg';

  /// File path: assets/icons/icon_nav_4.svg
  String get iconNav4 => 'assets/icons/icon_nav_4.svg';

  /// File path: assets/icons/icon_register.svg
  String get iconRegister => 'assets/icons/icon_register.svg';

  /// File path: assets/icons/icon_register_2.svg
  String get iconRegister2 => 'assets/icons/icon_register_2.svg';

  /// File path: assets/icons/icon_register_3.svg
  String get iconRegister3 => 'assets/icons/icon_register_3.svg';

  /// List of all assets
  List<String> get values => [
        iconCateCoffee,
        iconHomeLike,
        iconHomeStar,
        iconNav1,
        iconNav2,
        iconNav3,
        iconNav4,
        iconRegister,
        iconRegister2,
        iconRegister3
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/app_icon.png
  AssetGenImage get appIcon =>
      const AssetGenImage('assets/images/app_icon.png');

  /// File path: assets/images/demo_data.png
  AssetGenImage get demoData =>
      const AssetGenImage('assets/images/demo_data.png');

  /// List of all assets
  List<AssetGenImage> get values => [appIcon, demoData];
}

class Assets {
  Assets._();

  static const $AssetsAnimGen anim = $AssetsAnimGen();
  static const $AssetsI18nGen i18n = $AssetsI18nGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
