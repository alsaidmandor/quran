import 'package:flutter/material.dart';


import '../../../../core/color/colors.dart';
import '../../../../core/uitls/assets_manager.dart';

class MosqueBackground extends StatelessWidget {
  static const double _mosqueWidthFraction = 0.323;

  final Widget child;
  final AssetImage image;

   MosqueBackground({
    Key? key,
    required this.child, required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double mainAppbarPadding = 28;

    final safeAreaTop = MediaQuery.of(context).padding.top;
    final mosqueSize = MediaQuery.of(context).size.width * _mosqueWidthFraction;
    final appBarHeight = AppBar().preferredSize.height;
    const iconButtonPadding = mainAppbarPadding;
    final iconSize = IconTheme.of(context).size ?? 0;

    final mosqueTopMargin = -(mosqueSize / 2 - safeAreaTop - appBarHeight / 3.5);
    final mosqueMargin = -(mosqueSize / 2 - iconButtonPadding - iconSize / 2);


    return  Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            bottom: mosqueTopMargin,
            right: mosqueMargin,
            left: mosqueMargin,
            child: Image(
              image: image,
              width: mosqueSize,
              height: mosqueSize,
              fit: BoxFit.cover,
              color:  Colors.black.withOpacity(0.5) ,
            ),
          ),
          child,
        ],
      );

  }
}
