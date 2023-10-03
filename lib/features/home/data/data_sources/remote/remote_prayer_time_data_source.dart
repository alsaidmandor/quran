import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../models/prayer.dart';
import '../local/local_prayer_time_data_source.dart';

abstract class RemotePrayerTimeDataSource {
  Future<Prayer> getPrayerTime(
      {required String year,
      required String month,
      required String city,
      required String country});
}

class RemotePrayerTimeDataSourceImpl implements RemotePrayerTimeDataSource {
  final LocalPrayerTimeDataSource localPrayerTimeDataSource;

  RemotePrayerTimeDataSourceImpl({required this.localPrayerTimeDataSource});

  @override
  Future<Prayer> getPrayerTime(
      {required String year,
      required String month,
      required String city,
      required String country}) async {
    String url =
        "https://api.aladhan.com/v1/calendarByCity/$year/$month?city=$city&country=$country&method=5";

    final response = await http.get(
      Uri.parse(url),
    );

    if (response.statusCode == 200) {
      print(json.decode(response.body));

      //cache hive
      localPrayerTimeDataSource.setPrayerTime(response.body);
      localPrayerTimeDataSource.closeCacheHiveBox();

      return Prayer.fromJson(json.decode(response.body));
    } else {
      throw Exception("Failed  to Load Post");
    }
  }
}
