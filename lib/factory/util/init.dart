import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';

void init() {
  AwesomeNotifications().initialize(
    // set the icon to null if you want to use the default app icon
    null,
    [
      NotificationChannel(
          channelKey: 'Tasks',
          channelName: 'Tasks notifications',
          channelDescription: 'Notification channel for Tasks',
          defaultColor: Color(0xFF9D50DD),
          ledColor: Colors.white),
      NotificationChannel(
          channelKey: 'Classes',
          channelName: 'Classes notifications',
          channelDescription: 'Notification channel for Classes',
          defaultColor: Color(0xFF9D50DD),
          ledColor: Colors.white),
    ],
  );
  AwesomeNotifications().actionStream.listen((receivedNotification) {
    // your page params. I recommend to you to pass all *receivedNotification* object
  });
}
