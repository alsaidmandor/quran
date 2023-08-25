import 'package:dartz/dartz.dart';

import 'package:quran/core/error/failures.dart';
import 'package:quran/features/home/data/data_sources/remote/remote_prayer_time_data_source.dart';


import '../../../../core/error/exceptions.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/repositories/prayer_time_repository.dart';
import '../models/prayer.dart';

class PrayerTimeRepositoryImpl implements PrayerTimeRepository
{
  final RemotePrayerTimeDataSource remotePrayerTime ;
  final NetworkInfo   networkInfo ;

  PrayerTimeRepositoryImpl({required this.networkInfo,required this.remotePrayerTime});
  @override
  Future<Either<Failure, Prayer>> getPrayerTime({required String year , required String month,required String city, required String country}) async{
        if(await networkInfo.isConnected)
        {
          try{

            Prayer prayerTime =await remotePrayerTime.getPrayerTime(year: year,month: month,city: city, country: country);

            return Right(prayerTime);

          }on ServerException {
            return left(ServerFailure()) ;
          }
        }
        else{
          return left(ServerFailure()) ;
        }
  }

}