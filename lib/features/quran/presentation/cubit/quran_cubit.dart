import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/core/error/failures.dart';
import 'package:quran/core/uitls/failuer.dart';

import '../../data/model/ayat/ayat.dart';
import '../../data/model/surah/surah.dart';

import '../../domain/use_cases/get_surah_list_user_case.dart';

part 'quran_state.dart';

class QuranCubit extends Cubit<QuranState> {
  GetSurahListUserCase getSurahListUserCase;

  QuranCubit(this.getSurahListUserCase) : super(QuranInitial());

  static QuranCubit get(context) => BlocProvider.of(context);

/*   getSurahs()
  async {
    emit(LoadingQuran());

    Response response = await dioService.dio.get(AppStrings.quranEndPoint) ;
    print('50000');
    if (response.statusCode == 200) {
      // cache in Hive
      // await _hiveBox.put(
      //   'surahList',
      //   SurahsList.fromJSON(
      //     json.decode(response.body),
      //   ),
      // );
      print('LIkes');
      List<Surah>? _surahs = [];
      SurahsList surahsList = SurahsList.fromJSON(response.data ) ;
      _surahs = surahsList.surahs;
      print(surahsList.surahs
      !.length);
      print(_surahs!.length);
      emit(SuccessLoadingQuran(_surahs));
      // return SurahsList.fromJSON(json.decode(response.body));
    } else {
      throw Exception("Failed  to Load Post");
    }  }*/
  List<Surah>? surahs = [];
  List<Ayat>? ayats = [];
  getSurahList() async {
    /* emit(LoadingQuran());
  String url = "http://api.alquran.cloud/v1/quran/quran-uthmani";

  http.Response response = await http.get(
    Uri.parse(url),
  );

  if (response.statusCode == 200) {
    // cache in Hive
    // await _hiveBox.put(
    //   'surahList',
    //   SurahsList.fromJSON(
    //     json.decode(response.body),
    //   ),
    // );
    List<Surah>? _surahs = [];
    SurahsList surahsList = SurahsList.fromJSON(json.decode(response.body)) ;
    _surahs = surahsList.surahs;
    print(surahsList.surahs
        !.length);
    print(_surahs!.length);
    emit(SuccessLoadingQuran(_surahs));
    // return SurahsList.fromJSON(json.decode(response.body));
  } else {
    throw Exception("Failed  to Load Post");
  }*/
    emit(LoadingQuran());
    final getSurahs = await getSurahListUserCase();
    getSurahs.fold((failure) {
      emit(ErrorLoadingQuran(_mapFailureToMessage(failure)));
    }, (surah) => {
    surahs = surah.surahs  ,

      print(surah.surahs!.length),
    emit(SuccessLoadingQuran(surahs))
    });
  }



  int indexItem = 0 ;
  setSelectedItemColor(int index)
  {
    indexItem = index ;
    emit(SelectedItemListQuran(index));
  }
  int? page = 1 ;
  swapPage(int pages){
    if(page != pages)
      {
        page = pages ;
      }
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return SERVER_FAILURE_MESSAGE;
      case EmptyCacheFailure:
        return EMPTY_CACHE_FAILURE_MESSAGE;
      case OfflineFailure:
        return OFFLINE_FAILURE_MESSAGE;
      default:
        return ' Unexpected Error ,  Please try again later .';
    }
  }
}
