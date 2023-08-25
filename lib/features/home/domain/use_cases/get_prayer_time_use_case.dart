import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../data/models/prayer.dart';
import '../repositories/prayer_time_repository.dart';

class GetPrayerTimeUseCase {
  final PrayerTimeRepository  prayerTimeRepository ;

  GetPrayerTimeUseCase(this.prayerTimeRepository);

  Future<Either<Failure, Prayer>> call ({required String year , required String month,required String city , required String country}) async
  {
    return  await prayerTimeRepository.getPrayerTime(year: year,month: month,city: city , country: country);
  }
}