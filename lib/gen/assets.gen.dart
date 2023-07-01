/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsIconGen {
  const $AssetsIconGen();

  /// File path: assets/icon/account.svg
  SvgGenImage get account => const SvgGenImage('assets/icon/account.svg');

  /// File path: assets/icon/home.svg
  SvgGenImage get home => const SvgGenImage('assets/icon/home.svg');

  /// File path: assets/icon/inbox.svg
  SvgGenImage get inbox => const SvgGenImage('assets/icon/inbox.svg');

  /// File path: assets/icon/income.svg
  SvgGenImage get income => const SvgGenImage('assets/icon/income.svg');

  /// File path: assets/icon/loan.svg
  SvgGenImage get loan => const SvgGenImage('assets/icon/loan.svg');

  /// File path: assets/icon/outcome.svg
  SvgGenImage get outcome => const SvgGenImage('assets/icon/outcome.svg');

  /// File path: assets/icon/reporting.svg
  SvgGenImage get reporting => const SvgGenImage('assets/icon/reporting.svg');

  /// File path: assets/icon/top-up.svg
  SvgGenImage get topUp => const SvgGenImage('assets/icon/top-up.svg');

  /// File path: assets/icon/transaction.svg
  SvgGenImage get transaction =>
      const SvgGenImage('assets/icon/transaction.svg');
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/addbill.png
  AssetGenImage get addbill => const AssetGenImage('assets/images/addbill.png');

  /// File path: assets/images/arrowDownSmall.png
  AssetGenImage get arrowDownSmall =>
      const AssetGenImage('assets/images/arrowDownSmall.png');

  /// File path: assets/images/borrow.png
  AssetGenImage get borrow => const AssetGenImage('assets/images/borrow.png');

  /// File path: assets/images/bulan.png
  AssetGenImage get bulan => const AssetGenImage('assets/images/bulan.png');

  /// File path: assets/images/calender.png
  AssetGenImage get calender =>
      const AssetGenImage('assets/images/calender.png');

  /// File path: assets/images/deposit.png
  AssetGenImage get deposit => const AssetGenImage('assets/images/deposit.png');

  /// File path: assets/images/expenses.png
  AssetGenImage get expenses =>
      const AssetGenImage('assets/images/expenses.png');

  /// File path: assets/images/hutang.png
  AssetGenImage get hutang => const AssetGenImage('assets/images/hutang.png');

  /// File path: assets/images/laporan.png
  AssetGenImage get laporan => const AssetGenImage('assets/images/laporan.png');

  /// File path: assets/images/matahari.png
  AssetGenImage get matahari =>
      const AssetGenImage('assets/images/matahari.png');

  /// File path: assets/images/notificationbell.png
  AssetGenImage get notificationbell =>
      const AssetGenImage('assets/images/notificationbell.png');

  /// File path: assets/images/pemasukan.png
  AssetGenImage get pemasukan =>
      const AssetGenImage('assets/images/pemasukan.png');

  /// File path: assets/images/pengeluaran.png
  AssetGenImage get pengeluaran =>
      const AssetGenImage('assets/images/pengeluaran.png');

  /// File path: assets/images/piutang.png
  AssetGenImage get piutang => const AssetGenImage('assets/images/piutang.png');

  /// File path: assets/images/tagihan.png
  AssetGenImage get tagihan => const AssetGenImage('assets/images/tagihan.png');

  /// File path: assets/images/user.png
  AssetGenImage get user => const AssetGenImage('assets/images/user.png');
}

class Assets {
  Assets._();

  static const $AssetsIconGen icon = $AssetsIconGen();
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
    String? package = 'mondays_two',
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

  String get path => _assetName;

  String get keyName => 'packages/mondays_two/$_assetName';
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package = 'mondays_two',
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    Color? color,
    BlendMode colorBlendMode = BlendMode.srcIn,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    Clip clipBehavior = Clip.hardEdge,
    bool cacheColorFilter = false,
    SvgTheme? theme,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      color: color,
      colorBlendMode: colorBlendMode,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
      theme: theme,
    );
  }

  String get path => _assetName;
}
