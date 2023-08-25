import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../data/model/juzz/juz_list.dart';
import '../repositories/quran_repository.dart';

class GetJuzUseCase {
  final QuranRepository quranRepository ;

  GetJuzUseCase(this.quranRepository);

  Future<Either<Failure,JuzList> > call (int? index) async
  {
    return  await quranRepository.getJuz(index) ;
  }
}