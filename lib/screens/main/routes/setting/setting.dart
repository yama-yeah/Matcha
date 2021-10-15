import 'package:flutter/material.dart';
import 'package:matcha/factory/util/notify.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:matcha/factory/util/date.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // TODO(devversion): Add a setting to toggle the visibility of the
        ListTile(
          leading: Icon(Icons.notifications),
          title: Text('Notifications'),
          onTap: () async {
            //await AwesomeNotifications().cancelAllSchedules();

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

            createNotification(
              title: 'a',
              body: 'aaa',
              id: 11,
              date: dateutil.format(DateTime.now()),
              channelKey: 'Tasks',
              minutes: -1,
            );

            print(dateutil.format(DateTime.now()));
          },
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text('User Account'),
          onTap: () => Navigator.of(context).pushNamed('/login'),
        ),
      ],
    );
  }
}
