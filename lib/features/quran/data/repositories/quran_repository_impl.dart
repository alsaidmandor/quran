import 'package:dartz/dartz.dart';
import 'package:quran/core/error/failures.dart';
import 'package:quran/features/quran/data/model/juzz/juz_list.dart';
import 'package:quran/features/quran/data/model/sajda/sajda_list.dart';
import 'package:quran/features/quran/data/model/surah/surah_list.dart';
import 'package:quran/features/quran/domain/repositories/quran_repository.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/network/network_info.dart';
import '../../../../core/uitls/constants.dart';
import '../local/quran_local_data_source.dart';
import '../remote/quran_remote_data_source.dart';

class QuranRepositoryImpl extends QuranRepository {
  final QuranRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;
  final QuranLocalDataSource quranLocalDataSource;
  QuranRepositoryImpl(
      {required this.quranLocalDataSource,
      required this.remoteDataSource,
      required this.networkInfo});

  @override
  Future<Either<Failure, JuzList>> getJuz(int? index) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteGetJuz = await remoteDataSource.getJuz(index);
        return Right(remoteGetJuz);
      } on ServerException {
        return left(ServerFailure());
      }
    } else {
      try {
        final cacheGetJuz = await quranLocalDataSource.getLocalJuz(index);
        return Right(cacheGetJuz!);
      } on ServerException {
        return left(OfflineFailure());
      }
    }
  }

  @override
  Future<Either<Failure, SajdaList>> getSajda() async {
    if (await networkInfo.isConnected) {
      try {
        SajdaList sajdaList = await remoteDataSource.getSajda();

        return Right(sajdaList);
      } on ServerException {
        return left(ServerFailure());
      }
    } else {
      try {
        final cacheGetSajdaList = await quranLocalDataSource.getLocalSajda();
        return Right(cacheGetSajdaList!);
      } on ServerException {
        return left(OfflineFailure());
      }
    }
  }

  @override
  Future<Either<Failure, SurahsList>> getSurahList() async {
    if (await networkInfo.isConnected) {
      try {
        SurahsList surahsList = await remoteDataSource.getSurahList();
        print('Internet is connected');
        logger.d('Internet is   connected');
        loggerNoStack.i(surahsList.surahs?.length);
        return Right(surahsList);
      } on ServerException {
        return left(ServerFailure());
      }
    } else {
      try {
        final cacheGetSurahsList =
            await quranLocalDataSource.getLocalSurahList();
        print("Internet is not  connected");
        logger.d('Internet is not  connected');
        loggerNoStack.i(cacheGetSurahsList?.surahs?.length);
        await quranLocalDataSource.closeCacheHiveBox();
        return Right(cacheGetSurahsList!);
      } on ServerException {
        return left(OfflineFailure());
      }
    }
  }
}
