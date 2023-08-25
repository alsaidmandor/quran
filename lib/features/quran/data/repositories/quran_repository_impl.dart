
 import 'package:dartz/dartz.dart';
import 'package:quran/core/error/failures.dart';
import 'package:quran/features/quran/data/model/juzz/juz_list.dart';
import 'package:quran/features/quran/data/model/sajda/sajda_list.dart';
import 'package:quran/features/quran/data/model/surah/surah_list.dart';
import 'package:quran/features/quran/domain/repositories/quran_repository.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/network/network_info.dart';
import '../model/surah/surah.dart';
import '../remote/quran_remote_data_source.dart';

class QuranRepositoryImpl extends QuranRepository
{
  final QuranRemoteDataSource remoteDataSource ;
 final NetworkInfo   networkInfo ;

  QuranRepositoryImpl({required this.remoteDataSource , required this.networkInfo});

  @override
  Future<Either<Failure, JuzList>> getJuz(int? index) async
  {

    if(await networkInfo.isConnected)
      {
        try{

          final remoteGetJuz = await remoteDataSource.getJuz(index);
          return Right(remoteGetJuz);

        }on ServerException {
          return left(ServerFailure()) ;
        }
      }
    else{
      return left(ServerFailure()) ;
    }

  }

  @override
  Future<Either<Failure, SajdaList>> getSajda() {
    // TODO: implement getSajda
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, SurahsList>> getSurahList() async {
    if(await networkInfo.isConnected)
    {
      try{

        SurahsList surahsList = await remoteDataSource.getSurahList();

        return Right(surahsList);

      }on ServerException {
        return left(ServerFailure()) ;
      }
    }
    else{
      return left(ServerFailure()) ;
    }
  }

}