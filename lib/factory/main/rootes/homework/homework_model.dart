import 'dart:math';

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:matcha/data/api/api.dart';
import 'package:matcha/data/provider/provider.dart';
import 'package:intl/intl.dart';
import 'package:matcha/factory/util/date.dart';
import 'package:matcha/factory/util/notify.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class Homework_widget extends HookWidget {
  RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  final apiNotify = useProvider(ApiDataProvider.notifier); //
  final tasksNotify =
      useProvider(TasksNotifierSettingProvider.notifier); //何故動いてるのかわからんから要注意
  //めんどいから寝ます
  List<Widget> make_tiles() {
    final homework = useProvider(ApiDataProvider.notifier);
    final homeworkState = useProvider(ApiDataProvider);
    final SlidableController slidableController = SlidableController();
    final tasksNotify = useProvider(TasksNotifierSettingProvider.notifier);
    final tasksNotifyState = useProvider(TasksNotifierSettingProvider);
    final is_enabled = tasksNotify.state.is_taskid_enabled;
    List<dynamic> _tasks = homework.state.homeworks;
    _tasks = sort_tasks(_tasks);
    List<Widget> _tiles = [];
    for (int i = 0; i < _tasks.length; i++) {
      int task_id;
      try {
        task_id = _tasks[i]['task_id'];
      } catch (e) {
        print(e.toString() + _tasks[i]);
        task_id = 0;
      }
      final String task_name = _tasks[i]['task_title'];
      final String end = _tasks[i]['end'];
      final String course_name = _tasks[i]['course_name'];
      bool enable;
      try {
        enable = is_enabled[task_id]!['enable'];
      } catch (e) {
        print(':' + e.toString() + ' in loaded enable');
        enable = true;
      }
      _tiles.add(
        Slidable(
          key: Key(task_id.toString()),
          controller: slidableController,
          child: ListTile(
            title: Text(task_name),
            subtitle: Text(
                dateutil.simple_deadline(end) + ' ' + _tasks[i]['course_name']),
            onTap: () => print(is_enabled[task_id]),
          ),
          actionPane: SlidableDrawerActionPane(),
          secondaryActions: Action_bar(
            enable,
            _tasks[i],
          ),
        ),
      );
    }
    return _tiles;
  }

  List<Widget> Action_bar(bool is_enabled, dynamic task) {
    final tasksNotify = useProvider(TasksNotifierSettingProvider.notifier);
    List<Widget> notify_action_bar = <Widget>[
      IconSlideAction(
        caption: 'Notify',
        color: Colors.black45,
        icon: Icons.notifications_on,
        onTap: () {
          tasksNotify.setNotifyEnable(true, task['task_id'], task['end']);
          createNotification(
            title: task['task_title'],
            body: task['course_name'],
            id: task['task_id'],
            date: task['end'],
            channelKey: 'Tasks',
            days: tasksNotify.state.timing_settings['days']!,
            hours: tasksNotify.state.timing_settings['hours']!,
            minutes: tasksNotify.state.timing_settings['minutes']!,
          );
        },
      ),
    ];
    List<Widget> unnotify_action_bar = <Widget>[
      IconSlideAction(
        caption: 'UnNotify',
        color: Colors.black45,
        icon: Icons.notifications_off,
        onTap: () {
          tasksNotify.setNotifyEnable(false, task['task_id'], task['end']);
          AwesomeNotifications().cancelSchedule(task['task_id']);
        },
      ),
    ];
    return is_enabled ? unnotify_action_bar : notify_action_bar;
  }

  void update() {
    //StudentDataNotifier provider
    final memo = useMemoized(() => api.get_tasks());
    final state = useFuture(memo);
    if (state.hasData) {
      //print(state.data.toString());
      //provider.setTasks(state.data!);
    }
  }

  List<dynamic> sort_tasks(List<dynamic> raw) {
    raw = raw.map((e) {
      e['end'] = dateutil.parse(e['end']);
      return e;
    }).toList();
    raw.sort((a, b) => a['end'].compareTo(b['end']));
    raw = raw.map((e) {
      e['end'] = dateutil.manaba_format.format(e['end']);
      return e;
    }).toList();
    return raw;
  }

  String string_date(DateTime raw) {
    DateTime _now = DateTime.now();
    return '';
  }

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      enablePullDown: true,
      //enablePullUp: true,
      header: WaterDropHeader(),
      controller: _refreshController,
      onRefresh: _onRefresh,
      //onLoading: _onLoading,
      child: ListView(
        children: make_tiles(),
      ),
    );
  }

  void _onRefresh() async {
    // monitor network fetch
    await Future.delayed(Duration(milliseconds: 1000));
    print('homework:refresh');
    try {
      await apiNotify.saveTasks();
      tasksNotify.fetchNotifyEnable();
    } catch (e) {
      print(e.toString());
    }
    // if failed,use refreshFailed()
    _refreshController.refreshCompleted();
  }

  void _onLoading() async {
    // monitor network fetch

    await Future.delayed(Duration(milliseconds: 1000));
    print('loading');
    // if failed,use loadFailed(),if no data return,use LoadNodata()
    _refreshController.loadComplete();
  }
}
