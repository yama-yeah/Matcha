import 'package:flutter/material.dart';

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
        ),
        ListTile(
          leading: Icon(Icons.account_balance),
          title: Text('Account Balance'),
        ),
      ],
    );
  }
}
