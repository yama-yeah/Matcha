import 'dart:convert';
import 'package:intl/intl.dart';

void main() {
  var inputFormat = DateFormat('M月d日 hh:mm');
  var a = [
    DateTime.now(),
    DateTime.now().add(Duration(hours: 1)),
    DateTime.now().add(Duration(hours: 2))
  ];
  a.sort((a, b) => b.compareTo(a));
  print(inputFormat.format(DateTime.parse('1201-01-09 09:11')));
  print(DateTime.saturday);
  print(DateTime.now().weekday);
  print(a[0].compareTo(a[1]));
}
