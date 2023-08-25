part of 'quran_cubit.dart';


abstract class QuranState {}

class QuranInitial extends QuranState {}
class LoadingQuran extends QuranState {}
class SuccessLoadingQuran extends QuranState {
  List<Surah>? surahs ;

  SuccessLoadingQuran(this.surahs);

}
class ErrorLoadingQuran extends QuranState {
  String message ;

  ErrorLoadingQuran(this.message);
}
class SelectedItemListQuran extends QuranState {
  int index ;

  SelectedItemListQuran(this.index);
}
