
import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../data/model/juzz/juz_list.dart';
import '../../data/model/sajda/sajda_list.dart';
import '../../data/model/surah/surah_list.dart';

abstract class QuranRepository
{

  Future<Either<Failure,SurahsList> > getSurahList();
  Future<Either<Failure,SajdaList>> getSajda() ;
  Future<Either<Failure,JuzList>> getJuz(int? index) ;
}