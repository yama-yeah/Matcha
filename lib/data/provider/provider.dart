import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:matcha/factory/util/date.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:matcha/data/api/api.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:matcha/factory/util/notify.dart';
import 'package:matcha/data/provider/freezed/freezed.dart';
import 'package:matcha/factory/util/cast.dart';

class UserdataStateNotifier extends StateNotifier<Userdata> {
  final storage = new FlutterSecureStorage();
  final options = IOSOptions(accessibility: IOSAccessibility.first_unlock);
  UserdataStateNotifier() : super(Userdata());
  setPassword(String text) => state = state.copyWith(password: text);
  setUserid(String text) => state = state.copyWith(userid: text);
  setUser(String userid, String password) {
    state = state.copyWith(userid: userid, password: password);
    api.User(userid, password);
  }

  loadKeyChain() async {
    Map<String, String> allValues = await storage.readAll();
    final _keys = allValues.keys;
    if (_keys.contains('userid') && _keys.contains('password')) {
      setUser(allValues['userid']!, allValues['password']!);
    }
  }

  saveKeyChain() async {
    await storage.write(key: 'userid', value: state.userid);
    await storage.write(key: 'password', value: state.password);
  }
}

final userdataProvider = StateNotifierProvider((_) => UserdataStateNotifier());

class ApiFilterStateNotifier extends StateNotifier<ApiFilterData> {
  ApiFilterStateNotifier() : super(ApiFilterData());
  void setExceptionIds(List<int> ids) =>
      state = state.copyWith(filter_courseid_list: ids);
  void setLeast(int day) => state = state.copyWith(filter_day: day);
}

final ApiFilterProvider =
    StateNotifierProvider((_) => ApiFilterStateNotifier());

class ApiDataStateNotifier extends StateNotifier<ApiData> {
  final ProviderReference ref;
  ApiDataStateNotifier(this.ref) : super(ApiData());
  Future<void> saveTasks() async {
    final course_list =
        ref.read(ApiFilterProvider.notifier).state.filter_courseid_list;
    final day = ref.read(ApiFilterProvider.notifier).state.filter_day;
    List<Map<String, dynamic>> _tasks =
        await api.get_tasks(course_list: course_list, least: day);
    state = state.copyWith(homeworks: _tasks);
    //ref.read(TasksNotifierSettingProvider.notifier).fetchNotifyEnable();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String _json = jsonEncode(_tasks);
    prefs.setString('homework', _json);
  }

  Future<void> loadTasks() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> _keys = prefs.getKeys().toList();
    if (_keys.contains('homework')) {
      String? _raw = prefs.getString('homework');
      if (_raw == null) {
        return;
      }
      List<dynamic> _tasks = jsonDecode(_raw);
      state = state.copyWith(homeworks: _tasks.cast<Map<String, dynamic>>());
    }
  }
}

final ApiDataProvider = StateNotifierProvider((ref) {
  ref.watch(ApiFilterProvider);
  final provider = ApiDataStateNotifier(ref);
  return provider;
});

