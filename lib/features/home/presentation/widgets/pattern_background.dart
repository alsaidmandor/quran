import 'package:flutter/material.dart';
import 'package:quran/features/home/presentation/widgets/background.dart';


import '../../../../core/color/colors.dart';
import '../../../../core/uitls/assets_manager.dart';

class PatternBackground extends StatelessWidget {

  final Widget child;
  final AssetImage image;

   const PatternBackground({
    Key? key,
     required this.image, required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: ColorsManager.mainColor,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            child: Image(
              image: image,
              width: double.infinity,
              fit: BoxFit.cover,
              color:  Colors.black.withOpacity(0.05) ,
            ),
          ),
          child

        ],
      ),
    );
  }
}
