import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../data/models/prayer.dart';

abstract class PrayerTimeRepository
{
  Future<Either<Failure,Prayer>> getPrayerTime({required String year , required String month,required String city , required String country}) ;


}