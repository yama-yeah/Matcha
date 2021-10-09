import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class Slidable_Test extends HookWidget {
  List<Widget> test_slidable(List<String> texts) {
    final SlidableController slidableController = SlidableController();
    List<Widget> slidable_list = [];
    for (String text in texts) {
      slidable_list.add(
        Slidable(
          //key: Key(text),
          controller: slidableController,
          child: ListTile(
            title: Text(text),
            subtitle: Text('sub:' + text),
          ),
          actionPane: SlidableDrawerActionPane(),
          secondaryActions: <Widget>[
            IconSlideAction(
              caption: 'UnNotify',
              color: Colors.black45,
              icon: Icons.notifications_off,
            ),
          ],
        ),
      );
    }
    return slidable_list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slidable_test'),
      ),
      body: ListView(
        children: test_slidable(['1', '2', '3', '4', '5', '6', '7', '8', '9']),
      ),
    );
  }
}
