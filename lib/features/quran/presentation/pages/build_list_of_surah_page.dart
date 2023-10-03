import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../config/route/router.dart';
import '../../../../core/color/colors.dart';
import '../../../../core/uitls/constants.dart';
import '../cubit/quran_cubit.dart';

class BuildListOfSurahScreen extends StatelessWidget {
  BuildListOfSurahScreen({super.key});

  int? selectedItem;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<QuranCubit, QuranState>(
      listener: (context, state) {
        if (state is SelectedItemListQuran) {
          selectedItem = state.index;
        }
      },
      builder: (context, state) {
        var cubit = QuranCubit.get(context);
        final quran = cubit.surahs;

        if (state is LoadingQuran) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is ErrorLoadingQuran) {
          return Center(
            child: Text('Error: ${state.message}'),
          );
        } else {
          return RefreshIndicator(
            onRefresh: () => cubit.getSurahList(),
            child: ListView.builder(
              itemCount: quran?.length,
              itemBuilder: (context, index) {
                final chapter = quran![index];

                
                return Column(
                  children: [
                      Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Juz  1'),
                                Text('1')
                              ],
                            ),
                          ),
                          SpaceLine(height: 0.5),
                        ],
                      ),

                      Column(
                      children: [
                        GestureDetector(
                          onTap: () async{
                             cubit.setSelectedItemColor(index);
                            Navigator.pushNamed(context, Routes.surah);
                             // NotificationService.home(context).showNonRemovableNotification('0', 'Asr');

                          },
                          child: Container(
                            height: 80,
                            decoration: BoxDecoration(
                                color: cubit.indexItem == index
                                    ? ColorsManager.mainColor.withOpacity(0.09)
                                    : Colors.transparent),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.star_border),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text('${chapter.name!} '),
                                              Text(
                                                '${chapter.revelationType} - ${chapter.ayahs?.length.toString()}  ${'Ayahs'}',
                                                style: TextStyle(
                                                  color: Colors.grey.shade700,
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                      Icon(
                                        Icons.bookmark_border,
                                        color: CupertinoColors.activeBlue,
                                      )
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SpaceLine(height: 5),
                      ],
                    ),
                  ],
                );
              },
            ),
          );
        }
      },
    );
  }


}
