import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocode/geocode.dart';
import 'package:quran/core/uitls/constants.dart';
import 'package:location/location.dart';
import 'package:quran/features/quran/presentation/pages/quran_screen.dart';

import '../../../../core/appCubit/app_cubit.dart';
import '../../../../core/color/colors.dart';
import '../../../home/presentation/pages/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  LocationData? currentLocation;
  String address = "";


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var dateHijri = getDateHijri();
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {
      },
      builder: (context, state) {
        var cubit = AppCubit.get(context);

        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            onTap: (index) {
              cubit.changeBottom(index);
            },
            currentIndex: cubit.currentIndex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.book,
                ),
                label: 'Quran',
              ),

            ],
            backgroundColor: ColorsManager.secondaryLight,
          ),
          body: cubit.bottomScreens[cubit.currentIndex]
        );
      },
    );
  }


}


