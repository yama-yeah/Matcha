// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'freezed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserdataTearOff {
  const _$UserdataTearOff();

  _Userdata call({String userid = '%void%', String password = ''}) {
    return _Userdata(
      userid: userid,
      password: password,
    );
  }
}

/// @nodoc
const $Userdata = _$UserdataTearOff();

/// @nodoc
mixin _$Userdata {
  String get userid => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserdataCopyWith<Userdata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserdataCopyWith<$Res> {
  factory $UserdataCopyWith(Userdata value, $Res Function(Userdata) then) =
      _$UserdataCopyWithImpl<$Res>;
  $Res call({String userid, String password});
}

/// @nodoc
class _$UserdataCopyWithImpl<$Res> implements $UserdataCopyWith<$Res> {
  _$UserdataCopyWithImpl(this._value, this._then);

  final Userdata _value;
  // ignore: unused_field
  final $Res Function(Userdata) _then;

  @override
  $Res call({
    Object? userid = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      userid: userid == freezed
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UserdataCopyWith<$Res> implements $UserdataCopyWith<$Res> {
  factory _$UserdataCopyWith(_Userdata value, $Res Function(_Userdata) then) =
      __$UserdataCopyWithImpl<$Res>;
  @override
  $Res call({String userid, String password});
}

/// @nodoc
class __$UserdataCopyWithImpl<$Res> extends _$UserdataCopyWithImpl<$Res>
    implements _$UserdataCopyWith<$Res> {
  __$UserdataCopyWithImpl(_Userdata _value, $Res Function(_Userdata) _then)
      : super(_value, (v) => _then(v as _Userdata));

  @override
  _Userdata get _value => super._value as _Userdata;

  @override
  $Res call({
    Object? userid = freezed,
    Object? password = freezed,
  }) {
    return _then(_Userdata(
      userid: userid == freezed
          ? _value.userid
          : userid // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Userdata with DiagnosticableTreeMixin implements _Userdata {
  _$_Userdata({this.userid = '%void%', this.password = ''});

  @JsonKey(defaultValue: '%void%')
  @override
  final String userid;
  @JsonKey(defaultValue: '')
  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Userdata(userid: $userid, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Userdata'))
      ..add(DiagnosticsProperty('userid', userid))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Userdata &&
            (identical(other.userid, userid) ||
                const DeepCollectionEquality().equals(other.userid, userid)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userid) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$UserdataCopyWith<_Userdata> get copyWith =>
      __$UserdataCopyWithImpl<_Userdata>(this, _$identity);
}

abstract class _Userdata implements Userdata {
  factory _Userdata({String userid, String password}) = _$_Userdata;

  @override
  String get userid => throw _privateConstructorUsedError;
  @override
  String get password => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserdataCopyWith<_Userdata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ApiDataTearOff {
  const _$ApiDataTearOff();

  _ApiData call(
      {List<Map<String, dynamic>> homeworks = const [],
      Map<String, List<dynamic>> timetable = const {
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
        ]
      },
      List<int> courseid_list = const []}) {
    return _ApiData(
      homeworks: homeworks,
      timetable: timetable,
      courseid_list: courseid_list,
    );
  }
}

/// @nodoc
const $ApiData = _$ApiDataTearOff();

/// @nodoc
mixin _$ApiData {
  List<Map<String, dynamic>> get homeworks =>
      throw _privateConstructorUsedError;
  Map<String, List<dynamic>> get timetable =>
      throw _privateConstructorUsedError;
  List<int> get courseid_list => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApiDataCopyWith<ApiData> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiDataCopyWith<$Res> {
  factory $ApiDataCopyWith(ApiData value, $Res Function(ApiData) then) =
      _$ApiDataCopyWithImpl<$Res>;
  $Res call(
      {List<Map<String, dynamic>> homeworks,
      Map<String, List<dynamic>> timetable,
      List<int> courseid_list});
}

/// @nodoc
class _$ApiDataCopyWithImpl<$Res> implements $ApiDataCopyWith<$Res> {
  _$ApiDataCopyWithImpl(this._value, this._then);

  final ApiData _value;
  // ignore: unused_field
  final $Res Function(ApiData) _then;

  @override
  $Res call({
    Object? homeworks = freezed,
    Object? timetable = freezed,
    Object? courseid_list = freezed,
  }) {
    return _then(_value.copyWith(
      homeworks: homeworks == freezed
          ? _value.homeworks
          : homeworks // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      timetable: timetable == freezed
          ? _value.timetable
          : timetable // ignore: cast_nullable_to_non_nullable
              as Map<String, List<dynamic>>,
      courseid_list: courseid_list == freezed
          ? _value.courseid_list
          : courseid_list // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
abstract class _$ApiDataCopyWith<$Res> implements $ApiDataCopyWith<$Res> {
  factory _$ApiDataCopyWith(_ApiData value, $Res Function(_ApiData) then) =
      __$ApiDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Map<String, dynamic>> homeworks,
      Map<String, List<dynamic>> timetable,
      List<int> courseid_list});
}

/// @nodoc
class __$ApiDataCopyWithImpl<$Res> extends _$ApiDataCopyWithImpl<$Res>
    implements _$ApiDataCopyWith<$Res> {
  __$ApiDataCopyWithImpl(_ApiData _value, $Res Function(_ApiData) _then)
      : super(_value, (v) => _then(v as _ApiData));

  @override
  _ApiData get _value => super._value as _ApiData;

  @override
  $Res call({
    Object? homeworks = freezed,
    Object? timetable = freezed,
    Object? courseid_list = freezed,
  }) {
    return _then(_ApiData(
      homeworks: homeworks == freezed
          ? _value.homeworks
          : homeworks // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      timetable: timetable == freezed
          ? _value.timetable
          : timetable // ignore: cast_nullable_to_non_nullable
              as Map<String, List<dynamic>>,
      courseid_list: courseid_list == freezed
          ? _value.courseid_list
          : courseid_list // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$_ApiData with DiagnosticableTreeMixin implements _ApiData {
  _$_ApiData(
      {this.homeworks = const [],
      this.timetable = const {
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
        ]
      },
      this.courseid_list = const []});

  @JsonKey(defaultValue: const [])
  @override
  final List<Map<String, dynamic>> homeworks;
  @JsonKey(defaultValue: const {
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
    ]
  })
  @override
  final Map<String, List<dynamic>> timetable;
  @JsonKey(defaultValue: const [])
  @override
  final List<int> courseid_list;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApiData(homeworks: $homeworks, timetable: $timetable, courseid_list: $courseid_list)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ApiData'))
      ..add(DiagnosticsProperty('homeworks', homeworks))
      ..add(DiagnosticsProperty('timetable', timetable))
      ..add(DiagnosticsProperty('courseid_list', courseid_list));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ApiData &&
            (identical(other.homeworks, homeworks) ||
                const DeepCollectionEquality()
                    .equals(other.homeworks, homeworks)) &&
            (identical(other.timetable, timetable) ||
                const DeepCollectionEquality()
                    .equals(other.timetable, timetable)) &&
            (identical(other.courseid_list, courseid_list) ||
                const DeepCollectionEquality()
                    .equals(other.courseid_list, courseid_list)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(homeworks) ^
      const DeepCollectionEquality().hash(timetable) ^
      const DeepCollectionEquality().hash(courseid_list);

  @JsonKey(ignore: true)
  @override
  _$ApiDataCopyWith<_ApiData> get copyWith =>
      __$ApiDataCopyWithImpl<_ApiData>(this, _$identity);
}

abstract class _ApiData implements ApiData {
  factory _ApiData(
      {List<Map<String, dynamic>> homeworks,
      Map<String, List<dynamic>> timetable,
      List<int> courseid_list}) = _$_ApiData;

  @override
  List<Map<String, dynamic>> get homeworks =>
      throw _privateConstructorUsedError;
  @override
  Map<String, List<dynamic>> get timetable =>
      throw _privateConstructorUsedError;
  @override
  List<int> get courseid_list => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ApiDataCopyWith<_ApiData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ApiFilterDataTearOff {
  const _$ApiFilterDataTearOff();

  _ApiFilterData call(
      {List<int> filter_courseid_list = const [], int filter_day = 0}) {
    return _ApiFilterData(
      filter_courseid_list: filter_courseid_list,
      filter_day: filter_day,
    );
  }
}

/// @nodoc
const $ApiFilterData = _$ApiFilterDataTearOff();

/// @nodoc
mixin _$ApiFilterData {
  List<int> get filter_courseid_list => throw _privateConstructorUsedError;
  int get filter_day => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApiFilterDataCopyWith<ApiFilterData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiFilterDataCopyWith<$Res> {
  factory $ApiFilterDataCopyWith(
          ApiFilterData value, $Res Function(ApiFilterData) then) =
      _$ApiFilterDataCopyWithImpl<$Res>;
  $Res call({List<int> filter_courseid_list, int filter_day});
}

/// @nodoc
class _$ApiFilterDataCopyWithImpl<$Res>
    implements $ApiFilterDataCopyWith<$Res> {
  _$ApiFilterDataCopyWithImpl(this._value, this._then);

  final ApiFilterData _value;
  // ignore: unused_field
  final $Res Function(ApiFilterData) _then;

  @override
  $Res call({
    Object? filter_courseid_list = freezed,
    Object? filter_day = freezed,
  }) {
    return _then(_value.copyWith(
      filter_courseid_list: filter_courseid_list == freezed
          ? _value.filter_courseid_list
          : filter_courseid_list // ignore: cast_nullable_to_non_nullable
              as List<int>,
      filter_day: filter_day == freezed
          ? _value.filter_day
          : filter_day // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ApiFilterDataCopyWith<$Res>
    implements $ApiFilterDataCopyWith<$Res> {
  factory _$ApiFilterDataCopyWith(
          _ApiFilterData value, $Res Function(_ApiFilterData) then) =
      __$ApiFilterDataCopyWithImpl<$Res>;
  @override
  $Res call({List<int> filter_courseid_list, int filter_day});
}

/// @nodoc
class __$ApiFilterDataCopyWithImpl<$Res>
    extends _$ApiFilterDataCopyWithImpl<$Res>
    implements _$ApiFilterDataCopyWith<$Res> {
  __$ApiFilterDataCopyWithImpl(
      _ApiFilterData _value, $Res Function(_ApiFilterData) _then)
      : super(_value, (v) => _then(v as _ApiFilterData));

  @override
  _ApiFilterData get _value => super._value as _ApiFilterData;

  @override
  $Res call({
    Object? filter_courseid_list = freezed,
    Object? filter_day = freezed,
  }) {
    return _then(_ApiFilterData(
      filter_courseid_list: filter_courseid_list == freezed
          ? _value.filter_courseid_list
          : filter_courseid_list // ignore: cast_nullable_to_non_nullable
              as List<int>,
      filter_day: filter_day == freezed
          ? _value.filter_day
          : filter_day // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ApiFilterData with DiagnosticableTreeMixin implements _ApiFilterData {
  _$_ApiFilterData({this.filter_courseid_list = const [], this.filter_day = 0});

  @JsonKey(defaultValue: const [])
  @override
  final List<int> filter_courseid_list;
  @JsonKey(defaultValue: 0)
  @override
  final int filter_day;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApiFilterData(filter_courseid_list: $filter_courseid_list, filter_day: $filter_day)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ApiFilterData'))
      ..add(DiagnosticsProperty('filter_courseid_list', filter_courseid_list))
      ..add(DiagnosticsProperty('filter_day', filter_day));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ApiFilterData &&
            (identical(other.filter_courseid_list, filter_courseid_list) ||
                const DeepCollectionEquality().equals(
                    other.filter_courseid_list, filter_courseid_list)) &&
            (identical(other.filter_day, filter_day) ||
                const DeepCollectionEquality()
                    .equals(other.filter_day, filter_day)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(filter_courseid_list) ^
      const DeepCollectionEquality().hash(filter_day);

  @JsonKey(ignore: true)
  @override
  _$ApiFilterDataCopyWith<_ApiFilterData> get copyWith =>
      __$ApiFilterDataCopyWithImpl<_ApiFilterData>(this, _$identity);
}

abstract class _ApiFilterData implements ApiFilterData {
  factory _ApiFilterData({List<int> filter_courseid_list, int filter_day}) =
      _$_ApiFilterData;

  @override
  List<int> get filter_courseid_list => throw _privateConstructorUsedError;
  @override
  int get filter_day => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ApiFilterDataCopyWith<_ApiFilterData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$TasksNotifierSettingDataTearOff {
  const _$TasksNotifierSettingDataTearOff();

  _TasksNotifierSettingData call(
      {Map<int, Map<String, dynamic>> is_taskid_enabled = const {},
      List<int> courseid_filter_list = const [],
      Map<String, int> timing_settings = const {
        'days': 0,
        'hours': 3,
        'minutes': 0
      },
      Map<String, String> sleeping_time = const {
        'start': '00:00',
        'end': '7:00'
      }}) {
    return _TasksNotifierSettingData(
      is_taskid_enabled: is_taskid_enabled,
      courseid_filter_list: courseid_filter_list,
      timing_settings: timing_settings,
      sleeping_time: sleeping_time,
    );
  }
}

/// @nodoc
const $TasksNotifierSettingData = _$TasksNotifierSettingDataTearOff();

/// @nodoc
mixin _$TasksNotifierSettingData {
  Map<int, Map<String, dynamic>> get is_taskid_enabled =>
      throw _privateConstructorUsedError;
  List<int> get courseid_filter_list => throw _privateConstructorUsedError;
  Map<String, int> get timing_settings => throw _privateConstructorUsedError;
  Map<String, String> get sleeping_time => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TasksNotifierSettingDataCopyWith<TasksNotifierSettingData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksNotifierSettingDataCopyWith<$Res> {
  factory $TasksNotifierSettingDataCopyWith(TasksNotifierSettingData value,
          $Res Function(TasksNotifierSettingData) then) =
      _$TasksNotifierSettingDataCopyWithImpl<$Res>;
  $Res call(
      {Map<int, Map<String, dynamic>> is_taskid_enabled,
      List<int> courseid_filter_list,
      Map<String, int> timing_settings,
      Map<String, String> sleeping_time});
}

/// @nodoc
class _$TasksNotifierSettingDataCopyWithImpl<$Res>
    implements $TasksNotifierSettingDataCopyWith<$Res> {
  _$TasksNotifierSettingDataCopyWithImpl(this._value, this._then);

  final TasksNotifierSettingData _value;
  // ignore: unused_field
  final $Res Function(TasksNotifierSettingData) _then;

  @override
  $Res call({
    Object? is_taskid_enabled = freezed,
    Object? courseid_filter_list = freezed,
    Object? timing_settings = freezed,
    Object? sleeping_time = freezed,
  }) {
    return _then(_value.copyWith(
      is_taskid_enabled: is_taskid_enabled == freezed
          ? _value.is_taskid_enabled
          : is_taskid_enabled // ignore: cast_nullable_to_non_nullable
              as Map<int, Map<String, dynamic>>,
      courseid_filter_list: courseid_filter_list == freezed
          ? _value.courseid_filter_list
          : courseid_filter_list // ignore: cast_nullable_to_non_nullable
              as List<int>,
      timing_settings: timing_settings == freezed
          ? _value.timing_settings
          : timing_settings // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      sleeping_time: sleeping_time == freezed
          ? _value.sleeping_time
          : sleeping_time // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
abstract class _$TasksNotifierSettingDataCopyWith<$Res>
    implements $TasksNotifierSettingDataCopyWith<$Res> {
  factory _$TasksNotifierSettingDataCopyWith(_TasksNotifierSettingData value,
          $Res Function(_TasksNotifierSettingData) then) =
      __$TasksNotifierSettingDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {Map<int, Map<String, dynamic>> is_taskid_enabled,
      List<int> courseid_filter_list,
      Map<String, int> timing_settings,
      Map<String, String> sleeping_time});
}

/// @nodoc
class __$TasksNotifierSettingDataCopyWithImpl<$Res>
    extends _$TasksNotifierSettingDataCopyWithImpl<$Res>
    implements _$TasksNotifierSettingDataCopyWith<$Res> {
  __$TasksNotifierSettingDataCopyWithImpl(_TasksNotifierSettingData _value,
      $Res Function(_TasksNotifierSettingData) _then)
      : super(_value, (v) => _then(v as _TasksNotifierSettingData));

  @override
  _TasksNotifierSettingData get _value =>
      super._value as _TasksNotifierSettingData;

  @override
  $Res call({
    Object? is_taskid_enabled = freezed,
    Object? courseid_filter_list = freezed,
    Object? timing_settings = freezed,
    Object? sleeping_time = freezed,
  }) {
    return _then(_TasksNotifierSettingData(
      is_taskid_enabled: is_taskid_enabled == freezed
          ? _value.is_taskid_enabled
          : is_taskid_enabled // ignore: cast_nullable_to_non_nullable
              as Map<int, Map<String, dynamic>>,
      courseid_filter_list: courseid_filter_list == freezed
          ? _value.courseid_filter_list
          : courseid_filter_list // ignore: cast_nullable_to_non_nullable
              as List<int>,
      timing_settings: timing_settings == freezed
          ? _value.timing_settings
          : timing_settings // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      sleeping_time: sleeping_time == freezed
          ? _value.sleeping_time
          : sleeping_time // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc

class _$_TasksNotifierSettingData
    with DiagnosticableTreeMixin
    implements _TasksNotifierSettingData {
  _$_TasksNotifierSettingData(
      {this.is_taskid_enabled = const {},
      this.courseid_filter_list = const [],
      this.timing_settings = const {'days': 0, 'hours': 3, 'minutes': 0},
      this.sleeping_time = const {'start': '00:00', 'end': '7:00'}});

  @JsonKey(defaultValue: const {})
  @override
  final Map<int, Map<String, dynamic>> is_taskid_enabled;
  @JsonKey(defaultValue: const [])
  @override
  final List<int> courseid_filter_list;
  @JsonKey(defaultValue: const {'days': 0, 'hours': 3, 'minutes': 0})
  @override
  final Map<String, int> timing_settings;
  @JsonKey(defaultValue: const {'start': '00:00', 'end': '7:00'})
  @override
  final Map<String, String> sleeping_time;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TasksNotifierSettingData(is_taskid_enabled: $is_taskid_enabled, courseid_filter_list: $courseid_filter_list, timing_settings: $timing_settings, sleeping_time: $sleeping_time)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TasksNotifierSettingData'))
      ..add(DiagnosticsProperty('is_taskid_enabled', is_taskid_enabled))
      ..add(DiagnosticsProperty('courseid_filter_list', courseid_filter_list))
      ..add(DiagnosticsProperty('timing_settings', timing_settings))
      ..add(DiagnosticsProperty('sleeping_time', sleeping_time));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TasksNotifierSettingData &&
            (identical(other.is_taskid_enabled, is_taskid_enabled) ||
                const DeepCollectionEquality()
                    .equals(other.is_taskid_enabled, is_taskid_enabled)) &&
            (identical(other.courseid_filter_list, courseid_filter_list) ||
                const DeepCollectionEquality().equals(
                    other.courseid_filter_list, courseid_filter_list)) &&
            (identical(other.timing_settings, timing_settings) ||
                const DeepCollectionEquality()
                    .equals(other.timing_settings, timing_settings)) &&
            (identical(other.sleeping_time, sleeping_time) ||
                const DeepCollectionEquality()
                    .equals(other.sleeping_time, sleeping_time)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(is_taskid_enabled) ^
      const DeepCollectionEquality().hash(courseid_filter_list) ^
      const DeepCollectionEquality().hash(timing_settings) ^
      const DeepCollectionEquality().hash(sleeping_time);

  @JsonKey(ignore: true)
  @override
  _$TasksNotifierSettingDataCopyWith<_TasksNotifierSettingData> get copyWith =>
      __$TasksNotifierSettingDataCopyWithImpl<_TasksNotifierSettingData>(
          this, _$identity);
}

abstract class _TasksNotifierSettingData implements TasksNotifierSettingData {
  factory _TasksNotifierSettingData(
      {Map<int, Map<String, dynamic>> is_taskid_enabled,
      List<int> courseid_filter_list,
      Map<String, int> timing_settings,
      Map<String, String> sleeping_time}) = _$_TasksNotifierSettingData;

  @override
  Map<int, Map<String, dynamic>> get is_taskid_enabled =>
      throw _privateConstructorUsedError;
  @override
  List<int> get courseid_filter_list => throw _privateConstructorUsedError;
  @override
  Map<String, int> get timing_settings => throw _privateConstructorUsedError;
  @override
  Map<String, String> get sleeping_time => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TasksNotifierSettingDataCopyWith<_TasksNotifierSettingData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CourseseNotifierSettingDataTearOff {
  const _$CourseseNotifierSettingDataTearOff();

  _CourseseNotifierSettingData call(
      {Map<int, bool> is_courseid_enabled = const {},
      Map<String, int> timing_settings = const {'minutes': 0}}) {
    return _CourseseNotifierSettingData(
      is_courseid_enabled: is_courseid_enabled,
      timing_settings: timing_settings,
    );
  }
}

/// @nodoc
const $CourseseNotifierSettingData = _$CourseseNotifierSettingDataTearOff();

/// @nodoc
mixin _$CourseseNotifierSettingData {
  Map<int, bool> get is_courseid_enabled => throw _privateConstructorUsedError;
  Map<String, int> get timing_settings => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CourseseNotifierSettingDataCopyWith<CourseseNotifierSettingData>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourseseNotifierSettingDataCopyWith<$Res> {
  factory $CourseseNotifierSettingDataCopyWith(
          CourseseNotifierSettingData value,
          $Res Function(CourseseNotifierSettingData) then) =
      _$CourseseNotifierSettingDataCopyWithImpl<$Res>;
  $Res call(
      {Map<int, bool> is_courseid_enabled, Map<String, int> timing_settings});
}

/// @nodoc
class _$CourseseNotifierSettingDataCopyWithImpl<$Res>
    implements $CourseseNotifierSettingDataCopyWith<$Res> {
  _$CourseseNotifierSettingDataCopyWithImpl(this._value, this._then);

  final CourseseNotifierSettingData _value;
  // ignore: unused_field
  final $Res Function(CourseseNotifierSettingData) _then;

  @override
  $Res call({
    Object? is_courseid_enabled = freezed,
    Object? timing_settings = freezed,
  }) {
    return _then(_value.copyWith(
      is_courseid_enabled: is_courseid_enabled == freezed
          ? _value.is_courseid_enabled
          : is_courseid_enabled // ignore: cast_nullable_to_non_nullable
              as Map<int, bool>,
      timing_settings: timing_settings == freezed
          ? _value.timing_settings
          : timing_settings // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
    ));
  }
}

/// @nodoc
abstract class _$CourseseNotifierSettingDataCopyWith<$Res>
    implements $CourseseNotifierSettingDataCopyWith<$Res> {
  factory _$CourseseNotifierSettingDataCopyWith(
          _CourseseNotifierSettingData value,
          $Res Function(_CourseseNotifierSettingData) then) =
      __$CourseseNotifierSettingDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {Map<int, bool> is_courseid_enabled, Map<String, int> timing_settings});
}

/// @nodoc
class __$CourseseNotifierSettingDataCopyWithImpl<$Res>
    extends _$CourseseNotifierSettingDataCopyWithImpl<$Res>
    implements _$CourseseNotifierSettingDataCopyWith<$Res> {
  __$CourseseNotifierSettingDataCopyWithImpl(
      _CourseseNotifierSettingData _value,
      $Res Function(_CourseseNotifierSettingData) _then)
      : super(_value, (v) => _then(v as _CourseseNotifierSettingData));

  @override
  _CourseseNotifierSettingData get _value =>
      super._value as _CourseseNotifierSettingData;

  @override
  $Res call({
    Object? is_courseid_enabled = freezed,
    Object? timing_settings = freezed,
  }) {
    return _then(_CourseseNotifierSettingData(
      is_courseid_enabled: is_courseid_enabled == freezed
          ? _value.is_courseid_enabled
          : is_courseid_enabled // ignore: cast_nullable_to_non_nullable
              as Map<int, bool>,
      timing_settings: timing_settings == freezed
          ? _value.timing_settings
          : timing_settings // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
    ));
  }
}

/// @nodoc

class _$_CourseseNotifierSettingData
    with DiagnosticableTreeMixin
    implements _CourseseNotifierSettingData {
  _$_CourseseNotifierSettingData(
      {this.is_courseid_enabled = const {},
      this.timing_settings = const {'minutes': 0}});

  @JsonKey(defaultValue: const {})
  @override
  final Map<int, bool> is_courseid_enabled;
  @JsonKey(defaultValue: const {'minutes': 0})
  @override
  final Map<String, int> timing_settings;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CourseseNotifierSettingData(is_courseid_enabled: $is_courseid_enabled, timing_settings: $timing_settings)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CourseseNotifierSettingData'))
      ..add(DiagnosticsProperty('is_courseid_enabled', is_courseid_enabled))
      ..add(DiagnosticsProperty('timing_settings', timing_settings));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CourseseNotifierSettingData &&
            (identical(other.is_courseid_enabled, is_courseid_enabled) ||
                const DeepCollectionEquality()
                    .equals(other.is_courseid_enabled, is_courseid_enabled)) &&
            (identical(other.timing_settings, timing_settings) ||
                const DeepCollectionEquality()
                    .equals(other.timing_settings, timing_settings)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(is_courseid_enabled) ^
      const DeepCollectionEquality().hash(timing_settings);

  @JsonKey(ignore: true)
  @override
  _$CourseseNotifierSettingDataCopyWith<_CourseseNotifierSettingData>
      get copyWith => __$CourseseNotifierSettingDataCopyWithImpl<
          _CourseseNotifierSettingData>(this, _$identity);
}

abstract class _CourseseNotifierSettingData
    implements CourseseNotifierSettingData {
  factory _CourseseNotifierSettingData(
      {Map<int, bool> is_courseid_enabled,
      Map<String, int> timing_settings}) = _$_CourseseNotifierSettingData;

  @override
  Map<int, bool> get is_courseid_enabled => throw _privateConstructorUsedError;
  @override
  Map<String, int> get timing_settings => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$CourseseNotifierSettingDataCopyWith<_CourseseNotifierSettingData>
      get copyWith => throw _privateConstructorUsedError;
}
