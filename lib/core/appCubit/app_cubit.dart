import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../features/home/presentation/pages/home_screen.dart';
import '../../features/quran/presentation/pages/quran_screen.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());

  static AppCubit get(context) => BlocProvider.of(context);

  List<Widget> bottomScreens = [
    const HomeScreen(),
    const QuranScreen()
  ];

  int currentIndex = 0;

  void changeBottom(int index) {
    currentIndex = index;
    emit(BottomChanged());
  }

  bool isDark = false;

  void changeAppMode()
  {
    isDark = !isDark;
    emit(AppChangeModeState());
  }
}