class TasksNotifierSettingStateNotifier
    extends StateNotifier<TasksNotifierSettingData> {
  final ProviderReference ref;
  TasksNotifierSettingStateNotifier(this.ref)
      : super(TasksNotifierSettingData());
  void setNotifyEnable(bool enable, int taskid, String end) {
    Map<int, Map<String, dynamic>> state_copy = {...state.is_taskid_enabled};
    state_copy[taskid] = {'enable': enable, 'end': end};
    state = state.copyWith(is_taskid_enabled: state_copy);
    saveNotifyEnable();
  }

  void changeNotifyEnable(bool enable, int task_id) {
    Map<int, Map<String, dynamic>> state_copy = {...state.is_taskid_enabled};
    Map<String, dynamic> _task = state_copy[task_id]!;
    _task['enable'] = enable;
    state_copy[task_id] = _task;
    state = state.copyWith(is_taskid_enabled: state_copy);
    saveNotifyEnable();
  }

  void fetchNotifyEnable() {
    List<Map<String, dynamic>> tasks =
        ref.read(ApiDataProvider.notifier).state.homeworks;
    print('fetching');
    //ref.watch(ApiDataProvider);
    print(state.is_taskid_enabled);
    Map<int, Map<String, dynamic>> state_copy = {...state.is_taskid_enabled};
    List<int> _enabled_task_id = state.is_taskid_enabled.keys.toList();
    for (Map<String, dynamic> task in tasks) {
      if (!_enabled_task_id.contains(task['task_id'])) {
        state_copy[task['task_id']] = {'enable': true, 'end': task['end']};
      }
    }
    print(state_copy.toString() + '\nfetch');
    print(_enabled_task_id.toString() + '\nfetching keys');
    state = state.copyWith(is_taskid_enabled: state_copy);
    saveNotifyEnable();
    createTasksNotify();
  }

  void enableListMentenance() {
    Map<int, Map<String, dynamic>> state_copy = {...state.is_taskid_enabled};
    final _keys = state_copy.keys.toList();
    for (int key in _keys) {
      String end_raw = state_copy[key]!['end'];
      DateTime end = dateutil.parse(end_raw);
      if (end.isBefore(DateTime.now())) {
        state_copy.remove(key);
      }
    }
    state = state.copyWith(is_taskid_enabled: state_copy);
    saveNotifyEnable();
  }

  void saveNotifyEnable() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String _json = jsonEncode(map2string(state.is_taskid_enabled));
    prefs.setString('is_taskid_enabled', _json);
  }

  Future<void> loadNotifyEnable() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? _raw = prefs.getString('is_taskid_enabled');
    if (_raw == null) {
      return;
    }
    Map<String, Map<String, dynamic>> raw =
        jsonDecode(_raw).cast<String, Map<String, dynamic>>();
    Map<int, Map<String, dynamic>> _state = map2int(raw);
    state = state.copyWith(is_taskid_enabled: _state);
  }

  void setCourseidFilter(List<int> ids) =>
      state = state.copyWith(courseid_filter_list: ids);

  void sleepingSet(Map<String, String> sleeping) {
    state = state.copyWith(sleeping_time: sleeping);
  }

  void createTasksNotify() async {
    int days = state.timing_settings['days']!;
    int hours = state.timing_settings['hours']!;
    int minutes = state.timing_settings['minutes']!;
    List<int> _keys = state.is_taskid_enabled.keys.toList();
    for (var task in ref.read(ApiDataProvider.notifier).state.homeworks) {
      if (_keys.contains(task['task_id'])) {
        if (state.is_taskid_enabled[task['task_id']]!['enable']) {
          try {
            createNotification(
              title: task['task_title'],
              body: task['course_name'],
              id: int.parse(task['task_id']),
              date: task['end'],
              channelKey: 'Tasks',
              days: days,
              hours: hours,
              minutes: minutes,
            );
          } catch (e) {
            print(e);
            print(task['task_id'].toString() + ' is enabled');
            print(task['task_title'] + ' is enabled');
          }
        }
      }
    }
  }
}

final TasksNotifierSettingProvider = StateNotifierProvider((ref) {
  //ref.watch(ApiDataProvider);
  final provider = TasksNotifierSettingStateNotifier(ref);
  //provider.loadNotifyEnable();
  return provider;
});


/*
@freezed
class StudentData with _$StudentData {
  //shared
  factory StudentData({
    @Default({
      'least_days': 0,
      'exception_id': [],
    })
        Map<String, dynamic> api_settings,
    @Default({
      'courseid_filter': [],
      'taskid_filter': <Map<String, int>>[],
      'timing_settings': <String, int>{'days': 0, 'hours': 0, 'minutes': 0},
    })
        Map<String, dynamic> tasks_notify_settings,
    @Default({
      'timing_settings': <String, int>{'minutes': 0}
    })
        Map<String, dynamic> classes_notify,
  }) = _StudentData;
}

class StudentDataNotifier extends StateNotifier<StudentData> {
  StudentDataNotifier() : super(StudentData());
  setTasks(List<Map<String, dynamic>> tasks) =>
      state = state.copyWith(homework: tasks);
  setLeast(int least) =>
      state = state.copyWith(api_settings: state.api_settings['least_days']);
  getTasks() async {
    var _tasks = await api.get_tasks(
        least: state.least_days, course_list: state.courseid_list);
    state = state.copyWith(homework: _tasks);
  }

  Future<void> saveTasks() async {
    List<Map<String, dynamic>> _tasks = await api.get_tasks();
    createTasksNotify(_tasks);
    state = state.copyWith(homework: _tasks);
    //SharedPreferences prefs = await SharedPreferences.getInstance();
    String _json = jsonEncode(_tasks);
    //prefs.setString('homework', _json);
  }

  Future<void> loadTasks() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> _keys = prefs.getKeys().toList();
    if (_keys.contains('homework')) {
      print('init pref');
      String? _raw = prefs.getString('homework');
      if (_raw == null) {
        print('null');
        return;
      }
      List<dynamic> _tasks = jsonDecode(_raw);
      state = state.copyWith(homework: _tasks.cast<Map<String, dynamic>>());
    }
  }

  Future<void> createTasksNotify(List<Map<String, dynamic>> tasks) async {
    for (var task in tasks) {
      createNotification(
        title: task['task_title'],
        body: task['course_name'],
        id: task['task_id'],
        date: task['end'],
        channelKey: 'task_channel',
        hours: 3,
      );
    }
  }

  Future<void> createClassesNotification(Map<String, dynamic> classes) async {
    var _today_classes = classes[dateutil.day_of_week(DateTime.now())];
    //TODO: create notification for classes
  }
}

final StudentDataProvider = StateNotifierProvider((_) => StudentDataNotifier());
*/