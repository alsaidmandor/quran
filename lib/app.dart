import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:quran/features/home/data/repositories/prayer_time_repository_impl.dart';

import 'config/route/router.dart';
import 'config/theme/theme.dart';
import 'core/appCubit/app_cubit.dart';
import 'core/network/dio_helper.dart';
import 'core/network/network_info.dart';
import 'core/uitls/app_strings.dart';
import 'core/uitls/constants.dart';
import 'features/home/data/data_sources/remote/remote_prayer_time_data_source.dart';
import 'features/home/domain/use_cases/get_prayer_time_use_case.dart';
import 'features/home/presentation/cubit/home_cubit.dart';
import 'features/quran/data/remote/quran_remote_data_source.dart';
import 'features/quran/data/repositories/quran_repository_impl.dart';
import 'features/quran/domain/use_cases/get_surah_list_user_case.dart';
import 'features/quran/presentation/cubit/quran_cubit.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AppCubit>(
          create: (context) => AppCubit(),
        ),
        BlocProvider<HomeCubit>(
          create: (context) => HomeCubit(GetPrayerTimeUseCase(
              PrayerTimeRepositoryImpl(
                  networkInfo: NetworkInfoImpl(InternetConnectionChecker()),
                  remotePrayerTime: RemotePrayerTimeDataSource())))..getLocation(context)..getTimePrayer()
            ,
        ),
        BlocProvider<QuranCubit>(
          create: (context) => QuranCubit(GetSurahListUserCase(
              QuranRepositoryImpl(
                  remoteDataSource: QuranRemoteDataSourceImpl(DioService()),
                  networkInfo: NetworkInfoImpl(InternetConnectionChecker()))))
            ..getSurahList(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: AppStrings.appName,
        theme: DynamicTheme.darkTheme,
        initialRoute: Routes.initialRoutes,
        onGenerateRoute: AppRoutes.onGenerateRoute,
      ),
    );
  }
}
