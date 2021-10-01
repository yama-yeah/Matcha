import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:matcha/factory/main/rootes/homework/homework_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class HomeWork extends StatelessWidget {
  List<Widget> list = [];

  List<Widget> test() {
    var _i = useState<int>(1);
    List<Widget> list = [];
    for (int i = 0; i < _i.value; i++) {
      list.add(new ListTile(
        title: Text('$i'),
        onTap: () => _i.value++,
      ));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Homework_widget();
  }
}
