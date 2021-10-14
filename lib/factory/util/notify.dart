import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/foundation.dart';
import 'package:matcha/factory/util/date.dart';

createNotification({
  required String title,
  required String body,
  required int id,
  required String date,
  required String channelKey,
  int days = 0,
  int hours = 0,
  int minutes = 0,
  int seconds = 0,
}) async =>
    await AwesomeNotifications().createNotification(
        content: NotificationContent(
          title: 'Notification',
          body: 'This is a notification',
          channelKey: 'Tasks',
          id: 10,
        ),
        schedule: NotificationCalendar.fromDate(
          date: DateTime.now().add(Duration(seconds: 3)),
        ));
