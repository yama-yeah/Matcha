import 'package:flutter/material.dart';
import 'package:matcha/factory/util/notify.dart';
import 'package:awesome_notifications/awesome_notifications.dart';

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
            await AwesomeNotifications().cancelAllSchedules();
            createNotification(
              title: 'a',
              body: 'a',
              id: 100,
              date: DateTime.now().add(Duration(seconds: 5)).toString(),
              channelKey: 'Tasks',
            );
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
