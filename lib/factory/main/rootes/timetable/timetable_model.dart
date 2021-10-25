import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:matcha/factory/util/date.dart';
import 'package:matcha/data/provider/provider.dart';

class Timetable_widget extends HookWidget {
  List<String> keys = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Other'];
  double height = 75;
  int filter = 1;
  double font_size = 12;

  List<List<List<String>>> table2main_row(Map<String, List<dynamic>> raw) {
    List<List<List<String>>> result = [];
    for (int i = 0; i < 6; i++) {
      List<List<String>> row = [];
      for (String key in keys.take(keys.length - 1)) {
        List<dynamic> raw_table = raw[key]![i];
        List<String> table = raw_table
            .map((value) => value['course_name'])
            .toList()
            .cast<String>();
        row.add(table);
      }
      result.add(row);
    }
    return result;
  }

  //TODO: 時間割のデザイン
  TableRow make_header(BuildContext context) {
    double radious = 0;
    List<Widget> elements = [
      TableCell(
        child: Padding(
          padding: EdgeInsets.all(2.5),
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).errorColor,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0)),
            ),
            alignment: Alignment.center,
            child: Text(
              '',
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    ];
    for (String key in keys.take(keys.length - 1)) {
      if (key == 'Sat') {
        radious = 10;
      }
      elements.add(
        TableCell(
          child: Padding(
            padding: EdgeInsets.all(2.5),
            child: Container(
              alignment: Alignment.center,
              //color: Theme.of(context).dividerColor,
              decoration: BoxDecoration(
                color: Theme.of(context).dividerColor,
                borderRadius:
                    BorderRadius.only(topRight: Radius.circular(radious)),
              ),
              child: Text(
                key,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      );
    }
    return TableRow(
      children: elements,
    );
  }

  TableRow make_row(
      BuildContext context, String key, List<List<String>> values) {
    double radious = 0;
    if (key == '6') {
      radious = 10;
    }
    List<Widget> elements = [
      TableCell(
        child: Padding(
          padding: EdgeInsets.all(2.5),
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Theme.of(context).dividerColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(radious),
              ),
            ),
            //color: Theme.of(context).dividerColor,
            height: height,
            child: Text(key),
          ),
        ),
      ),
    ];
    for (int i = 0; i < values.length; i++) {
      radious = 0;
      if (i == values.length - 1 && key == '6') {
        radious = 10;
      }
      elements.add(
        TableCell(
          child: Container(
            height: height,
            child: Column(
              children: make_column(context, values[i], radious),
            ),
          ),
        ),
      );
    }
    return TableRow(
      children: elements,
    );
  }

  List<Widget> make_column(
      BuildContext context, List<String> values, double raw_radious) {
    List<Widget> column = [];
    for (int i = 0; i < values.length; i++) {
      double bottom = 0;
      String text = values[i];
      double radious = 0;
      if (text == '%void%') {
        text = '';
      }
      if (values.length > 1 && i != values.length - 1) {
        bottom = 5;
      }
      if (values.length - 1 == i) {
        radious = raw_radious;
      }
      column.add(
        Padding(
          padding: EdgeInsets.fromLTRB(2.5, 0, 2.5, bottom),
          child: Container(
            height: (height - 5 * (values.length - 1)) / values.length,
            alignment: Alignment.topLeft,
            decoration: BoxDecoration(
              color: Theme.of(context).dividerColor,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(radious),
              ),
            ),
            //color: Theme.of(context).dividerColor,
            child: Text(
              text,
              overflow: TextOverflow.fade,
              style: TextStyle(fontSize: font_size),
            ),
          ),
        ),
      );
    }
    return column;
  }

  Widget make_table(
      BuildContext context, Map<String, List<dynamic>> timetable) {
    //String dow = dateutil.day_of_week(DateTime.now()); //曜日
    TableRow header = make_header(context);
    final main_row = table2main_row(timetable);

    List<TableRow> table_list = [
      header,
    ];
    for (int i = 0; i < 6; i++) {
      table_list.add(make_row(context, (i + 1).toString(), main_row[i]));
      print(i);
    }
    Widget table = Table(
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      columnWidths: {
        0: FlexColumnWidth(0.3),
      },
      //border: TableBorder.all(color: Colors.black),
      children: table_list,
    );
    //TODO: 取得する関すu
    return table;
  }

  @override
  Widget build(BuildContext context) {
    final apiProvider = useProvider(ApiDataProvider);
    final apiState = useProvider(ApiDataProvider.notifier);
    return Padding(
        padding: EdgeInsets.fromLTRB(2.5, 5, 2.5, 0),
        child: Container(
          child: make_table(context, apiState.state.timetable),
        ));
  }
}
