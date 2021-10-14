import 'package:flutter/material.dart';
import 'package:matcha/factory/util/notify.dart';

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
          onTap: () => createNotification(
              title: 'a',
              body: 'a',
              id: 3,
              date: DateTime.now().toString(),
              channelKey: 'Tasks',
              seconds: -3),
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
