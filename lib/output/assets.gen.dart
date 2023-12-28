/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsColorsGen {
  const $AssetsColorsGen();

  /// File path: assets/colors/color.xml
  String get color => 'assets/colors/color.xml';

  /// List of all assets
  List<String> get values => [color];
}

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/Montserrat-Bold.ttf
  String get montserratBold => 'assets/fonts/Montserrat-Bold.ttf';

  /// File path: assets/fonts/Montserrat-Medium.ttf
  String get montserratMedium => 'assets/fonts/Montserrat-Medium.ttf';

  /// File path: assets/fonts/Montserrat-Regular.ttf
  String get montserratRegular => 'assets/fonts/Montserrat-Regular.ttf';

  /// List of all assets
  List<String> get values =>
      [montserratBold, montserratMedium, montserratRegular];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/bill.png
  AssetGenImage get bill => const AssetGenImage('assets/icons/bill.png');

  /// File path: assets/icons/branches.png
  AssetGenImage get branches =>
      const AssetGenImage('assets/icons/branches.png');

  /// File path: assets/icons/dashboard.png
  AssetGenImage get dashboard =>
      const AssetGenImage('assets/icons/dashboard.png');

  /// File path: assets/icons/funds.png
  AssetGenImage get funds => const AssetGenImage('assets/icons/funds.png');

  /// File path: assets/icons/messages.png
  AssetGenImage get messages =>
      const AssetGenImage('assets/icons/messages.png');

  /// List of all assets
  List<AssetGenImage> get values =>
      [bill, branches, dashboard, funds, messages];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/user.jpg
  AssetGenImage get user => const AssetGenImage('assets/images/user.jpg');

  /// List of all assets
  List<AssetGenImage> get values => [user];
}

class Assets {
  Assets._();

  static const $AssetsColorsGen colors = $AssetsColorsGen();
  static const $AssetsFontsGen fonts = $AssetsFontsGen();
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
