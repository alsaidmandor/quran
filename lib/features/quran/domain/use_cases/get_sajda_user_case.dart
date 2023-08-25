import 'package:dartz/dartz.dart';
import 'package:quran/features/quran/domain/repositories/quran_repository.dart';

import '../../../../core/error/failures.dart';
import '../../data/model/sajda/sajda_list.dart';

class GetSajdaUseCase {
  final QuranRepository quranRepository ;

  GetSajdaUseCase(this.quranRepository);

  Future<Either<Failure,SajdaList> > call () async
  {
    return  await quranRepository.getSajda() ;
  }
}