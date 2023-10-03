import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quran/features/quran/presentation/cubit/quran_cubit.dart';
import 'package:quran/features/quran/presentation/pages/build_list_of_surah_page.dart';

import '../../../../core/color/colors.dart';
import '../../../../core/uitls/assets_manager.dart';
import '../../../../core/uitls/constants.dart';

class QuranScreen extends StatefulWidget {
  const QuranScreen({super.key});

  @override
  State<QuranScreen> createState() => _QuranScreenState();
}

class _QuranScreenState extends State<QuranScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final tabs = const [
    Tab(
      text: 'Surah',
    ),
    Tab(
      text: 'Juz',
    ),
    Tab(
      text: 'Note',
    ),
  ];

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            bottom: MediaQuery.of(context).size.height * 0.6,
            child: Container(
              color: ColorsManager.mainColor,
              child: Image(
                image: AppImages.background,
                width: double.infinity,
                fit: BoxFit.cover,
                color: Colors.black.withOpacity(0.05),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.05,
            left: 20,
            child: const Row(
              children: <Widget>[
                Text(
                  'Quran',
                  style: TextStyle(
                      color: ColorsManager.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 5,
                ),
                Image(
                  image: AppImages.quranArText,
                  color: Colors.white,
                  width: 25,
                  height: 25,
                )
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.12,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: double.maxFinite,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                color: ColorsManager.secondaryLight,
              ),
              child: Column(
                children: <Widget>[
                  TabBar(
                    controller: _tabController,
                    tabs: tabs,
                    labelColor: ColorsManager.mainColor,
                    indicatorColor: ColorsManager.mainColor,
                    unselectedLabelColor: ColorsManager.white,
                    indicatorSize: TabBarIndicatorSize.label,
                    isScrollable: false,
                  ),
                  SpaceLine(height: 1),
                  Expanded(
                    child: TabBarView(controller: _tabController, children: [
                      BuildListOfSurahScreen(),
                      SingleChildScrollView(
                          child: Container(
                        child: Center(child: const Text('Juz')),
                      )),
                      SingleChildScrollView(
                          child: Container(
                        child: Center(child: const Text('Note')),
                      )),
                    ]),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildQuranLIst() {
    return BlocBuilder<QuranCubit, QuranState>(
      builder: (context, state) {
        if (state is LoadingQuran) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is SuccessLoadingQuran) {
          final quran = state.surahs;
          return ListView.builder(
            itemCount: quran?.length,
            itemBuilder: (context, index) {
              final chapter = quran![index];
              return ListTile(
                title: Text(chapter!.name!),
                subtitle: Text(chapter.number.toString()),
              );
            },
          );
        } else if (state is ErrorLoadingQuran) {
          return Center(
            child: Text('Error: ${state.message}'),
          );
        } else {
          return const Center(
            child: Text('Unknown state'),
          );
        }
      },
    );
  }
}
