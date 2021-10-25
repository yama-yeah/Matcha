import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:matcha/factory/main/rootes/timetable/timetable_model.dart';

class TimeTable extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return Timetable_widget();
  }
}
