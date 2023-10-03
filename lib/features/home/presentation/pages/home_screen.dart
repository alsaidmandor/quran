import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/core/uitls/constants.dart';
import 'package:quran/features/home/presentation/pages/prayer_time_list.dart';
import '../../../../core/color/colors.dart';
import '../../../../core/notification/notification_service.dart';
import '../../../../core/uitls/assets_manager.dart';
import '../cubit/home_cubit.dart';
import '../widgets/background.dart';
import '../widgets/pattern_background.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>with WidgetsBindingObserver {
  // void _update() {
  //   setState(() {
  //   });
  //
  // }

  final PageController _pageController =
      PageController(keepPage: true, initialPage: dt.day - 1);

  Timer? _timer;

  Duration? difference;

  String? stringTime;


  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        final currentTime = DateTime.now();
        stringTime =
            HomeCubit.get(context).nextPrayer!.value.toString().substring(0, 5);

        final parsedTime = DateTime(
          currentTime.year,
          currentTime.month,
          currentTime.day,
          int.parse(stringTime!.split(':')[0]),
          int.parse(stringTime!.split(':')[1]),
        );
        difference = parsedTime.difference(currentTime).abs();
        NotificationService.home(context).scheduleNotification('Asr' , '${difference!.inHours.remainder(60).round()},${difference!.inMinutes.remainder(60)},${difference!.inSeconds.remainder(60)},');

        // NotificationService.home(context)
            // .showNotification('0', 'Asr' , '${difference!.inHours.remainder(60)},${difference!.inMinutes.remainder(60)},${difference!.inSeconds.remainder(60)},');
      });
    });
  }

  double position = 220;

  @override
  void initState() {
    super.initState();
    // NotificationService.home(context).scheduleNotification();
    startTimer();
    WidgetsBinding.instance!.addObserver(this);

    HomeCubit.get(context).getNextPrayerTime();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      HomeCubit.get(context).getNextPrayerTime();
    }
    else if(state == AppLifecycleState.paused )
      {
        HomeCubit.get(context).getNextPrayerTime();

      }
  }
  @override
  void dispose() {
    _pageController.dispose();
    _timer!.cancel();
    WidgetsBinding.instance!.addObserver(this);

    super.dispose();
  }

  void jumpToPage(int pageIndex) {
    // _pageController.jumpToPage(pageIndex);
    _pageController.animateToPage(
      pageIndex,
      duration: const Duration(milliseconds: 500),
      curve: Curves.ease,
    );
  }

  bool shouldShowContainer(int currentDay) {
    return currentDay != HomeCubit.get(context).indexItem;
  }

  @override
  Widget build(BuildContext context) {
    var dateHijri = getDateHijri();
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {},
      builder: (context, state) {
        var cubit = HomeCubit.get(context);

        return Scaffold(
            body: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              left: 0,
              bottom: MediaQuery.of(context).size.height - 350,
              child: SizedBox(
                height: 250,
                child: PatternBackground(
                  image: AppImages.background,
                  child: MosqueBackground(
                      image: AppImages.mosqueHomeBackground,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 50),
                            child: Row(children: [
                              Container(
                                  // margin: const EdgeInsets.symmetric(horizontal: 10),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  width: 130,
                                  decoration: BoxDecoration(
                                      color:
                                          ColorsManager.black.withOpacity(0.29),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Row(
                                    children: [
                                      const Icon(
                                        Icons.location_on_outlined,
                                        color: ColorsManager.white,
                                        size: 18,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Expanded(
                                        child: Text(
                                          cubit.placeMark != null
                                              ? '${cubit.placeMark!.subAdministrativeArea},${cubit.placeMark!.locality}'
                                              : 'Loading Location ...',
                                          style: const TextStyle(
                                              color: ColorsManager.white,
                                              fontSize: 14,
                                              overflow: TextOverflow.ellipsis),
                                        ),
                                      ),
                                    ],
                                  )),
                              const Spacer(),
                              Container(
                                  // margin: const EdgeInsets.symmetric(horizontal: 10),
                                  //   padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 2),
                                  width: 35,
                                  height: 35,
                                  decoration: BoxDecoration(
                                      color:
                                          ColorsManager.black.withOpacity(0.29),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: const Icon(
                                    Icons.settings,
                                    color: ColorsManager.white,
                                    size: 22,
                                  )),
                              const SizedBox(
                                width: 15,
                              ),
                              Container(
                                  // margin: const EdgeInsets.symmetric(horizontal: 10),
                                  //   padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 2),
                                  width: 35,
                                  height: 35,
                                  decoration: BoxDecoration(
                                      color:
                                          ColorsManager.black.withOpacity(0.29),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: const Icon(
                                    Icons.share,
                                    color: ColorsManager.white,
                                    size: 22,
                                  )),
                            ]),
                          ),
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                text: convertTo12HourFormat(cubit
                                        .nextPrayer!.value
                                        .toString()
                                        .substring(0, 5))
                                    .substring(0, 6),
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 45,
                                    fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: convertTo12HourFormat(cubit
                                        .nextPrayer!.value
                                        .toString()
                                        .substring(0, 5))
                                    .substring(6, 10),
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                            ]),
                          ),
                          difference != null
                              ? Text(
                                  'Next Prayer: ${difference!.inHours} : ${difference!.inMinutes.remainder(60)} : ${difference!.inSeconds.remainder(60)} ',
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                )
                              : const Text('Loading timing ....'),
                        ],
                      )),
                ),
              ),
            ),
            Positioned(
              top: 250,
              right: 0,
              left: 0,
              bottom: 0,
              child: Container(
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                  color: ColorsManager.secondaryLight,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          children: [
                            Container(
                                padding: const EdgeInsets.only(left: 5),
                                height: 26,
                                width: 25,
                                decoration: BoxDecoration(
                                    color: Colors.black45,
                                    borderRadius: BorderRadius.circular(8)),
                                child: const Center(
                                  child: Icon(
                                    Icons.arrow_back_ios,
                                    color: ColorsManager.mainColor,
                                    size: 14,
                                  ),
                                )),
                            const SizedBox(
                              width: 18,
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text('$dateHijri AH '),
                                const Icon(
                                  Icons.arrow_right,
                                  size: 20,
                                  color: ColorsManager.mainColor,
                                ),
                              ],
                            ),
                            const Spacer(),
                            shouldShowContainer(dt.day - 1)
                                ? GestureDetector(
                                    onTap: () {
                                      jumpToPage(dt.day - 1);
                                      cubit.getNextPrayerTime();
                                    },
                                    child: Container(
                                        height: 26,
                                        width: 58,
                                        decoration: BoxDecoration(
                                            color: ColorsManager.onErrorLight,
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                        child: const Center(
                                          child: Text(
                                            'Today',
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: ColorsManager.mainColor),
                                          ),
                                        )),
                                  )
                                : const SizedBox.shrink(),
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                                padding: const EdgeInsets.only(left: 5),
                                height: 26,
                                width: 26,
                                decoration: BoxDecoration(
                                    color: ColorsManager.onBackgroundLight,
                                    borderRadius: BorderRadius.circular(8)),
                                child: const Center(
                                  child: Icon(
                                    Icons.arrow_forward_ios,
                                    color: ColorsManager.mainColor,
                                    size: 14,
                                  ),
                                )),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                  PrayerTimeList(pageController: _pageController),
           /*    SizedBox(
                        height: 500,
                        child: PageView.builder(
                            controller: _pageController,
                            scrollDirection: Axis.horizontal,
                            itemCount: cubit.prayerTime.length,
                            onPageChanged: (value) {
                              cubit.setSelectedItemColor(value);
                            },
                            itemBuilder: (context, index) {
                              var entries =
                                  cubit.timings[index].toJson().entries;
                              return Column(
                                children:
                                    entries.mapIndexed((indexInner, entry) {
                                  final key = entry.key.toString();
                                  final value =
                                      entry.value.toString().substring(0, 5);
                                  if (index == dt.day - 1) {
                                    cubit
                                        .setCompareBetweenCurrentTimeAndTimePrayer(
                                            value, key);
                                  }
                                  return itemPrayerTime(
                                      image: playerTimeIcon[indexInner],
                                      color: playerTimeIconColor[indexInner],
                                      text: key,
                                      isSelected: false,
                                      time: convertTo12HourFormat(value),
                                      index: indexInner);
                                }).toList(),
                              );
                            }),
                      )*/
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
      },
    );
  }

