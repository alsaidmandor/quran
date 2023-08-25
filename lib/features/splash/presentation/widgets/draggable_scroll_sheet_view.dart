import 'package:flutter/material.dart';

import '../../../../core/uitls/constants.dart';

class DraggableScrollView extends StatelessWidget {
  const DraggableScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      minChildSize: 0.7,
      maxChildSize: 0.85,
      initialChildSize: 0.7,
      snapAnimationDuration: Duration(microseconds: 500),
      builder: (BuildContext context, ScrollController scrollController) {
        return SingleChildScrollView(
          // Consuming the scrollController provided
          controller: scrollController,
          child: Container(
            margin: EdgeInsets.only(top: 0.05 * getSize(context).height),
            height: 0.75 * getSize(context).height,
            width: double.infinity,

            // Generic Designing of the sheet
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(30.0),
                topLeft: Radius.circular(30.0),
              ),
              boxShadow: [
                BoxShadow(
                  blurRadius: 5.0,
                  spreadRadius: 20.0,
                  offset: const Offset(0.0, 5.0),
                  color: Colors.black.withOpacity(0.1),
                )
              ],
              color: Colors.white,
            ),
            // Contents of the sheet
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),

                // Declare your sheet content widgets ahead
              ],
            ),
          ),
        );
      },
    );
  }
}

