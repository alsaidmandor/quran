import 'package:flutter/material.dart';
import 'package:quran/features/home/presentation/pages/home_screen.dart';
import 'package:quran/features/juz/presentation/pages/juz_page.dart';
import 'package:quran/features/quran/presentation/pages/quran_screen.dart';
import 'package:quran/features/splash/presentation/pages/splash_screen.dart';
import '../../features/home/presentation/pages/prayer_time_list.dart';
import '../../features/main/presentation/pages/get_loaction_screen.dart';
import '../route/fade_page_route.dart';
import '../../features/main/presentation/pages/main_screen.dart';
import '../../features/quran/presentation/pages/surah_page.dart';









class Routes {
  static const String initialRoutes = '/';
  static const String mainHome = '/mainHome';
  static const String home = '/home';
  static const String quran = '/quran';
  static const String surah = '/surah';
  static const String juz = '/juz';
  static const String getLocation = '/location';
}

class AppRoutes {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.initialRoutes:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
        break;
      case Routes.mainHome:
        return MaterialPageRoute(builder: (context) => const MainScreen());
        break;
      case Routes.home:
        return MaterialPageRoute(builder: (context) => HomeScreen());
        break;
      case Routes.quran:
        return MaterialPageRoute(builder: (context) => const QuranScreen());
      case Routes.surah:
        return MaterialPageRoute(builder: (context) =>  SurahScreen());
      case Routes.juz:
        return MaterialPageRoute(builder: (context) =>  JuzScreen());
        case Routes.getLocation:
        return MaterialPageRoute(builder: (context) =>  GetLocation());

    }
    return null;
  }
}