/*  Widget itemPrayerTime(
      {required ImageProvider image,
      required Color color,
      required String text,
      required bool isSelected,
      required String time,
      required int index}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          border: Border.all(
              color: index != HomeCubit.get(context).nextPrayerIndex
                  ? Colors.transparent
                  : ColorsManager.mainColor.withOpacity(0.2),
              width: 1),
          borderRadius: BorderRadius.circular(10),
          color: index != HomeCubit.get(context).nextPrayerIndex
              ? Colors.transparent
              : ColorsManager.mainColor.withOpacity(0.2),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Row(
            children: [
              Image(
                image: image,
                color: color,
                width: 20,
                height: 20,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(text),
              const SizedBox(
                width: 10,
              ),
              const Icon(
                Icons.add_alert,
                color: ColorsManager.onBackgroundLight,
              ),
              const Spacer(),
              Text(time),
              // Checkbox(
              //   value: false,
              //   onChanged: (bool? value) {
              //
              //   },
              // ),

              const SizedBox(
                width: 5,
              ),
              GestureDetector(
                onTap: () {
                  HomeCubit.get(context).setSelectedCheckBox();
                },
                child: Container(
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    border: Border.all(
                      color: ColorsManager.mainColor,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: HomeCubit.get(context).isSelectedCheckBox
                      ? const Icon(
                          Icons.check,
                          size: 15,
                          color: ColorsManager.mainColor,
                        )
                      : null,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }*/

// void getTime(HomeCubit cubit)async
// {
//   var cubits = await cubit.prayerTime ;
// }
}

/*
class BuildContent extends StatefulWidget {
   BuildContent();

  @override
  State<BuildContent> createState() => _BuildContentState();
}

class _BuildContentState extends State<BuildContent> {



  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 270-  widget.change,
      right: 0,
      left: 0,
      bottom: 0,
      child: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: ColorsManager.secondaryLight,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(15),
            topLeft: Radius.circular(15),
          ),
        ),
        child:  Center(child: Column(
          children: [
            Text('$_containerPosition' , style: TextStyle(color: Colors.white , fontSize: 30),),
            Slider(value: widget.change, onChanged: (value){
              setState(() {
                widget.change =value ;
              });
            }, min: 0.0,
              max: 100.0,)
          ],
        ), ),
      ),
    );
  }
}
*/
