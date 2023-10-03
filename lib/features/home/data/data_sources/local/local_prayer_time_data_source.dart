import 'dart:convert';

import 'package:hive/hive.dart';

import '../../models/prayer.dart';

abstract class LocalPrayerTimeDataSource {
  Future<void> setPrayerTime(String response);
  Future<Prayer?> getPrayerTime();
  Future<void> closeCacheHiveBox();
}

class LocalPrayerTimeDataSourceImpl implements LocalPrayerTimeDataSource {
  final hiveBox = Hive.box('prayerTime');

  @override
  Future<void> closeCacheHiveBox() async {
    await hiveBox.close();
  }

  @override
  Future<Prayer?> getPrayerTime() async {
    Prayer? cachePrayerTime = await hiveBox.get('surahList');
    return cachePrayerTime;
  }

  @override
  Future<void> setPrayerTime(String response) async {
    await hiveBox.put(
      'prayerTime',
      Prayer.fromJson(json.decode(response)),
    );
  }
}
