import 'package:flutter/material.dart';

// const String imgPath = 'assets/images/';
//
// class ImgAssets {
//   static String background = '${imgPath}background.png';
//   static String mosque = '${imgPath}mosque.png';
//   static String mosqueHomeBackground = '${imgPath}mosquehome.png';
// }

const String _imagePath = 'assets/images';

class _Image extends AssetImage {
  const _Image(String fileName) : super('$_imagePath/$fileName');
}

class AppImages {
  static const background = _Image('background.png');
  static const mosque = _Image('mosque.png');
  static const mosque2 = _Image('mosque2.png');
  static const mosqueHomeBackground = _Image('mosquehome.png');
  static const starterSurah = _Image('bismi.png');
  static const quranArText = _Image('quran.png');
  static const iconAsr = _Image('asricon.png');
  static const icondhuhr = _Image('dhuhricon.png');
  static const icondmaghrip = _Image('maghripicon.png');
  static const iconisha = _Image('ishaicon.png');
  static const iconfajr = _Image('fajricon.png');
  static const iconsunrise = _Image('sunriseicon.png');
}
