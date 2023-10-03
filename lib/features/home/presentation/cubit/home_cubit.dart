import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocoding/geocoding.dart';
import 'package:intl/intl.dart';
import 'package:location/location.dart';

import '../../../../core/network/network_info.dart';
import '../../../../core/uitls/constants.dart';
import '../../../../core/uitls/location.dart';
import '../../data/models/prayer.dart';
import '../../domain/use_cases/get_prayer_time_use_case.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  GetPrayerTimeUseCase getPrayerTimeUseCase;
  final NetworkInfo networkInfo;

  HomeCubit({required this.getPrayerTimeUseCase, required this.networkInfo})
      : super(HomeInitial());

  LocationData? currentLocation;
  String? addressString;

  static HomeCubit get(context) => BlocProvider.of(context);

  // final _hiveBox = Hive.box('location');

  /*Future<LocationData?> getLocation() async {
    emit(HomeLoadLocation()) ;
    Location location = Location();
    LocationData locationData;

    bool serviceEnabled;
    PermissionStatus permissionGranted;

    serviceEnabled = await location.serviceEnabled();
    if (!serviceEnabled) {
      emit(HomeRequestService());
      serviceEnabled = await location.requestService();
      if (!serviceEnabled) {
        return null;
      }
    }

    permissionGranted = await location.hasPermission();
    if (permissionGranted == PermissionStatus.denied) {
      permissionGranted = await location.requestPermission();
      if (permissionGranted != PermissionStatus.granted) {
        return null;
      }
    }


    locationData = await location.getLocation();

    return locationData;
  }
    Address? address ;
  Future<String> getAddress(double? lat, double? lang) async {
    if (lat == null || lang == null) return "";
    GeoCode geoCode = GeoCode();
     address =
    await geoCode.reverseGeocoding(latitude: lat, longitude: lang);
    return "${address?.streetAddress}, ${address!.city}, ${address!.countryName}, ${address!.postal}";
  }

  void getCurrentLocation() {
    emit(HomeLoadCurrentLocation());
    getLocation().then((value) {
      LocationData? location = value;
      getAddress(location?.latitude, location?.longitude)
          .then((value) {
            emit(HomeGetCurrentLocation());
        currentLocation = location;
        addressString = value;

        print(value.toString());
      });
    });
  }*/

  String timeString = ' ';

  // void getCurrentTime() {
  //   DateTime now = DateTime.now();
  //   String formattedTime = DateFormat('HH:mm:ss').format(now);
  //   emit(HomeGetTimeNow(formattedTime));
  //   timeString = formattedTime ;
  // }

  void calculateTimeDifference({required DateTime nextPrayerTime}) {
    DateTime currentTime =
        DateFormat('hh:mm :ss').format(DateTime.now()) as DateTime;
    final difference = nextPrayerTime.difference(currentTime);

    emit(HomePrayerTime(
      timeDifference: difference,
    ));
  }

  Placemark? placeMark;

  String? myLocation;

  void getLocation(context) async {
    if (await networkInfo.isConnected) {
      final service = UsersLocation();
      emit(HomeLoadCurrentLocation());
      final locationData = await service.getLocation();
      if (locationData != null) {
        try {
          emit(HomeGetCurrentLocation());

          // await _hiveBox.put(
          //   'locationData',
          //   locationData,
          // );
          placeMark = await service.getPlaceMark(locationData: locationData);
          // await _hiveBox.put(
          //   'placeMark',
          //   placeMark,
          // );
          // _hiveBox.close();
          myLocation =
              '${placeMark!.subAdministrativeArea},${placeMark!.locality}';
          print(placeMark?.subLocality);
        } catch (e) {
          print(e);
        }
        getTimePrayer();
      }
    } else {
      // var locationData = await _hiveBox.get('locationData');
      // placeMark = await _hiveBox.get('placeMark');
      // myLocation = '${placeMark!.subAdministrativeArea},${placeMark!.locality}';
    }
  }

  List<Data> prayerTime = [];

  DateTime? nextPrayerTime;

  List<Timings> timings = [];

  getTimePrayer() async {
    emit(HomeGetPrayerTimeLoading());
    final getTime = await getPrayerTimeUseCase(
      year: dt.year.toString(),
      month: dt.month.toString(),
      country: placeMark!.country.toString(),
      city: placeMark!.subAdministrativeArea.toString(),
    );
    getTime.fold((failure) {
      emit(HomeGetPrayerTimeError());
    }, (time) {
      prayerTime = time.data!;
      getTimeInList(time);
      print('=================${placeMark!.subAdministrativeArea}');
      emit(HomeGetPrayerTimeSuccess());
    });
  }

  void getTimeInList(Prayer prayerTime) {
    for (int i = 0; i <= prayerTime.data!.length; i++) {
      // timings.add(Prayer.![i].timings);
      Timings? t = prayerTime.data![i].timings;

      timings.add(t!);
    }
    print(
        '${prayerTime.data!.length.toString()}====================================================');
  }

  int indexItem = 0;

  setSelectedItemColor(int index) {
    indexItem = index;
  }

  bool isSelectedCheckBox = false;

  setSelectedCheckBox() {
    isSelectedCheckBox = !isSelectedCheckBox;
  }

  String nextTime = '';

  String key = '';

  setCompareBetweenCurrentTimeAndTimePrayer(String compareTime, String key) {
    DateFormat format = DateFormat('HH:mm');
    DateTime now = DateTime.now();
    DateTime prayerTime = format.parse(compareTime);

    if (prayerTime.isAfter(now)) {
      print('ok');
      // key= key ;
      // nextTime = compareTime;

      key = key;
      nextTime = compareTime;
    }

    // else{
    //   print('failed');
    // }
    /*   if(now.hour > prayerTime.hour && now.minute > prayerTime.minute)
      {
        print(now.toString());
      }
    else{
      print('failed');
      key= key ;
      nextTime = compareTime;
    }
  }*/
  }

  int index = 0;
  MapEntry<String, dynamic>? nextPrayer;
  int nextPrayerIndex = 0;

  getNextPrayerTime() {
    DateTime now = DateTime.now();
    TimeOfDay currentTime = TimeOfDay.fromDateTime(now);

    int day = dt.day - 1;
    for (var prayerEntry in timings[day].toJson().entries) {
      TimeOfDay prayerTime = TimeOfDay(
        hour: int.parse(
            prayerEntry.value.toString().substring(0, 5).split(':')[0]),
        minute: int.parse(
            prayerEntry.value.toString().substring(0, 5).split(':')[1]),
      );
      DateTime nextTimePrayerTime = DateTime(
        now.year,
        now.month,
        now.day,
        prayerTime.hour,
        prayerTime.minute,
      );

      if (nextTimePrayerTime.isAfter(now)) {
        nextPrayer = prayerEntry;
        if (index > timings[day].toJson().length) {
          index = 0;
          nextPrayer = null;
          break;
        } else {
          nextPrayerIndex = index;
          print(nextPrayerIndex);
          break;
        }
        print(prayerEntry.value.toString());
      }

      index++;

      if (nextPrayer != null) {
        break;
      }
    }

    if (nextPrayer == null) {
      nextPrayer = timings[dt.day].toJson().entries.first;
      nextPrayerIndex = 0;
    }
  }
}
