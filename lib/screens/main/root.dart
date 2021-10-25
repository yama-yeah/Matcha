import 'package:flutter/material.dart';
import 'package:matcha/factory/util/alert.dart';
import 'package:matcha/screens/main/routes/homework/homework.dart';
import 'package:matcha/screens/main/routes/setting/setting.dart';
import 'package:matcha/screens/main/routes/timetable/timetable.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:matcha/data/provider/provider.dart';
import 'package:matcha/factory/main/root_model.dart';

final counterProvider = StateNotifierProvider((_) => Counter());

class Counter extends StateNotifier<int> {
  Counter() : super(0);
  setState(value) => state = value;
}

class Rooter extends HookWidget {
  //final _selectedIndex = useState(0);
  static const _Icons = [
    Icons.home,
    Icons.access_time_sharp,
    Icons.settings,
  ];
  static const _Acttions = [
    null,
    null,
    null,
  ];
  static const _Labels = [
    "Homework",
    "TimeTable",
    "Settings",
  ];
  List<Widget> rootes = [
    HomeWork(),
    TimeTable(),
    Settings(),
  ];

  BottomNavigationBarItem activateItem(int index) {
    return BottomNavigationBarItem(
      icon: Icon(
        _Icons[index],
        //color: Colors.tealAccent[400],
      ),
      title: Text(
        _Labels[index],
        //style: TextStyle(color: Colors.tealAccent[400]),
      ),
    );
  }

  Widget body(int index, BuildContext context) {
    notify_setting_alert(context);
    return rootes[index];
  }

  Future<void> load_data(ApiDataStateNotifier apiNotify,
      TasksNotifierSettingStateNotifier tasksNotify) async {
    await apiNotify.loadTasks();
    await apiNotify.loadTimetable();
    await tasksNotify.loadNotifyEnable();
    await apiNotify.saveTimetable();
    await apiNotify.saveTasks();
    tasksNotify.fetchNotifyEnable();
  }

  @override
  Widget build(BuildContext context) {
    final _NavigationItems = <BottomNavigationBarItem>[];
    final providerState = useProvider(counterProvider);
    final provider = useProvider(counterProvider.notifier);
    final apiNotify = useProvider(ApiDataProvider.notifier);
    final tasksNotify = useProvider(TasksNotifierSettingProvider.notifier);
    //final apiNotifyState = useProvider(StudentDataProvider);
    print('start root build');
    useEffect(() {
      load_data(apiNotify, tasksNotify).then((value) {
        print('load ended');
      });
    }, []);
    for (int i = 0; i < _Icons.length; i++) {
      _NavigationItems.add(activateItem(i));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          _Labels[providerState],
          style: GoogleFonts.getFont(
            'Arizonia',
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      ),
      body: body(providerState, context),
      bottomNavigationBar: BottomNavigationBar(
        items: _NavigationItems,
        currentIndex: providerState,
        onTap: (index) => provider.setState(index),
      ),
    );
  }
}
