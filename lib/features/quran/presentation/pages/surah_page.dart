import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:auto_size_text/auto_size_text.dart';

import '../../../../core/color/colors.dart';
import '../../../../core/uitls/assets_manager.dart';
import '../../../../core/uitls/constants.dart';
import '../cubit/quran_cubit.dart';

class SurahScreen extends StatelessWidget {
  SurahScreen({super.key});

  int? pages = 1;

  @override
  Widget build(BuildContext context) {
/*
    Widget line(double height, int index, double width) {
      return Padding(
        padding: EdgeInsets.fromLTRB(getSize(context).width * 0.015, 0, 0, 0),
        child: Column(
          children: [
            if (index == 0 &&
                surahEnglishName! != 'Al-Faatiha' &&
                surahEnglishName! != 'At-Tawba')
              Image.asset(AppImages.starterSurah, height: 120),
            ListTile(
              trailing: CircleAvatar(
                radius: getSize(context).height * 0.013,
                backgroundColor: const Color(0xff04364f),
                child: CircleAvatar(
                    radius: height * 0.012,
                    backgroundColor: Colors.white,
                    child: Text(
                      ayat![index].number.toString(),
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: height * 0.015),
                    )),
              ),
              title: Text(
                  surahEnglishName! != 'Al-Faatiha' &&
                      surahEnglishName! != 'At-Tawba'
                      ? index == 0
                      ? ayatsList![index].text!.substring(38).trim()
                      : ayatsList![index].text!
                      : ayatsList![index].text!,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontSize: height * 0.033,
                      color: black,
                      fontFamily: 'Noore')),
            ),
          ],
        )
      );
    }
*/

    return BlocConsumer<QuranCubit, QuranState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var cubit = QuranCubit.get(context);
        int indexOfAyats = cubit.indexItem;
        var ayat = cubit.surahs![indexOfAyats].ayahs;
        var myRichRunesMessage =
            new Runes('2018 \u06DD Author\'s Name \u{1f60e}');

        return Scaffold(
          body: Scrollbar(
            child: ListView.builder(
              itemCount: cubit.surahs![indexOfAyats].ayahs?.length,
              itemBuilder: (context, index) {
                var ayat = cubit.surahs![indexOfAyats].ayahs;
                return Container(
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                        padding: EdgeInsets.fromLTRB(
                            getSize(context).width * 0.015, 0, 0, 0),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            if (index == 0)
                              Text(
                                cubit.surahs![indexOfAyats].name.toString(),
                                style: TextStyle(fontSize: 22),
                              ),
                            if (index == 0 &&
                                cubit.surahs![indexOfAyats].englishName! !=
                                    'Al-Faatiha' &&
                                cubit.surahs![indexOfAyats].englishName! !=
                                    'At-Tawba')
                              const Image(
                                image: AppImages.starterSurah,
                                height: 120,
                                color: ColorsManager.white,
                              ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                      cubit.surahs![indexOfAyats]
                                                      .englishName! !=
                                                  'Al-Faatiha' &&
                                              cubit.surahs![indexOfAyats]
                                                      .englishName! !=
                                                  'At-Tawba'
                                          ? index == 0
                                              ? ayat![index]
                                                  .text!
                                                  .substring(38)
                                                  .trim()
                                              : ayat![index].text!
                                          : ayat![index].text!,
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        fontSize:
                                            getSize(context).height * 0.033,
                                      )),
                                ),
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(50), border: Border.all(width: 1 , color: Colors.white)),
                                  child: Center(child: Text(ayat![index].numberInSurah.toString())),
                                )
                              ],
                            ),
                            if (ayat[index].page! != pages)
                                      linepage(ayat[index].page)
                          ],
                        ))

                    );
              },
            ),
          ),
        );
      },
    );
  }

  Widget linepage(int? page) {
    pages = page;
    return Column(
      children: [
        Text(page.toString()),
        SpaceLine(height: 3),
      ],
    );
  }

/*
*  ListView.builder(
            itemCount: cubit.surahs![indexOfAyats].ayahs?.length,
            itemBuilder: (context, index) {
              var ayat = cubit.surahs![indexOfAyats].ayahs;
              return Container(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [    Text(
                      '${ayat![index].text!} '.trimRight(),
                      textScaleFactor: 1,
                      overflow: TextOverflow.visible,
                      textDirection: TextDirection.rtl,
                      softWrap: true,
                      textAlign: TextAlign.justify,
                    ),
                      Text('${ayat![index].numberInSurah!}')],)

                  ],
                ),
              );
            },
          ),
* */

// Text('${cubit.surahs![indexOfAyats].ayahs![index].text.toString()}  ${cubit.surahs![indexOfAyats].ayahs![index].numberInSurah}   ' ,  overflow: TextOverflow.visible,)
}
