import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:matcha/screens/login/login.dart';
import 'package:matcha/screens/main/root.dart';
import 'package:matcha/data/provider/provider.dart';

class Init extends HookWidget {
  //select first page

  @override
  Widget build(BuildContext context) {
    final userProvider = useProvider(userdataProvider.notifier);
    final userState = useProvider(userdataProvider);
    final StudentProvider = useProvider(ApiDataProvider.notifier);
    int selector = 0;
    userProvider.loadKeyChain();
    // TODO: implement build
    if (userProvider.state.userid == '%void%') {
      return LoginScreen();
    } else {
      return Rooter();
    }
  }
}
