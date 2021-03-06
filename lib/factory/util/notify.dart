import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/foundation.dart';
import 'package:matcha/factory/util/date.dart';

Future<void> createNotification({
  required String? title,
  required String? body,
  required int? id,
  required String date,
  required String? channelKey,
  int days = 0,
  int hours = 0,
  int minutes = 0,
  int seconds = 0,
}) async {
  print(dateutil
          .parse(date)
          .add(Duration(
                  days: days,
                  hours: hours,
                  minutes: minutes,
                  seconds: seconds) *
              -1)
          .toString() +
      ': in create');
  await AwesomeNotifications().createNotification(
    content: NotificationContent(
      title: title,
      body: body,
      channelKey: channelKey,
      id: id,
    ),
    schedule: NotificationCalendar.fromDate(
      date: dateutil.parse(date).add(Duration(
              days: days, hours: hours, minutes: minutes, seconds: seconds) *
          -1),
    ),
  );
}

Future<void> cancelNotification({
  required int? id,
  required String? channelKey,
}) async {
  await AwesomeNotifications().cancelAllSchedules();
}
