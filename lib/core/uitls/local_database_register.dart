import 'package:hive_flutter/adapters.dart';

import '../../features/home/data/models/prayer.dart';
import '../../features/quran/data/model/ayat/ayat.dart';
import '../../features/quran/data/model/juzz/juz.dart';
import '../../features/quran/data/model/juzz/juz_list.dart';
import '../../features/quran/data/model/sajda/sajda.dart';
import '../../features/quran/data/model/sajda/sajda_list.dart';
import '../../features/quran/data/model/surah/surah.dart';
import '../../features/quran/data/model/surah/surah_list.dart';

class LocalDatabaseRegister {
  static initHive() async {
    await Hive.initFlutter();
  }

  static registerAdapter() {
    Hive.registerAdapter<Ayat>(AyatAdapter());
    Hive.registerAdapter<JuzList>(JuzListAdapter());
    Hive.registerAdapter<JuzAyahs>(JuzAyahsAdapter());
    Hive.registerAdapter<SajdaList>(SajdaListAdapter());
    Hive.registerAdapter<SajdaAyat>(SajdaAyatAdapter());
    Hive.registerAdapter<SurahsList>(SurahsListAdapter());
    Hive.registerAdapter<Surah>(SurahAdapter());
    Hive.registerAdapter<Prayer>(PrayerAdapter());
    // Hive.registerAdapter<Data>(DataAdapter());
    // Hive.registerAdapter<Timings>(TimingsAdapter());
    // Hive.registerAdapter<Date>(DateAdapter());
    // Hive.registerAdapter<Gregorian>(GregorianAdapter());
    // Hive.registerAdapter<Weekday>(WeekdayAdapter());
    // Hive.registerAdapter<Month>(MonthAdapter());
    // Hive.registerAdapter<Designation>(DesignationAdapter());
  }

  static openHiveBox() async {
    await Hive.openBox('quran');
    await Hive.openBox('prayerTime');
    // await Hive.openBox('location');
  }
}
