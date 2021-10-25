import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:matcha/factory/util/init.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
//import 'package:matcha/factory/main/rootes/homework/homework_widget.dart';
import 'package:matcha/screens/main/root.dart';
import 'package:matcha/data/provider/provider.dart';
import 'package:matcha/factory/select.dart';
import 'package:matcha/screens/main/root.dart';
import 'package:matcha/screens/main/routes/homework/homework.dart';
import 'package:matcha/screens/login/login.dart';
import 'package:workmanager/workmanager.dart';
import 'package:matcha/screens/test/slidable_test.dart';

void main() async {
  init();
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => new Rooter(),
        '/login': (BuildContext context) => new LoginScreen()
      },
      home: Init(),
      theme: FlexColorScheme.light(
        colors: myScheme2Light,
        //scaffoldBackground: Color(0xFFFFEDA3),
        //appBarStyle: FlexAppBarStyle.primary,
        tooltipsMatchBackground: false,
      ).toTheme,
      darkTheme: FlexColorScheme.dark(
        colors: myScheme2Dark,
        appBarStyle: FlexAppBarStyle.primary,
        scaffoldBackground: Color(0xFF232323),
      ).toTheme,
      themeMode: ThemeMode.dark,
    );
  }
}

final FlexSchemeColor myScheme2Light =
    FlexSchemeColor.from(primary: const Color(0xFF39A9CB));
final FlexSchemeColor myScheme2Dark =
    FlexSchemeColor.from(primary: const Color(0xFF39A9CB)).toDark();
