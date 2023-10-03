import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hijri/hijri_calendar.dart';
import 'package:intl/intl.dart';
import 'package:logger/logger.dart';

import '../color/colors.dart';
import 'assets_manager.dart';

const String PRAYER_TIMING_URL = 'http://api.aladhan.com/v1/timings/';
const String QURAN_BASE_URL = 'http://api.aladhan.com/v1/timings/';

String formattedTime = DateFormat('hh:mm ').format(DateTime.now());
String hour = DateFormat('a').format(DateTime.now());
DateTime nextPrayerTime =
    DateTime(2023, 8, 8, 16, 38); // Example: Next prayer time at 2:00 PM
Duration remainingTime = const Duration();
var dt = DateTime.now();
Duration calculateRemainingTime(DateTime currentTime, DateTime nextPrayerTime) {
  if (nextPrayerTime.isBefore(currentTime)) {
    nextPrayerTime = nextPrayerTime.add(Duration(days: 1));
  }

  return nextPrayerTime.difference(currentTime);
}

Size getSize(BuildContext context) {
  return MediaQuery.of(context).size;
}

String getDateHijri() {
  var _today = HijriCalendar.now();
  var dateHijri = _today.toFormat("MMMM dd , yyyy").toString();
  return dateHijri;
}

Image createAssetImage(String namePath) {
  return Image.asset(
    namePath,
    fit: BoxFit.cover,
    height: 50,
  );
}

SvgPicture createImageSvg(String svgString,
    [double width = 500, double height = 500]) {
  return SvgPicture.string(
    svgString,
    width: width,
    height: height,
  );
}

Widget SpaceLine({required double height, double horizontalPadding = 0}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
    child: Container(
      height: height,
      color: ColorsManager.gray.withOpacity(0.1),
    ),
  );
}

String convertTo12HourFormat(String time) {
  int hour = int.parse(time.split(':')[0]);
  int minute = int.parse(time.split(':')[1]);
  String period = 'AM';

  if (hour >= 12) {
    period = 'PM';
    if (hour > 12) {
      hour -= 12;
    }
  }
  return '$hour : ${minute.toString().padLeft(2, '0')}  $period';
}

List<ImageProvider> playerTimeIcon = [
  AppImages.iconfajr,
  AppImages.iconsunrise,
  AppImages.icondhuhr,
  AppImages.iconAsr,
  AppImages.icondmaghrip,
  AppImages.iconisha,
];

List<Color> playerTimeIconColor = [
  ColorsManager.mainColor,
  ColorsManager.greenboldColor,
  ColorsManager.greenLightColor,
  ColorsManager.blueLightColor,
  ColorsManager.blueLight2Color,
  ColorsManager.blueColor,
];

var logger = Logger(
  printer: PrettyPrinter(),
);

var loggerNoStack = Logger(
  printer: PrettyPrinter(methodCount: 0),
);
