import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

class Api {
  //ログインできてるかチェック
  final url = 'https://manabaunko.azurewebsites.net/';
  Map<String, String> headers = {'content-type': 'application/json'};
  Map<String, dynamic> user = {'userid': 'b1021091', 'password': 'gsi2Z2WU'};
  void User(String userid, String password) {
    this.user['userid'] = userid;
    this.user['password'] = password;
  }

  Future<bool> login() async {
    String body = json.encode(user);
    var raw =
        await http.post(Uri.parse(url + 'login'), body: body, headers: headers);
    //print(json2map(raw)['status']);
    return await json2map(raw)['status'] == 'success';
  }

  Future<List<Map<String, dynamic>>> get_tasks(
      {int least = 0, List<int>? course_list = null}) async {
    print('get_tasks');
    DateFormat _dateform = DateFormat('yyyy-MM-dd HH:mm');
    Map<String, dynamic> _options = {};
    if (course_list != null) {
      _options['exception_id'] = course_list.toString();
    }
    if (least != 0) {
      DateTime _date = DateTime.now();
      _date = _date.add(Duration(days: least) * -1);
      _options['except_state'] = [''];
    } else {}

    _options.addAll(user);
    print(_options);
    String body = json.encode(_options);
    var _raw = await http.post(Uri.parse(url), body: body, headers: headers);
    //#debuging
    List<Map<String, dynamic>> _tasks =
        await json2map(_raw)['tasks'].cast<Map<String, dynamic>>();
    return _tasks;
  }

  Future<Map<String, dynamic>> get_timetable() async {
    var raw = await http.post(Uri.parse(url + 'timetable'), body: user);
    return await json2map(raw)['timetable'];
  }

  Map<String, dynamic> json2map(http.Response json) {
    String str = utf8.decode(json.bodyBytes);
    print(str);
    return jsonDecode(str);
  }
}

Api api = new Api();

void main(List<String> arguments) {
  // This example uses the Google Books API to search for books about http.
  // https://developers.google.com/books/docs/overview

  //print(api.login());
  api.get_tasks().then((value) {
    //print(value);
    print(value[0]['start'].runtimeType);
  });
}
