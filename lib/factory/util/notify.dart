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
}) =>
    AwesomeNotifications().createNotification(
      content: NotificationContent(
        id: id,
        channelKey: channelKey,
        title: title,
        body: body,
      ),
      schedule: NotificationCalendar.fromDate(
        date: dateutil.parse(date).add(Duration(
                days: days, hours: hours, minutes: minutes, seconds: seconds) *
            -1),
      ),
    );
