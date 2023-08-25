import 'package:dartz/dartz.dart';
import 'package:quran/features/quran/domain/repositories/quran_repository.dart';

import '../../../../core/error/failures.dart';
import '../../data/model/surah/surah_list.dart';

class GetSurahListUserCase {
 final  QuranRepository quranRepository ;

 GetSurahListUserCase(this.quranRepository);

 Future<Either<Failure,SurahsList> > call () async
 {
   return  await quranRepository.getSurahList() ;
 }
}