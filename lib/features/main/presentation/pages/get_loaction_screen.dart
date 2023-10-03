import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/features/home/presentation/cubit/home_cubit.dart';

import '../../../../config/route/router.dart';

class GetLocation extends StatelessWidget {
  const GetLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        if (state is HomeGetPrayerTimeLoading) {
          Future.delayed(const Duration(milliseconds: 500), () {
            HomeCubit.get(context).getNextPrayerTime();
            Navigator.pushNamedAndRemoveUntil(
                context, Routes.mainHome, (route) => false);
          });
        }
      },
      builder: (context, state) {
        var cubit = HomeCubit.get(context);
        cubit.getLocation(context);
        return const Scaffold(
          body: Center(child: Text('Get Loaction ....')),
        );
      },
    );
  }
}
