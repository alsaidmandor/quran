
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:quran/core/error/failures.dart';
import 'package:quran/core/uitls/app_strings.dart';
import 'package:quran/features/quran/data/model/surah/surah_list.dart';


class DioHelper
 {
  static Dio dio = Dio();

   DioHelper(String baseUrl) {
     BaseOptions baseOptions = BaseOptions(
         receiveTimeout: const Duration(
             seconds:
             30), // db file size 15,665,152 byte minimum 5kbps 3133seconds
         connectTimeout: const Duration(seconds: 30),
         baseUrl: baseUrl,
         maxRedirects: 2);
     dio = Dio(baseOptions);
     // adding logging interceptor.
     dio.interceptors.add(LogInterceptor(
         requestBody: false,
         error: true,
         request: true,
         requestHeader: true,
         responseHeader: true));
   }
 }

 class DioService{
  late Dio dio ;

  DioService(){
    BaseOptions options =BaseOptions(
      baseUrl: AppStrings.baseUrl ,
      receiveDataWhenStatusError: true ,
      connectTimeout:const Duration(seconds: 10) ,
      receiveTimeout: const Duration(seconds: 10),
    );
    dio = Dio(options);
  }

Future<SurahsList> getSurahs()
async {
   Response response = await dio.get(AppStrings.quranEndPoint) ;
   return response.data;
}

}