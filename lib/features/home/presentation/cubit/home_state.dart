part of 'home_cubit.dart';

@immutable
abstract class HomeState {}

class HomeInitial extends HomeState {}
class HomeLoadLocation extends HomeState {}
class HomeRequestService extends HomeState {}
class HomeGetCurrentLocation extends HomeState {}
class HomeLoadCurrentLocation extends HomeState {}
class HomeGetPrayerTimeLoading extends HomeState {}
class HomeGetPrayerTimeSuccess extends HomeState {}
class HomeGetPrayerTimeError extends HomeState {}
class HomePrayerTime extends HomeState {
  final Duration timeDifference ;
  HomePrayerTime( {required  this.timeDifference});

  HomePrayerTime copyWith({
    Duration? timeDifference,
    String? currentTime,
  }) {
    return HomePrayerTime(
      timeDifference: timeDifference ?? this.timeDifference,
    );
  }
}
