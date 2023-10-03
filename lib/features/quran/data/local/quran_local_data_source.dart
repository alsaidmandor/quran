import 'package:hive/hive.dart';

import '../model/juzz/juz_list.dart';
import '../model/sajda/sajda_list.dart';
import '../model/surah/surah_list.dart';

abstract class QuranLocalDataSource {
  Future<void> setLocalSurahList(Map<String, dynamic> json);
  Future<void> setLocalSajda(Map<String, dynamic> json);
  Future<void> setLocalJuz(int index, Map<String, dynamic> json);
  Future<SurahsList?> getLocalSurahList();
  Future<SajdaList?> getLocalSajda();
  Future<JuzList?> getLocalJuz(int? index);
  Future<void> closeCacheHiveBox();
}

class QuranLocalDataSourceImpl implements QuranLocalDataSource {
  final hiveBox = Hive.box('quran');

  @override
  Future<SajdaList?> getLocalSajda() async {
    SajdaList? cacheSajdaList = await hiveBox.get('sajdaList');
    return cacheSajdaList;
  }

  @override
  Future<SurahsList?> getLocalSurahList() async {
    SurahsList? cacheSurahList = await hiveBox.get('surahList');
    return cacheSurahList;
  }

  @override
  Future<JuzList?> getLocalJuz(int? index) async {
    JuzList? cacheJuzList = await hiveBox.get('juzList$index');
    return cacheJuzList;
  }

  @override
  Future<void> setLocalJuz(int index, Map<String, dynamic> json) async {
    hiveBox.put(
      'juzList$index',
      JuzList.fromJSON(
        json,
      ),
    );
  }

  @override
  Future<void> setLocalSajda(Map<String, dynamic> json) async {
    await hiveBox.put(
      'sajdaList',
      SajdaList.fromJSON(
        json,
      ),
    );
  }

  @override
  Future<void> setLocalSurahList(Map<String, dynamic> json) async {
    await hiveBox.put(
      'surahList',
      SurahsList.fromJSON(json),
    );
  }

  @override
  Future<void> closeCacheHiveBox() async {
    await hiveBox.close();
  }
}
