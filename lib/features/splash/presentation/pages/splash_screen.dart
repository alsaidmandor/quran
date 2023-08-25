import 'package:flutter/material.dart';
import '../../../../config/route/router.dart';
import '../../../../core/color/colors.dart';
import '../../../../core/uitls/app_strings.dart';
import '../../../../core/uitls/assets_manager.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushNamed(context, Routes.getLocation);
    });
    return Scaffold(
      backgroundColor: ColorsManager.mainColor,
      body: Stack(
        fit: StackFit.expand,
        children: [
           Image(
            image: AppImages.background,
            fit: BoxFit.cover,
            color:  Colors.black.withOpacity(0.05) ,
          ),
           Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Center(
              child:    Image(
                image: AppImages.mosqueHomeBackground,
                color:  Colors.black.withOpacity(0.6) ,
              ),
            ),
          ),
          Positioned(
              top: height / 4,
              left: width / 3,
              right: width / 3,
              bottom: height / 4,
              child: const Center(
                child: Text(
                  AppStrings.islamic,
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: ColorsManager.white),
                ),
              ))
        ],
      ),
    );
  }
}
