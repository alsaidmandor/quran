
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;
import '../../config/route/router.dart';

class NotificationService
{
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
  FlutterLocalNotificationsPlugin();

  NotificationService();

  BuildContext? context ;


  NotificationService.home(this.context);

  init() async{
    var initializationSettingsAndroid =
    const AndroidInitializationSettings('@mipmap/ic_launcher');
    var darwinInitializationSettingsIOS = const DarwinInitializationSettings();
    var initializationSettings = InitializationSettings(
        android: initializationSettingsAndroid, iOS: darwinInitializationSettingsIOS);
    await flutterLocalNotificationsPlugin.initialize(initializationSettings,
      onDidReceiveNotificationResponse: onDidReceiveNotificationResponse
    );
  }

  void onDidReceiveNotificationResponse(NotificationResponse notificationResponse) async {
    final String? payload = notificationResponse.payload;
    if (notificationResponse.payload != null) {
      debugPrint('notification payload: $payload');
    }
    await Navigator.pushNamed(context!, Routes.home);
  }



  void showNotification(String id , String namePrayer, String difference ) async {
    var androidPlatformChannelSpecifics = const AndroidNotificationDetails(
        'channel_id', 'channel_name',
        importance: Importance.low,
        priority: Priority.low,
        playSound: false,
        ongoing: true); // Set ongoing to true to make it non-removable
    var iOSPlatformChannelSpecifics =DarwinNotificationDetails();
    var platformChannelSpecifics = NotificationDetails(
        android: androidPlatformChannelSpecifics,
        iOS: iOSPlatformChannelSpecifics);
    await flutterLocalNotificationsPlugin.show(
        0, namePrayer, difference,
        platformChannelSpecifics, payload: 'item x');
  }


  Future<void> scheduleNotification(String namePrayer, String difference) async {
    tz.initializeTimeZones();


    // Android Notification Details
    const AndroidNotificationDetails androidPlatformChannelSpecifics =
    AndroidNotificationDetails(
      'channel ID',
      'channel name',
      playSound: false, // Disable sound
      // enableVibration: false, // Disable vibration
      importance: Importance.low,
      priority: Priority.low,
      ongoing: true,
      enableVibration: false, // Set vibration to false for silent notification
      fullScreenIntent: true,        // showProgress: true
    );

    // // iOS Notification Details
    // const IOSNotificationDetails iOSPlatformChannelSpecifics =
    // IOSNotificationDetails();

    // Notification Details combining Android and iOS
    const NotificationDetails platformChannelSpecifics = NotificationDetails(
      android: androidPlatformChannelSpecifics,
      // iOS: iOSPlatformChannelSpecifics,
    );

    // Schedule local notifications every 5 seconds
    Timer.periodic(Duration(seconds: 1), (timer) async {
      await flutterLocalNotificationsPlugin.zonedSchedule(
        0,
        timer.toString(), difference,
        tz.TZDateTime.now(tz.local).add(const Duration(seconds: 5)),
        platformChannelSpecifics,
        androidAllowWhileIdle: true,
        uiLocalNotificationDateInterpretation:
        UILocalNotificationDateInterpretation.absoluteTime,
        payload: 'Notification payload',
      );
    });


}}