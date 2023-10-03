import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quran/bloc_observer.dart';

import 'app.dart';
import 'core/notification/notification_service.dart';
import 'core/uitls/local_database_register.dart';

void main() async {
  Bloc.observer = MyBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();

  // init cache
  await LocalDatabaseRegister.initHive();
  LocalDatabaseRegister.registerAdapter();
  await LocalDatabaseRegister.openHiveBox();

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp, // Locks the app to portrait mode
  ]);

  NotificationService().init();
  runApp(const MyApp());
}
