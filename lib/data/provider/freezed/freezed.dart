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
part "freezed.freezed.dart";

@freezed
class Userdata with _$Userdata {
  //key chain
  factory Userdata(
      {@Default('%void%') String userid,
      @Default('') String password}) = _Userdata;
}

@freezed
class ApiData with _$ApiData {
  //this class has api's data
  //such as tasks and timetable
  factory ApiData({
    @Default([])
        List<Map<String, dynamic>> homeworks,
    @Default({
      'Mon': [
        [
          {'course_id': 0, 'course_name': '%void%', 'course_url': '%void%'}
        ],
        [
          {'course_id': 0, 'course_name': '%void%', 'course_url': '%void%'}
        ],
        [
          {'course_id': 0, 'course_name': '%void%', 'course_url': '%void%'}
        ],
        [
          {'course_id': 0, 'course_name': '%void%', 'course_url': '%void%'}
        ],
        [
          {'course_id': 0, 'course_name': '%void%', 'course_url': '%void%'}
        ],
        [
          {'course_id': 0, 'course_name': '%void%', 'course_url': '%void%'}
        ]
      ],
      'Tue': [
        [
          {'course_id': 0, 'course_name': '%void%', 'course_url': '%void%'}
        ],
        [
          {'course_id': 0, 'course_name': '%void%', 'course_url': '%void%'}
        ],
        [
          {'course_id': 0, 'course_name': '%void%', 'course_url': '%void%'}
        ],
        [
          {'course_id': 0, 'course_name': '%void%', 'course_url': '%void%'}
        ],
        [
          {'course_id': 0, 'course_name': '%void%', 'course_url': '%void%'}
        ],
        [
          {'course_id': 0, 'course_name': '%void%', 'course_url': '%void%'}
        ]
      ],
      'Wed': [
        [
          {'course_id': 0, 'course_name': '%void%', 'course_url': '%void%'}
        ],
        [
          {'course_id': 0, 'course_name': '%void%', 'course_url': '%void%'}
        ],
        [
          {'course_id': 0, 'course_name': '%void%', 'course_url': '%void%'}
        ],
        [
          {'course_id': 0, 'course_name': '%void%', 'course_url': '%void%'}
        ],
        [
          {'course_id': 0, 'course_name': '%void%', 'course_url': '%void%'}
        ],
        [
          {'course_id': 0, 'course_name': '%void%', 'course_url': '%void%'}
        ]
      ],
      'Thu': [
        [
          {'course_id': 0, 'course_name': '%void%', 'course_url': '%void%'}
        ],
        [
          {'course_id': 0, 'course_name': '%void%', 'course_url': '%void%'}
        ],
        [
          {'course_id': 0, 'course_name': '%void%', 'course_url': '%void%'}
        ],
        [
          {'course_id': 0, 'course_name': '%void%', 'course_url': '%void%'}
        ],
        [
          {'course_id': 0, 'course_name': '%void%', 'course_url': '%void%'}
        ],
        [
          {'course_id': 0, 'course_name': '%void%', 'course_url': '%void%'}
        ]
      ],
      'Fri': [
        [
          {'course_id': 0, 'course_name': '%void%', 'course_url': '%void%'}
        ],
        [
          {'course_id': 0, 'course_name': '%void%', 'course_url': '%void%'}
        ],
        [
          {'course_id': 0, 'course_name': '%void%', 'course_url': '%void%'}
        ],
        [
          {'course_id': 0, 'course_name': '%void%', 'course_url': '%void%'}
        ],
        [
          {'course_id': 0, 'course_name': '%void%', 'course_url': '%void%'}
        ],
        [
          {'course_id': 0, 'course_name': '%void%', 'course_url': '%void%'}
        ]
      ],
      'Others': [
        {'course_id': 0, 'course_name': '%void%', 'course_url': '%void%'}
      ],
    })
        Map<String, List<dynamic>> timetable,
    @Default([])
        List<int> courseid_list,
  }) = _ApiData;
}

@freezed
class ApiFilterData with _$ApiFilterData {
  //this class has api's filter settings
  //such as filter by courses ids and daya
  factory ApiFilterData({
    @Default([]) List<int> filter_courseid_list,
    @Default(0) int filter_day,
  }) = _ApiFilterData;
}

@freezed
class TasksNotifierSettingData with _$TasksNotifierSettingData {
  //this class has tasks notifier settings
  //such as settings for notification
  factory TasksNotifierSettingData({
    @Default({}) Map<int, Map<String, dynamic>> is_taskid_enabled,
    @Default([]) List<int> courseid_filter_list,
    @Default({'days': 0, 'hours': 3, 'minutes': 0})
        Map<String, int> timing_settings,
    @Default({'start': '00:00', 'end': '7:00'})
        Map<String, String> sleeping_time,
  }) = _TasksNotifierSettingData;
}

@freezed
class CourseseNotifierSettingData with _$CourseseNotifierSettingData {
  //this class has courses notifier settings
  //such as settings for notification
  factory CourseseNotifierSettingData({
    @Default({}) Map<int, bool> is_courseid_enabled,
    @Default({'minutes': 0}) Map<String, int> timing_settings,
  }) = _CourseseNotifierSettingData;
}
