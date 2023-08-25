import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import '../../../../config/route/router.dart';
import '../../../../core/color/colors.dart';
import '../../../../core/uitls/assets_manager.dart';
import '../../../../core/uitls/constants.dart';
import '../cubit/home_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PrayerTimeList extends StatelessWidget {
  PageController pageController ;

   PrayerTimeList(    {super.key,
     required this.pageController ,
});



  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) async {

      },
      builder: (context, state) {
        var cubit = HomeCubit.get(context);

        return SizedBox(
          height: 500,
          child: PageView.builder(
              controller: pageController,
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
                        index: indexInner, context: context);
                  }).toList(),
                );
              }),
        );
      },
    );


  }
   Widget itemPrayerTime(
       {
         required BuildContext context ,
         required ImageProvider image,
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

               SizedBox(
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
   }

}
