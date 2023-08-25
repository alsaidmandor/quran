import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocoding/geocoding.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';
import 'package:location/location.dart';
import 'package:geocode/geocode.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import '../../../../core/notification/notification_service.dart';
import '../../../../core/uitls/constants.dart';
import '../../../../core/uitls/location.dart';
import '../../data/models/prayer.dart';
import '../../data/models/prayer_time.dart';
import '../../domain/use_cases/get_prayer_time_use_case.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  GetPrayerTimeUseCase getPrayerTimeUseCase;

  HomeCubit(this.getPrayerTimeUseCase) : super(HomeInitial());

  LocationData? currentLocation;
  String? addressString;

  static HomeCubit get(context) => BlocProvider.of(context);

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
    final service = UsersLocation();
    emit(HomeLoadCurrentLocation());
    final locationData = await service.getLocation();
    if (locationData != null) {
      try {
        emit(HomeGetCurrentLocation());
        NotificationService.home(context)
            .showNonRemovableNotification('0', 'Asr', '.023548');

        placeMark = await service.getPlaceMark(locationData: locationData);
        myLocation =
        '${placeMark!.subAdministrativeArea},${placeMark!.locality}';
        print(placeMark?.subLocality);
      } catch (e) {
        print(e);
      }
      getTimePrayer();
    }
  }

  List<Data> prayerTime = [];

  DateTime? nextPrayerTime;

  // Future<void> getPrayerTime() async {
  //   String url =
  //       "https://api.aladhan.com/v1/calendarByCity/${dt.year}/${dt.month}?city=${placeMark?.subAdministrativeArea}&country=${placeMark!.country}&method=5";
  //
  //   final response = await http.get(
  //     Uri.parse(url),
  //   );
  //
  //   if (response.statusCode == 200) {
  //     prayerTime = PrayerTime.fromJson(json.decode(response.body)).data!;
  //
  //     print(json.decode(response.body));
  //   } else {
  //     throw Exception("Failed  to Load Post");
  //   }
  // }

  List<Timings> timings = [];

  getTimePrayer() async {
    emit(HomeGetPrayerTimeLoading());
    final getTime = await getPrayerTimeUseCase(
      year: dt.year.toString(),
      month: dt.month.toString(),
      country: placeMark!.country.toString(),
      city: placeMark!.subAdministrativeArea.toString(),);
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
    print('${prayerTime.data!.length
        .toString()}====================================================');
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

  int  index =0 ;
  MapEntry<String, dynamic>? nextPrayer;
  int nextPrayerIndex = 0;




  getNextPrayerTime() {
    DateTime now = DateTime.now();
    TimeOfDay currentTime = TimeOfDay.fromDateTime(now);

int day = dt.day-1 ;
    for (var prayerEntry in timings[day].toJson().entries) {
        TimeOfDay prayerTime = TimeOfDay(hour: int.parse(prayerEntry.value.toString().substring(0,5).split(':')[0]), minute: int.parse(prayerEntry.value.toString().substring(0,5).split(':')[1]),);
        if(currentTime.hour < prayerTime.hour)
          {
            nextPrayer = prayerEntry ;
            if(index >5){
              index=0;
              nextPrayer = null ;
              break;
            }
            else
              {
                nextPrayerIndex = index;
                print(nextPrayerIndex);
                break;

              }
           print(prayerEntry.value.toString());


          }
    index++ ;

      if(nextPrayer != null)
        {
          break ;
        }
    }

    if(nextPrayer == null)
      {
        nextPrayer = timings[dt.day].toJson().entries.first;
        nextPrayerIndex = 0 ;
      }
    }

}



