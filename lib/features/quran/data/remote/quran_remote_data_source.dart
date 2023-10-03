import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:quran/core/network/dio_helper.dart';
import 'package:quran/core/uitls/app_strings.dart';
import 'package:quran/features/quran/data/local/quran_local_data_source.dart';
import 'package:quran/features/quran/data/model/juzz/juz_list.dart';
import 'package:quran/features/quran/data/model/sajda/sajda_list.dart';
import 'package:quran/features/quran/data/model/surah/surah_list.dart';

abstract class QuranRemoteDataSource {
  Future<SurahsList> getSurahList();
  Future<SajdaList> getSajda();
  Future<JuzList> getJuz(int? index);
}

class QuranRemoteDataSourceImpl extends QuranRemoteDataSource {
  // DioHelper  helper ;
  //
  // QuranRemoteDataSourceImpl(this.helper);
  DioService dioService;
  QuranLocalDataSource quranLocalDataSource;

  QuranRemoteDataSourceImpl({
    required this.dioService,
    required this.quranLocalDataSource,
  });
  @override
  Future<JuzList> getJuz(int? index) async {
    var response = await dioService.dio.get('$index ${AppStrings.juzEndPoint}');

    if (response.statusCode == 200) {
      quranLocalDataSource.setLocalJuz(index!, response.data);
      quranLocalDataSource.closeCacheHiveBox();
      return JuzList.fromJSON(jsonDecode(response.data));
    } else {
      throw response.statusCode.toString();
    }
  }

  @override
  Future<SajdaList> getSajda() async {
    var response = await dioService.dio.get(AppStrings.sajdaEndPoint);

    if (response.statusCode == 200) {
      quranLocalDataSource.setLocalSajda(response.data);
      quranLocalDataSource.closeCacheHiveBox();
      return SajdaList.fromJson(jsonDecode(response.data));
    } else {
      throw response.statusCode.toString();
    }
  }

  @override
  Future<SurahsList> getSurahList() async {
    try {
      Response response = await dioService.dio.get(AppStrings.quranEndPoint);
      print(response.statusCode);
      if (response.statusCode == 200) {
        print('LIkes');
        quranLocalDataSource.setLocalSurahList(response.data);
        quranLocalDataSource.closeCacheHiveBox();
        print(response.data.runtimeType);
        SurahsList surahsList = SurahsList.fromJSON(response.data);
        print(surahsList.surahs!.length);

        return surahsList;
      } else {
        throw Exception("Failed  to Load List Of Surah");
      }
    } catch (e) {
      throw Exception('Failed to fetch Quran == ${e.toString()}');
    }
    /*  var  response = await DioHelper.dio.get(AppStrings.quranEndPoint);

    if(response.statusCode == 200)
    {
      final Map<String, dynamic> json = response.data;

      final surahList = SurahsListModel.fromJson(json);
      return  surahList ;
    }
    else
    {
      throw response.statusCode.toString() ;
    }
  }*/
  }
}
