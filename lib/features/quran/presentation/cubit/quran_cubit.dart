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

  List<Surah>? surahs = [];
  List<Ayat>? ayats = [];
  getSurahList() async {
    emit(LoadingQuran());
    final getSurahs = await getSurahListUserCase();
    getSurahs.fold((failure) {
      emit(ErrorLoadingQuran(_mapFailureToMessage(failure)));
    },
        (surah) => {
              surahs = surah.surahs,
              print(surah.surahs!.length),
              emit(SuccessLoadingQuran(surahs))
            });
  }

  int indexItem = 0;
  setSelectedItemColor(int index) {
    indexItem = index;
    emit(SelectedItemListQuran(index));
  }

  int? page = 1;
  swapPage(int pages) {
    if (page != pages) {
      page = pages;
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
