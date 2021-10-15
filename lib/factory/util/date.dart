import 'package:intl/intl.dart';

class DateUtil {
  final manaba_format = DateFormat('yyyy-MM-dd HH:mm');
  final clock_format = DateFormat('H:mm');
  final simple_format = DateFormat('M/d H:mm');
  DateTime parse(String raw) => manaba_format.parse(raw);
  String format(DateTime date) => manaba_format.format(date);
  String simple_deadline(String raw) {
    DateTime end = parse(raw);
    Duration diff = end.difference(DateTime.now());
    String deadline = '';
    if (7 >= diff.inDays && diff.inDays >= 0) {
      deadline = day_of_week(end);
      deadline += ' ' + fill_clock_format(end);
    } else {
      deadline = simple_format.format(end);
    }
    return deadline;
  }

  String fill_clock_format(DateTime raw) {
    String clock = clock_format.format(raw);
    return clock.length == 4 ? clock = ' ' + clock : clock;
  }

  String day_of_week(DateTime raw) {
    switch (raw.weekday) {
      case DateTime.monday:
        return 'Mon';
      case DateTime.tuesday:
        return 'Tue';
      case DateTime.wednesday:
        return 'Wed';
      case DateTime.thursday:
        return 'Thu';
      case DateTime.friday:
        return 'Fri';
      case DateTime.saturday:
        return 'Sat';
      case DateTime.sunday:
        return 'Sun';
      default:
        return '';
    }
  }
}

final dateutil = DateUtil();
