// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prayer_time.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PrayerTime _$PrayerTimeFromJson(Map<String, dynamic> json) {
  return _PrayerTime.fromJson(json);
}

/// @nodoc
mixin _$PrayerTime {
  @JsonKey(name: 'code')
  int? get code => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<DataBean>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PrayerTimeCopyWith<PrayerTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrayerTimeCopyWith<$Res> {
  factory $PrayerTimeCopyWith(
          PrayerTime value, $Res Function(PrayerTime) then) =
      _$PrayerTimeCopyWithImpl<$Res, PrayerTime>;
  @useResult
  $Res call(
      {@JsonKey(name: 'code') int? code,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'data') List<DataBean>? data});
}

/// @nodoc
class _$PrayerTimeCopyWithImpl<$Res, $Val extends PrayerTime>
    implements $PrayerTimeCopyWith<$Res> {
  _$PrayerTimeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataBean>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PrayerTimeCopyWith<$Res>
    implements $PrayerTimeCopyWith<$Res> {
  factory _$$_PrayerTimeCopyWith(
          _$_PrayerTime value, $Res Function(_$_PrayerTime) then) =
      __$$_PrayerTimeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'code') int? code,
      @JsonKey(name: 'status') String? status,
      @JsonKey(name: 'data') List<DataBean>? data});
}

/// @nodoc
class __$$_PrayerTimeCopyWithImpl<$Res>
    extends _$PrayerTimeCopyWithImpl<$Res, _$_PrayerTime>
    implements _$$_PrayerTimeCopyWith<$Res> {
  __$$_PrayerTimeCopyWithImpl(
      _$_PrayerTime _value, $Res Function(_$_PrayerTime) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_PrayerTime(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<DataBean>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PrayerTime implements _PrayerTime {
  const _$_PrayerTime(
      {@JsonKey(name: 'code') this.code,
      @JsonKey(name: 'status') this.status,
      @JsonKey(name: 'data') final List<DataBean>? data})
      : _data = data;

  factory _$_PrayerTime.fromJson(Map<String, dynamic> json) =>
      _$$_PrayerTimeFromJson(json);

  @override
  @JsonKey(name: 'code')
  final int? code;
  @override
  @JsonKey(name: 'status')
  final String? status;
  final List<DataBean>? _data;
  @override
  @JsonKey(name: 'data')
  List<DataBean>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PrayerTime(code: $code, status: $status, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PrayerTime &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, code, status, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PrayerTimeCopyWith<_$_PrayerTime> get copyWith =>
      __$$_PrayerTimeCopyWithImpl<_$_PrayerTime>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PrayerTimeToJson(
      this,
    );
  }
}

abstract class _PrayerTime implements PrayerTime {
  const factory _PrayerTime(
      {@JsonKey(name: 'code') final int? code,
      @JsonKey(name: 'status') final String? status,
      @JsonKey(name: 'data') final List<DataBean>? data}) = _$_PrayerTime;

  factory _PrayerTime.fromJson(Map<String, dynamic> json) =
      _$_PrayerTime.fromJson;

  @override
  @JsonKey(name: 'code')
  int? get code;
  @override
  @JsonKey(name: 'status')
  String? get status;
  @override
  @JsonKey(name: 'data')
  List<DataBean>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_PrayerTimeCopyWith<_$_PrayerTime> get copyWith =>
      throw _privateConstructorUsedError;
}

DataBean _$DataBeanFromJson(Map<String, dynamic> json) {
  return _DataBean.fromJson(json);
}

/// @nodoc
mixin _$DataBean {
  @JsonKey(name: 'timings')
  TimingsBean? get timings => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  DateBean? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'meta')
  MetaBean? get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataBeanCopyWith<DataBean> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataBeanCopyWith<$Res> {
  factory $DataBeanCopyWith(DataBean value, $Res Function(DataBean) then) =
      _$DataBeanCopyWithImpl<$Res, DataBean>;
  @useResult
  $Res call(
      {@JsonKey(name: 'timings') TimingsBean? timings,
      @JsonKey(name: 'date') DateBean? date,
      @JsonKey(name: 'meta') MetaBean? meta});

  $TimingsBeanCopyWith<$Res>? get timings;
  $DateBeanCopyWith<$Res>? get date;
  $MetaBeanCopyWith<$Res>? get meta;
}

/// @nodoc
class _$DataBeanCopyWithImpl<$Res, $Val extends DataBean>
    implements $DataBeanCopyWith<$Res> {
  _$DataBeanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timings = freezed,
    Object? date = freezed,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      timings: freezed == timings
          ? _value.timings
          : timings // ignore: cast_nullable_to_non_nullable
              as TimingsBean?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateBean?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaBean?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TimingsBeanCopyWith<$Res>? get timings {
    if (_value.timings == null) {
      return null;
    }

    return $TimingsBeanCopyWith<$Res>(_value.timings!, (value) {
      return _then(_value.copyWith(timings: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DateBeanCopyWith<$Res>? get date {
    if (_value.date == null) {
      return null;
    }

    return $DateBeanCopyWith<$Res>(_value.date!, (value) {
      return _then(_value.copyWith(date: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaBeanCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $MetaBeanCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DataBeanCopyWith<$Res> implements $DataBeanCopyWith<$Res> {
  factory _$$_DataBeanCopyWith(
          _$_DataBean value, $Res Function(_$_DataBean) then) =
      __$$_DataBeanCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'timings') TimingsBean? timings,
      @JsonKey(name: 'date') DateBean? date,
      @JsonKey(name: 'meta') MetaBean? meta});

  @override
  $TimingsBeanCopyWith<$Res>? get timings;
  @override
  $DateBeanCopyWith<$Res>? get date;
  @override
  $MetaBeanCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$_DataBeanCopyWithImpl<$Res>
    extends _$DataBeanCopyWithImpl<$Res, _$_DataBean>
    implements _$$_DataBeanCopyWith<$Res> {
  __$$_DataBeanCopyWithImpl(
      _$_DataBean _value, $Res Function(_$_DataBean) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timings = freezed,
    Object? date = freezed,
    Object? meta = freezed,
  }) {
    return _then(_$_DataBean(
      timings: freezed == timings
          ? _value.timings
          : timings // ignore: cast_nullable_to_non_nullable
              as TimingsBean?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateBean?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaBean?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DataBean implements _DataBean {
  const _$_DataBean(
      {@JsonKey(name: 'timings') this.timings,
      @JsonKey(name: 'date') this.date,
      @JsonKey(name: 'meta') this.meta});

  factory _$_DataBean.fromJson(Map<String, dynamic> json) =>
      _$$_DataBeanFromJson(json);

  @override
  @JsonKey(name: 'timings')
  final TimingsBean? timings;
  @override
  @JsonKey(name: 'date')
  final DateBean? date;
  @override
  @JsonKey(name: 'meta')
  final MetaBean? meta;

  @override
  String toString() {
    return 'DataBean(timings: $timings, date: $date, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataBean &&
            (identical(other.timings, timings) || other.timings == timings) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, timings, date, meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataBeanCopyWith<_$_DataBean> get copyWith =>
      __$$_DataBeanCopyWithImpl<_$_DataBean>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DataBeanToJson(
      this,
    );
  }
}

abstract class _DataBean implements DataBean {
  const factory _DataBean(
      {@JsonKey(name: 'timings') final TimingsBean? timings,
      @JsonKey(name: 'date') final DateBean? date,
      @JsonKey(name: 'meta') final MetaBean? meta}) = _$_DataBean;

  factory _DataBean.fromJson(Map<String, dynamic> json) = _$_DataBean.fromJson;

  @override
  @JsonKey(name: 'timings')
  TimingsBean? get timings;
  @override
  @JsonKey(name: 'date')
  DateBean? get date;
  @override
  @JsonKey(name: 'meta')
  MetaBean? get meta;
  @override
  @JsonKey(ignore: true)
  _$$_DataBeanCopyWith<_$_DataBean> get copyWith =>
      throw _privateConstructorUsedError;
}

MetaBean _$MetaBeanFromJson(Map<String, dynamic> json) {
  return _MetaBean.fromJson(json);
}

/// @nodoc
mixin _$MetaBean {
  @JsonKey(name: 'latitude')
  double? get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'longitude')
  double? get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'timezone')
  String? get timezone => throw _privateConstructorUsedError;
  @JsonKey(name: 'method')
  MethodBean? get method => throw _privateConstructorUsedError;
  @JsonKey(name: 'latitudeAdjustmentMethod')
  String? get latitudeAdjustmentMethod => throw _privateConstructorUsedError;
  @JsonKey(name: 'midnightMode')
  String? get midnightMode => throw _privateConstructorUsedError;
  @JsonKey(name: 'school')
  String? get school => throw _privateConstructorUsedError;
  @JsonKey(name: 'offset')
  OffsetBean? get offset => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaBeanCopyWith<MetaBean> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaBeanCopyWith<$Res> {
  factory $MetaBeanCopyWith(MetaBean value, $Res Function(MetaBean) then) =
      _$MetaBeanCopyWithImpl<$Res, MetaBean>;
  @useResult
  $Res call(
      {@JsonKey(name: 'latitude')
          double? latitude,
      @JsonKey(name: 'longitude')
          double? longitude,
      @JsonKey(name: 'timezone')
          String? timezone,
      @JsonKey(name: 'method')
          MethodBean? method,
      @JsonKey(name: 'latitudeAdjustmentMethod')
          String? latitudeAdjustmentMethod,
      @JsonKey(name: 'midnightMode')
          String? midnightMode,
      @JsonKey(name: 'school')
          String? school,
      @JsonKey(name: 'offset')
          OffsetBean? offset});

  $MethodBeanCopyWith<$Res>? get method;
  $OffsetBeanCopyWith<$Res>? get offset;
}

/// @nodoc
class _$MetaBeanCopyWithImpl<$Res, $Val extends MetaBean>
    implements $MetaBeanCopyWith<$Res> {
  _$MetaBeanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? timezone = freezed,
    Object? method = freezed,
    Object? latitudeAdjustmentMethod = freezed,
    Object? midnightMode = freezed,
    Object? school = freezed,
    Object? offset = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      method: freezed == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as MethodBean?,
      latitudeAdjustmentMethod: freezed == latitudeAdjustmentMethod
          ? _value.latitudeAdjustmentMethod
          : latitudeAdjustmentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      midnightMode: freezed == midnightMode
          ? _value.midnightMode
          : midnightMode // ignore: cast_nullable_to_non_nullable
              as String?,
      school: freezed == school
          ? _value.school
          : school // ignore: cast_nullable_to_non_nullable
              as String?,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as OffsetBean?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MethodBeanCopyWith<$Res>? get method {
    if (_value.method == null) {
      return null;
    }

    return $MethodBeanCopyWith<$Res>(_value.method!, (value) {
      return _then(_value.copyWith(method: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $OffsetBeanCopyWith<$Res>? get offset {
    if (_value.offset == null) {
      return null;
    }

    return $OffsetBeanCopyWith<$Res>(_value.offset!, (value) {
      return _then(_value.copyWith(offset: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MetaBeanCopyWith<$Res> implements $MetaBeanCopyWith<$Res> {
  factory _$$_MetaBeanCopyWith(
          _$_MetaBean value, $Res Function(_$_MetaBean) then) =
      __$$_MetaBeanCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'latitude')
          double? latitude,
      @JsonKey(name: 'longitude')
          double? longitude,
      @JsonKey(name: 'timezone')
          String? timezone,
      @JsonKey(name: 'method')
          MethodBean? method,
      @JsonKey(name: 'latitudeAdjustmentMethod')
          String? latitudeAdjustmentMethod,
      @JsonKey(name: 'midnightMode')
          String? midnightMode,
      @JsonKey(name: 'school')
          String? school,
      @JsonKey(name: 'offset')
          OffsetBean? offset});

  @override
  $MethodBeanCopyWith<$Res>? get method;
  @override
  $OffsetBeanCopyWith<$Res>? get offset;
}

/// @nodoc
class __$$_MetaBeanCopyWithImpl<$Res>
    extends _$MetaBeanCopyWithImpl<$Res, _$_MetaBean>
    implements _$$_MetaBeanCopyWith<$Res> {
  __$$_MetaBeanCopyWithImpl(
      _$_MetaBean _value, $Res Function(_$_MetaBean) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? timezone = freezed,
    Object? method = freezed,
    Object? latitudeAdjustmentMethod = freezed,
    Object? midnightMode = freezed,
    Object? school = freezed,
    Object? offset = freezed,
  }) {
    return _then(_$_MetaBean(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      method: freezed == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as MethodBean?,
      latitudeAdjustmentMethod: freezed == latitudeAdjustmentMethod
          ? _value.latitudeAdjustmentMethod
          : latitudeAdjustmentMethod // ignore: cast_nullable_to_non_nullable
              as String?,
      midnightMode: freezed == midnightMode
          ? _value.midnightMode
          : midnightMode // ignore: cast_nullable_to_non_nullable
              as String?,
      school: freezed == school
          ? _value.school
          : school // ignore: cast_nullable_to_non_nullable
              as String?,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as OffsetBean?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MetaBean implements _MetaBean {
  const _$_MetaBean(
      {@JsonKey(name: 'latitude') this.latitude,
      @JsonKey(name: 'longitude') this.longitude,
      @JsonKey(name: 'timezone') this.timezone,
      @JsonKey(name: 'method') this.method,
      @JsonKey(name: 'latitudeAdjustmentMethod') this.latitudeAdjustmentMethod,
      @JsonKey(name: 'midnightMode') this.midnightMode,
      @JsonKey(name: 'school') this.school,
      @JsonKey(name: 'offset') this.offset});

  factory _$_MetaBean.fromJson(Map<String, dynamic> json) =>
      _$$_MetaBeanFromJson(json);

  @override
  @JsonKey(name: 'latitude')
  final double? latitude;
  @override
  @JsonKey(name: 'longitude')
  final double? longitude;
  @override
  @JsonKey(name: 'timezone')
  final String? timezone;
  @override
  @JsonKey(name: 'method')
  final MethodBean? method;
  @override
  @JsonKey(name: 'latitudeAdjustmentMethod')
  final String? latitudeAdjustmentMethod;
  @override
  @JsonKey(name: 'midnightMode')
  final String? midnightMode;
  @override
  @JsonKey(name: 'school')
  final String? school;
  @override
  @JsonKey(name: 'offset')
  final OffsetBean? offset;

  @override
  String toString() {
    return 'MetaBean(latitude: $latitude, longitude: $longitude, timezone: $timezone, method: $method, latitudeAdjustmentMethod: $latitudeAdjustmentMethod, midnightMode: $midnightMode, school: $school, offset: $offset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MetaBean &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(
                    other.latitudeAdjustmentMethod, latitudeAdjustmentMethod) ||
                other.latitudeAdjustmentMethod == latitudeAdjustmentMethod) &&
            (identical(other.midnightMode, midnightMode) ||
                other.midnightMode == midnightMode) &&
            (identical(other.school, school) || other.school == school) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude, timezone,
      method, latitudeAdjustmentMethod, midnightMode, school, offset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MetaBeanCopyWith<_$_MetaBean> get copyWith =>
      __$$_MetaBeanCopyWithImpl<_$_MetaBean>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MetaBeanToJson(
      this,
    );
  }
}

abstract class _MetaBean implements MetaBean {
  const factory _MetaBean(
      {@JsonKey(name: 'latitude')
          final double? latitude,
      @JsonKey(name: 'longitude')
          final double? longitude,
      @JsonKey(name: 'timezone')
          final String? timezone,
      @JsonKey(name: 'method')
          final MethodBean? method,
      @JsonKey(name: 'latitudeAdjustmentMethod')
          final String? latitudeAdjustmentMethod,
      @JsonKey(name: 'midnightMode')
          final String? midnightMode,
      @JsonKey(name: 'school')
          final String? school,
      @JsonKey(name: 'offset')
          final OffsetBean? offset}) = _$_MetaBean;

  factory _MetaBean.fromJson(Map<String, dynamic> json) = _$_MetaBean.fromJson;

  @override
  @JsonKey(name: 'latitude')
  double? get latitude;
  @override
  @JsonKey(name: 'longitude')
  double? get longitude;
  @override
  @JsonKey(name: 'timezone')
  String? get timezone;
  @override
  @JsonKey(name: 'method')
  MethodBean? get method;
  @override
  @JsonKey(name: 'latitudeAdjustmentMethod')
  String? get latitudeAdjustmentMethod;
  @override
  @JsonKey(name: 'midnightMode')
  String? get midnightMode;
  @override
  @JsonKey(name: 'school')
  String? get school;
  @override
  @JsonKey(name: 'offset')
  OffsetBean? get offset;
  @override
  @JsonKey(ignore: true)
  _$$_MetaBeanCopyWith<_$_MetaBean> get copyWith =>
      throw _privateConstructorUsedError;
}

OffsetBean _$OffsetBeanFromJson(Map<String, dynamic> json) {
  return _OffsetBean.fromJson(json);
}

/// @nodoc
mixin _$OffsetBean {
  @JsonKey(name: 'Imsak')
  int? get Imsak => throw _privateConstructorUsedError;
  @JsonKey(name: 'Fajr')
  int? get Fajr => throw _privateConstructorUsedError;
  @JsonKey(name: 'Sunrise')
  int? get Sunrise => throw _privateConstructorUsedError;
  @JsonKey(name: 'Dhuhr')
  int? get Dhuhr => throw _privateConstructorUsedError;
  @JsonKey(name: 'Asr')
  int? get Asr => throw _privateConstructorUsedError;
  @JsonKey(name: 'Maghrib')
  int? get Maghrib => throw _privateConstructorUsedError;
  @JsonKey(name: 'Sunset')
  int? get Sunset => throw _privateConstructorUsedError;
  @JsonKey(name: 'Isha')
  int? get Isha => throw _privateConstructorUsedError;
  @JsonKey(name: 'Midnight')
  int? get Midnight => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OffsetBeanCopyWith<OffsetBean> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OffsetBeanCopyWith<$Res> {
  factory $OffsetBeanCopyWith(
          OffsetBean value, $Res Function(OffsetBean) then) =
      _$OffsetBeanCopyWithImpl<$Res, OffsetBean>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Imsak') int? Imsak,
      @JsonKey(name: 'Fajr') int? Fajr,
      @JsonKey(name: 'Sunrise') int? Sunrise,
      @JsonKey(name: 'Dhuhr') int? Dhuhr,
      @JsonKey(name: 'Asr') int? Asr,
      @JsonKey(name: 'Maghrib') int? Maghrib,
      @JsonKey(name: 'Sunset') int? Sunset,
      @JsonKey(name: 'Isha') int? Isha,
      @JsonKey(name: 'Midnight') int? Midnight});
}

/// @nodoc
class _$OffsetBeanCopyWithImpl<$Res, $Val extends OffsetBean>
    implements $OffsetBeanCopyWith<$Res> {
  _$OffsetBeanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Imsak = freezed,
    Object? Fajr = freezed,
    Object? Sunrise = freezed,
    Object? Dhuhr = freezed,
    Object? Asr = freezed,
    Object? Maghrib = freezed,
    Object? Sunset = freezed,
    Object? Isha = freezed,
    Object? Midnight = freezed,
  }) {
    return _then(_value.copyWith(
      Imsak: freezed == Imsak
          ? _value.Imsak
          : Imsak // ignore: cast_nullable_to_non_nullable
              as int?,
      Fajr: freezed == Fajr
          ? _value.Fajr
          : Fajr // ignore: cast_nullable_to_non_nullable
              as int?,
      Sunrise: freezed == Sunrise
          ? _value.Sunrise
          : Sunrise // ignore: cast_nullable_to_non_nullable
              as int?,
      Dhuhr: freezed == Dhuhr
          ? _value.Dhuhr
          : Dhuhr // ignore: cast_nullable_to_non_nullable
              as int?,
      Asr: freezed == Asr
          ? _value.Asr
          : Asr // ignore: cast_nullable_to_non_nullable
              as int?,
      Maghrib: freezed == Maghrib
          ? _value.Maghrib
          : Maghrib // ignore: cast_nullable_to_non_nullable
              as int?,
      Sunset: freezed == Sunset
          ? _value.Sunset
          : Sunset // ignore: cast_nullable_to_non_nullable
              as int?,
      Isha: freezed == Isha
          ? _value.Isha
          : Isha // ignore: cast_nullable_to_non_nullable
              as int?,
      Midnight: freezed == Midnight
          ? _value.Midnight
          : Midnight // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OffsetBeanCopyWith<$Res>
    implements $OffsetBeanCopyWith<$Res> {
  factory _$$_OffsetBeanCopyWith(
          _$_OffsetBean value, $Res Function(_$_OffsetBean) then) =
      __$$_OffsetBeanCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Imsak') int? Imsak,
      @JsonKey(name: 'Fajr') int? Fajr,
      @JsonKey(name: 'Sunrise') int? Sunrise,
      @JsonKey(name: 'Dhuhr') int? Dhuhr,
      @JsonKey(name: 'Asr') int? Asr,
      @JsonKey(name: 'Maghrib') int? Maghrib,
      @JsonKey(name: 'Sunset') int? Sunset,
      @JsonKey(name: 'Isha') int? Isha,
      @JsonKey(name: 'Midnight') int? Midnight});
}

/// @nodoc
class __$$_OffsetBeanCopyWithImpl<$Res>
    extends _$OffsetBeanCopyWithImpl<$Res, _$_OffsetBean>
    implements _$$_OffsetBeanCopyWith<$Res> {
  __$$_OffsetBeanCopyWithImpl(
      _$_OffsetBean _value, $Res Function(_$_OffsetBean) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Imsak = freezed,
    Object? Fajr = freezed,
    Object? Sunrise = freezed,
    Object? Dhuhr = freezed,
    Object? Asr = freezed,
    Object? Maghrib = freezed,
    Object? Sunset = freezed,
    Object? Isha = freezed,
    Object? Midnight = freezed,
  }) {
    return _then(_$_OffsetBean(
      Imsak: freezed == Imsak
          ? _value.Imsak
          : Imsak // ignore: cast_nullable_to_non_nullable
              as int?,
      Fajr: freezed == Fajr
          ? _value.Fajr
          : Fajr // ignore: cast_nullable_to_non_nullable
              as int?,
      Sunrise: freezed == Sunrise
          ? _value.Sunrise
          : Sunrise // ignore: cast_nullable_to_non_nullable
              as int?,
      Dhuhr: freezed == Dhuhr
          ? _value.Dhuhr
          : Dhuhr // ignore: cast_nullable_to_non_nullable
              as int?,
      Asr: freezed == Asr
          ? _value.Asr
          : Asr // ignore: cast_nullable_to_non_nullable
              as int?,
      Maghrib: freezed == Maghrib
          ? _value.Maghrib
          : Maghrib // ignore: cast_nullable_to_non_nullable
              as int?,
      Sunset: freezed == Sunset
          ? _value.Sunset
          : Sunset // ignore: cast_nullable_to_non_nullable
              as int?,
      Isha: freezed == Isha
          ? _value.Isha
          : Isha // ignore: cast_nullable_to_non_nullable
              as int?,
      Midnight: freezed == Midnight
          ? _value.Midnight
          : Midnight // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OffsetBean implements _OffsetBean {
  const _$_OffsetBean(
      {@JsonKey(name: 'Imsak') this.Imsak,
      @JsonKey(name: 'Fajr') this.Fajr,
      @JsonKey(name: 'Sunrise') this.Sunrise,
      @JsonKey(name: 'Dhuhr') this.Dhuhr,
      @JsonKey(name: 'Asr') this.Asr,
      @JsonKey(name: 'Maghrib') this.Maghrib,
      @JsonKey(name: 'Sunset') this.Sunset,
      @JsonKey(name: 'Isha') this.Isha,
      @JsonKey(name: 'Midnight') this.Midnight});

  factory _$_OffsetBean.fromJson(Map<String, dynamic> json) =>
      _$$_OffsetBeanFromJson(json);

  @override
  @JsonKey(name: 'Imsak')
  final int? Imsak;
  @override
  @JsonKey(name: 'Fajr')
  final int? Fajr;
  @override
  @JsonKey(name: 'Sunrise')
  final int? Sunrise;
  @override
  @JsonKey(name: 'Dhuhr')
  final int? Dhuhr;
  @override
  @JsonKey(name: 'Asr')
  final int? Asr;
  @override
  @JsonKey(name: 'Maghrib')
  final int? Maghrib;
  @override
  @JsonKey(name: 'Sunset')
  final int? Sunset;
  @override
  @JsonKey(name: 'Isha')
  final int? Isha;
  @override
  @JsonKey(name: 'Midnight')
  final int? Midnight;

  @override
  String toString() {
    return 'OffsetBean(Imsak: $Imsak, Fajr: $Fajr, Sunrise: $Sunrise, Dhuhr: $Dhuhr, Asr: $Asr, Maghrib: $Maghrib, Sunset: $Sunset, Isha: $Isha, Midnight: $Midnight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OffsetBean &&
            (identical(other.Imsak, Imsak) || other.Imsak == Imsak) &&
            (identical(other.Fajr, Fajr) || other.Fajr == Fajr) &&
            (identical(other.Sunrise, Sunrise) || other.Sunrise == Sunrise) &&
            (identical(other.Dhuhr, Dhuhr) || other.Dhuhr == Dhuhr) &&
            (identical(other.Asr, Asr) || other.Asr == Asr) &&
            (identical(other.Maghrib, Maghrib) || other.Maghrib == Maghrib) &&
            (identical(other.Sunset, Sunset) || other.Sunset == Sunset) &&
            (identical(other.Isha, Isha) || other.Isha == Isha) &&
            (identical(other.Midnight, Midnight) ||
                other.Midnight == Midnight));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, Imsak, Fajr, Sunrise, Dhuhr, Asr,
      Maghrib, Sunset, Isha, Midnight);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OffsetBeanCopyWith<_$_OffsetBean> get copyWith =>
      __$$_OffsetBeanCopyWithImpl<_$_OffsetBean>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OffsetBeanToJson(
      this,
    );
  }
}

abstract class _OffsetBean implements OffsetBean {
  const factory _OffsetBean(
      {@JsonKey(name: 'Imsak') final int? Imsak,
      @JsonKey(name: 'Fajr') final int? Fajr,
      @JsonKey(name: 'Sunrise') final int? Sunrise,
      @JsonKey(name: 'Dhuhr') final int? Dhuhr,
      @JsonKey(name: 'Asr') final int? Asr,
      @JsonKey(name: 'Maghrib') final int? Maghrib,
      @JsonKey(name: 'Sunset') final int? Sunset,
      @JsonKey(name: 'Isha') final int? Isha,
      @JsonKey(name: 'Midnight') final int? Midnight}) = _$_OffsetBean;

  factory _OffsetBean.fromJson(Map<String, dynamic> json) =
      _$_OffsetBean.fromJson;

  @override
  @JsonKey(name: 'Imsak')
  int? get Imsak;
  @override
  @JsonKey(name: 'Fajr')
  int? get Fajr;
  @override
  @JsonKey(name: 'Sunrise')
  int? get Sunrise;
  @override
  @JsonKey(name: 'Dhuhr')
  int? get Dhuhr;
  @override
  @JsonKey(name: 'Asr')
  int? get Asr;
  @override
  @JsonKey(name: 'Maghrib')
  int? get Maghrib;
  @override
  @JsonKey(name: 'Sunset')
  int? get Sunset;
  @override
  @JsonKey(name: 'Isha')
  int? get Isha;
  @override
  @JsonKey(name: 'Midnight')
  int? get Midnight;
  @override
  @JsonKey(ignore: true)
  _$$_OffsetBeanCopyWith<_$_OffsetBean> get copyWith =>
      throw _privateConstructorUsedError;
}

MethodBean _$MethodBeanFromJson(Map<String, dynamic> json) {
  return _MethodBean.fromJson(json);
}

/// @nodoc
mixin _$MethodBean {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'params')
  ParamsBean? get params => throw _privateConstructorUsedError;
  @JsonKey(name: 'location')
  LocationBean? get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MethodBeanCopyWith<MethodBean> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MethodBeanCopyWith<$Res> {
  factory $MethodBeanCopyWith(
          MethodBean value, $Res Function(MethodBean) then) =
      _$MethodBeanCopyWithImpl<$Res, MethodBean>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'params') ParamsBean? params,
      @JsonKey(name: 'location') LocationBean? location});

  $ParamsBeanCopyWith<$Res>? get params;
  $LocationBeanCopyWith<$Res>? get location;
}

/// @nodoc
class _$MethodBeanCopyWithImpl<$Res, $Val extends MethodBean>
    implements $MethodBeanCopyWith<$Res> {
  _$MethodBeanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? params = freezed,
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      params: freezed == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as ParamsBean?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationBean?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ParamsBeanCopyWith<$Res>? get params {
    if (_value.params == null) {
      return null;
    }

    return $ParamsBeanCopyWith<$Res>(_value.params!, (value) {
      return _then(_value.copyWith(params: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationBeanCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationBeanCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MethodBeanCopyWith<$Res>
    implements $MethodBeanCopyWith<$Res> {
  factory _$$_MethodBeanCopyWith(
          _$_MethodBean value, $Res Function(_$_MethodBean) then) =
      __$$_MethodBeanCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'params') ParamsBean? params,
      @JsonKey(name: 'location') LocationBean? location});

  @override
  $ParamsBeanCopyWith<$Res>? get params;
  @override
  $LocationBeanCopyWith<$Res>? get location;
}

/// @nodoc
class __$$_MethodBeanCopyWithImpl<$Res>
    extends _$MethodBeanCopyWithImpl<$Res, _$_MethodBean>
    implements _$$_MethodBeanCopyWith<$Res> {
  __$$_MethodBeanCopyWithImpl(
      _$_MethodBean _value, $Res Function(_$_MethodBean) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? params = freezed,
    Object? location = freezed,
  }) {
    return _then(_$_MethodBean(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      params: freezed == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as ParamsBean?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationBean?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MethodBean implements _MethodBean {
  const _$_MethodBean(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'params') this.params,
      @JsonKey(name: 'location') this.location});

  factory _$_MethodBean.fromJson(Map<String, dynamic> json) =>
      _$$_MethodBeanFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'params')
  final ParamsBean? params;
  @override
  @JsonKey(name: 'location')
  final LocationBean? location;

  @override
  String toString() {
    return 'MethodBean(id: $id, name: $name, params: $params, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MethodBean &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.params, params) || other.params == params) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, params, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MethodBeanCopyWith<_$_MethodBean> get copyWith =>
      __$$_MethodBeanCopyWithImpl<_$_MethodBean>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MethodBeanToJson(
      this,
    );
  }
}

abstract class _MethodBean implements MethodBean {
  const factory _MethodBean(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'params') final ParamsBean? params,
      @JsonKey(name: 'location') final LocationBean? location}) = _$_MethodBean;

  factory _MethodBean.fromJson(Map<String, dynamic> json) =
      _$_MethodBean.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'params')
  ParamsBean? get params;
  @override
  @JsonKey(name: 'location')
  LocationBean? get location;
  @override
  @JsonKey(ignore: true)
  _$$_MethodBeanCopyWith<_$_MethodBean> get copyWith =>
      throw _privateConstructorUsedError;
}

LocationBean _$LocationBeanFromJson(Map<String, dynamic> json) {
  return _LocationBean.fromJson(json);
}

/// @nodoc
mixin _$LocationBean {
  @JsonKey(name: 'latitude')
  double? get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'longitude')
  double? get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationBeanCopyWith<LocationBean> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationBeanCopyWith<$Res> {
  factory $LocationBeanCopyWith(
          LocationBean value, $Res Function(LocationBean) then) =
      _$LocationBeanCopyWithImpl<$Res, LocationBean>;
  @useResult
  $Res call(
      {@JsonKey(name: 'latitude') double? latitude,
      @JsonKey(name: 'longitude') double? longitude});
}

/// @nodoc
class _$LocationBeanCopyWithImpl<$Res, $Val extends LocationBean>
    implements $LocationBeanCopyWith<$Res> {
  _$LocationBeanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LocationBeanCopyWith<$Res>
    implements $LocationBeanCopyWith<$Res> {
  factory _$$_LocationBeanCopyWith(
          _$_LocationBean value, $Res Function(_$_LocationBean) then) =
      __$$_LocationBeanCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'latitude') double? latitude,
      @JsonKey(name: 'longitude') double? longitude});
}

/// @nodoc
class __$$_LocationBeanCopyWithImpl<$Res>
    extends _$LocationBeanCopyWithImpl<$Res, _$_LocationBean>
    implements _$$_LocationBeanCopyWith<$Res> {
  __$$_LocationBeanCopyWithImpl(
      _$_LocationBean _value, $Res Function(_$_LocationBean) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_$_LocationBean(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocationBean implements _LocationBean {
  const _$_LocationBean(
      {@JsonKey(name: 'latitude') this.latitude,
      @JsonKey(name: 'longitude') this.longitude});

  factory _$_LocationBean.fromJson(Map<String, dynamic> json) =>
      _$$_LocationBeanFromJson(json);

  @override
  @JsonKey(name: 'latitude')
  final double? latitude;
  @override
  @JsonKey(name: 'longitude')
  final double? longitude;

  @override
  String toString() {
    return 'LocationBean(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocationBean &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationBeanCopyWith<_$_LocationBean> get copyWith =>
      __$$_LocationBeanCopyWithImpl<_$_LocationBean>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationBeanToJson(
      this,
    );
  }
}

abstract class _LocationBean implements LocationBean {
  const factory _LocationBean(
      {@JsonKey(name: 'latitude') final double? latitude,
      @JsonKey(name: 'longitude') final double? longitude}) = _$_LocationBean;

  factory _LocationBean.fromJson(Map<String, dynamic> json) =
      _$_LocationBean.fromJson;

  @override
  @JsonKey(name: 'latitude')
  double? get latitude;
  @override
  @JsonKey(name: 'longitude')
  double? get longitude;
  @override
  @JsonKey(ignore: true)
  _$$_LocationBeanCopyWith<_$_LocationBean> get copyWith =>
      throw _privateConstructorUsedError;
}

ParamsBean _$ParamsBeanFromJson(Map<String, dynamic> json) {
  return _ParamsBean.fromJson(json);
}

/// @nodoc
mixin _$ParamsBean {
  @JsonKey(name: 'Fajr')
  double? get Fajr => throw _privateConstructorUsedError;
  @JsonKey(name: 'Isha')
  double? get Isha => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParamsBeanCopyWith<ParamsBean> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParamsBeanCopyWith<$Res> {
  factory $ParamsBeanCopyWith(
          ParamsBean value, $Res Function(ParamsBean) then) =
      _$ParamsBeanCopyWithImpl<$Res, ParamsBean>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Fajr') double? Fajr,
      @JsonKey(name: 'Isha') double? Isha});
}

/// @nodoc
class _$ParamsBeanCopyWithImpl<$Res, $Val extends ParamsBean>
    implements $ParamsBeanCopyWith<$Res> {
  _$ParamsBeanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Fajr = freezed,
    Object? Isha = freezed,
  }) {
    return _then(_value.copyWith(
      Fajr: freezed == Fajr
          ? _value.Fajr
          : Fajr // ignore: cast_nullable_to_non_nullable
              as double?,
      Isha: freezed == Isha
          ? _value.Isha
          : Isha // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ParamsBeanCopyWith<$Res>
    implements $ParamsBeanCopyWith<$Res> {
  factory _$$_ParamsBeanCopyWith(
          _$_ParamsBean value, $Res Function(_$_ParamsBean) then) =
      __$$_ParamsBeanCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Fajr') double? Fajr,
      @JsonKey(name: 'Isha') double? Isha});
}

/// @nodoc
class __$$_ParamsBeanCopyWithImpl<$Res>
    extends _$ParamsBeanCopyWithImpl<$Res, _$_ParamsBean>
    implements _$$_ParamsBeanCopyWith<$Res> {
  __$$_ParamsBeanCopyWithImpl(
      _$_ParamsBean _value, $Res Function(_$_ParamsBean) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Fajr = freezed,
    Object? Isha = freezed,
  }) {
    return _then(_$_ParamsBean(
      Fajr: freezed == Fajr
          ? _value.Fajr
          : Fajr // ignore: cast_nullable_to_non_nullable
              as double?,
      Isha: freezed == Isha
          ? _value.Isha
          : Isha // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ParamsBean implements _ParamsBean {
  const _$_ParamsBean(
      {@JsonKey(name: 'Fajr') this.Fajr, @JsonKey(name: 'Isha') this.Isha});

  factory _$_ParamsBean.fromJson(Map<String, dynamic> json) =>
      _$$_ParamsBeanFromJson(json);

  @override
  @JsonKey(name: 'Fajr')
  final double? Fajr;
  @override
  @JsonKey(name: 'Isha')
  final double? Isha;

  @override
  String toString() {
    return 'ParamsBean(Fajr: $Fajr, Isha: $Isha)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ParamsBean &&
            (identical(other.Fajr, Fajr) || other.Fajr == Fajr) &&
            (identical(other.Isha, Isha) || other.Isha == Isha));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, Fajr, Isha);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ParamsBeanCopyWith<_$_ParamsBean> get copyWith =>
      __$$_ParamsBeanCopyWithImpl<_$_ParamsBean>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ParamsBeanToJson(
      this,
    );
  }
}

abstract class _ParamsBean implements ParamsBean {
  const factory _ParamsBean(
      {@JsonKey(name: 'Fajr') final double? Fajr,
      @JsonKey(name: 'Isha') final double? Isha}) = _$_ParamsBean;

  factory _ParamsBean.fromJson(Map<String, dynamic> json) =
      _$_ParamsBean.fromJson;

  @override
  @JsonKey(name: 'Fajr')
  double? get Fajr;
  @override
  @JsonKey(name: 'Isha')
  double? get Isha;
  @override
  @JsonKey(ignore: true)
  _$$_ParamsBeanCopyWith<_$_ParamsBean> get copyWith =>
      throw _privateConstructorUsedError;
}

DateBean _$DateBeanFromJson(Map<String, dynamic> json) {
  return _DateBean.fromJson(json);
}

/// @nodoc
mixin _$DateBean {
  @JsonKey(name: 'readable')
  String? get readable => throw _privateConstructorUsedError;
  @JsonKey(name: 'timestamp')
  String? get timestamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'gregorian')
  GregorianBean? get gregorian => throw _privateConstructorUsedError;
  @JsonKey(name: 'hijri')
  HijriBean? get hijri => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DateBeanCopyWith<DateBean> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateBeanCopyWith<$Res> {
  factory $DateBeanCopyWith(DateBean value, $Res Function(DateBean) then) =
      _$DateBeanCopyWithImpl<$Res, DateBean>;
  @useResult
  $Res call(
      {@JsonKey(name: 'readable') String? readable,
      @JsonKey(name: 'timestamp') String? timestamp,
      @JsonKey(name: 'gregorian') GregorianBean? gregorian,
      @JsonKey(name: 'hijri') HijriBean? hijri});

  $GregorianBeanCopyWith<$Res>? get gregorian;
  $HijriBeanCopyWith<$Res>? get hijri;
}

/// @nodoc
class _$DateBeanCopyWithImpl<$Res, $Val extends DateBean>
    implements $DateBeanCopyWith<$Res> {
  _$DateBeanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? readable = freezed,
    Object? timestamp = freezed,
    Object? gregorian = freezed,
    Object? hijri = freezed,
  }) {
    return _then(_value.copyWith(
      readable: freezed == readable
          ? _value.readable
          : readable // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      gregorian: freezed == gregorian
          ? _value.gregorian
          : gregorian // ignore: cast_nullable_to_non_nullable
              as GregorianBean?,
      hijri: freezed == hijri
          ? _value.hijri
          : hijri // ignore: cast_nullable_to_non_nullable
              as HijriBean?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GregorianBeanCopyWith<$Res>? get gregorian {
    if (_value.gregorian == null) {
      return null;
    }

    return $GregorianBeanCopyWith<$Res>(_value.gregorian!, (value) {
      return _then(_value.copyWith(gregorian: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $HijriBeanCopyWith<$Res>? get hijri {
    if (_value.hijri == null) {
      return null;
    }

    return $HijriBeanCopyWith<$Res>(_value.hijri!, (value) {
      return _then(_value.copyWith(hijri: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DateBeanCopyWith<$Res> implements $DateBeanCopyWith<$Res> {
  factory _$$_DateBeanCopyWith(
          _$_DateBean value, $Res Function(_$_DateBean) then) =
      __$$_DateBeanCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'readable') String? readable,
      @JsonKey(name: 'timestamp') String? timestamp,
      @JsonKey(name: 'gregorian') GregorianBean? gregorian,
      @JsonKey(name: 'hijri') HijriBean? hijri});

  @override
  $GregorianBeanCopyWith<$Res>? get gregorian;
  @override
  $HijriBeanCopyWith<$Res>? get hijri;
}

/// @nodoc
class __$$_DateBeanCopyWithImpl<$Res>
    extends _$DateBeanCopyWithImpl<$Res, _$_DateBean>
    implements _$$_DateBeanCopyWith<$Res> {
  __$$_DateBeanCopyWithImpl(
      _$_DateBean _value, $Res Function(_$_DateBean) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? readable = freezed,
    Object? timestamp = freezed,
    Object? gregorian = freezed,
    Object? hijri = freezed,
  }) {
    return _then(_$_DateBean(
      readable: freezed == readable
          ? _value.readable
          : readable // ignore: cast_nullable_to_non_nullable
              as String?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String?,
      gregorian: freezed == gregorian
          ? _value.gregorian
          : gregorian // ignore: cast_nullable_to_non_nullable
              as GregorianBean?,
      hijri: freezed == hijri
          ? _value.hijri
          : hijri // ignore: cast_nullable_to_non_nullable
              as HijriBean?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DateBean implements _DateBean {
  const _$_DateBean(
      {@JsonKey(name: 'readable') this.readable,
      @JsonKey(name: 'timestamp') this.timestamp,
      @JsonKey(name: 'gregorian') this.gregorian,
      @JsonKey(name: 'hijri') this.hijri});

  factory _$_DateBean.fromJson(Map<String, dynamic> json) =>
      _$$_DateBeanFromJson(json);

  @override
  @JsonKey(name: 'readable')
  final String? readable;
  @override
  @JsonKey(name: 'timestamp')
  final String? timestamp;
  @override
  @JsonKey(name: 'gregorian')
  final GregorianBean? gregorian;
  @override
  @JsonKey(name: 'hijri')
  final HijriBean? hijri;

  @override
  String toString() {
    return 'DateBean(readable: $readable, timestamp: $timestamp, gregorian: $gregorian, hijri: $hijri)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DateBean &&
            (identical(other.readable, readable) ||
                other.readable == readable) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.gregorian, gregorian) ||
                other.gregorian == gregorian) &&
            (identical(other.hijri, hijri) || other.hijri == hijri));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, readable, timestamp, gregorian, hijri);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DateBeanCopyWith<_$_DateBean> get copyWith =>
      __$$_DateBeanCopyWithImpl<_$_DateBean>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DateBeanToJson(
      this,
    );
  }
}

abstract class _DateBean implements DateBean {
  const factory _DateBean(
      {@JsonKey(name: 'readable') final String? readable,
      @JsonKey(name: 'timestamp') final String? timestamp,
      @JsonKey(name: 'gregorian') final GregorianBean? gregorian,
      @JsonKey(name: 'hijri') final HijriBean? hijri}) = _$_DateBean;

  factory _DateBean.fromJson(Map<String, dynamic> json) = _$_DateBean.fromJson;

  @override
  @JsonKey(name: 'readable')
  String? get readable;
  @override
  @JsonKey(name: 'timestamp')
  String? get timestamp;
  @override
  @JsonKey(name: 'gregorian')
  GregorianBean? get gregorian;
  @override
  @JsonKey(name: 'hijri')
  HijriBean? get hijri;
  @override
  @JsonKey(ignore: true)
  _$$_DateBeanCopyWith<_$_DateBean> get copyWith =>
      throw _privateConstructorUsedError;
}

HijriBean _$HijriBeanFromJson(Map<String, dynamic> json) {
  return _HijriBean.fromJson(json);
}

/// @nodoc
mixin _$HijriBean {
  @JsonKey(name: 'date')
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'format')
  String? get format => throw _privateConstructorUsedError;
  @JsonKey(name: 'day')
  String? get day => throw _privateConstructorUsedError;
  @JsonKey(name: 'weekday')
  WeekdayBean? get weekday => throw _privateConstructorUsedError;
  @JsonKey(name: 'month')
  MonthBean? get month => throw _privateConstructorUsedError;
  @JsonKey(name: 'year')
  String? get year => throw _privateConstructorUsedError;
  @JsonKey(name: 'designation')
  DesignationBean? get designation => throw _privateConstructorUsedError;
  @JsonKey(name: 'holidays')
  List<dynamic>? get holidays => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HijriBeanCopyWith<HijriBean> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HijriBeanCopyWith<$Res> {
  factory $HijriBeanCopyWith(HijriBean value, $Res Function(HijriBean) then) =
      _$HijriBeanCopyWithImpl<$Res, HijriBean>;
  @useResult
  $Res call(
      {@JsonKey(name: 'date') String? date,
      @JsonKey(name: 'format') String? format,
      @JsonKey(name: 'day') String? day,
      @JsonKey(name: 'weekday') WeekdayBean? weekday,
      @JsonKey(name: 'month') MonthBean? month,
      @JsonKey(name: 'year') String? year,
      @JsonKey(name: 'designation') DesignationBean? designation,
      @JsonKey(name: 'holidays') List<dynamic>? holidays});

  $WeekdayBeanCopyWith<$Res>? get weekday;
  $MonthBeanCopyWith<$Res>? get month;
  $DesignationBeanCopyWith<$Res>? get designation;
}

/// @nodoc
class _$HijriBeanCopyWithImpl<$Res, $Val extends HijriBean>
    implements $HijriBeanCopyWith<$Res> {
  _$HijriBeanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? format = freezed,
    Object? day = freezed,
    Object? weekday = freezed,
    Object? month = freezed,
    Object? year = freezed,
    Object? designation = freezed,
    Object? holidays = freezed,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      weekday: freezed == weekday
          ? _value.weekday
          : weekday // ignore: cast_nullable_to_non_nullable
              as WeekdayBean?,
      month: freezed == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as MonthBean?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      designation: freezed == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as DesignationBean?,
      holidays: freezed == holidays
          ? _value.holidays
          : holidays // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WeekdayBeanCopyWith<$Res>? get weekday {
    if (_value.weekday == null) {
      return null;
    }

    return $WeekdayBeanCopyWith<$Res>(_value.weekday!, (value) {
      return _then(_value.copyWith(weekday: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MonthBeanCopyWith<$Res>? get month {
    if (_value.month == null) {
      return null;
    }

    return $MonthBeanCopyWith<$Res>(_value.month!, (value) {
      return _then(_value.copyWith(month: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DesignationBeanCopyWith<$Res>? get designation {
    if (_value.designation == null) {
      return null;
    }

    return $DesignationBeanCopyWith<$Res>(_value.designation!, (value) {
      return _then(_value.copyWith(designation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_HijriBeanCopyWith<$Res> implements $HijriBeanCopyWith<$Res> {
  factory _$$_HijriBeanCopyWith(
          _$_HijriBean value, $Res Function(_$_HijriBean) then) =
      __$$_HijriBeanCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'date') String? date,
      @JsonKey(name: 'format') String? format,
      @JsonKey(name: 'day') String? day,
      @JsonKey(name: 'weekday') WeekdayBean? weekday,
      @JsonKey(name: 'month') MonthBean? month,
      @JsonKey(name: 'year') String? year,
      @JsonKey(name: 'designation') DesignationBean? designation,
      @JsonKey(name: 'holidays') List<dynamic>? holidays});

  @override
  $WeekdayBeanCopyWith<$Res>? get weekday;
  @override
  $MonthBeanCopyWith<$Res>? get month;
  @override
  $DesignationBeanCopyWith<$Res>? get designation;
}

/// @nodoc
class __$$_HijriBeanCopyWithImpl<$Res>
    extends _$HijriBeanCopyWithImpl<$Res, _$_HijriBean>
    implements _$$_HijriBeanCopyWith<$Res> {
  __$$_HijriBeanCopyWithImpl(
      _$_HijriBean _value, $Res Function(_$_HijriBean) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? format = freezed,
    Object? day = freezed,
    Object? weekday = freezed,
    Object? month = freezed,
    Object? year = freezed,
    Object? designation = freezed,
    Object? holidays = freezed,
  }) {
    return _then(_$_HijriBean(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      weekday: freezed == weekday
          ? _value.weekday
          : weekday // ignore: cast_nullable_to_non_nullable
              as WeekdayBean?,
      month: freezed == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as MonthBean?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      designation: freezed == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as DesignationBean?,
      holidays: freezed == holidays
          ? _value._holidays
          : holidays // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HijriBean implements _HijriBean {
  const _$_HijriBean(
      {@JsonKey(name: 'date') this.date,
      @JsonKey(name: 'format') this.format,
      @JsonKey(name: 'day') this.day,
      @JsonKey(name: 'weekday') this.weekday,
      @JsonKey(name: 'month') this.month,
      @JsonKey(name: 'year') this.year,
      @JsonKey(name: 'designation') this.designation,
      @JsonKey(name: 'holidays') final List<dynamic>? holidays})
      : _holidays = holidays;

  factory _$_HijriBean.fromJson(Map<String, dynamic> json) =>
      _$$_HijriBeanFromJson(json);

  @override
  @JsonKey(name: 'date')
  final String? date;
  @override
  @JsonKey(name: 'format')
  final String? format;
  @override
  @JsonKey(name: 'day')
  final String? day;
  @override
  @JsonKey(name: 'weekday')
  final WeekdayBean? weekday;
  @override
  @JsonKey(name: 'month')
  final MonthBean? month;
  @override
  @JsonKey(name: 'year')
  final String? year;
  @override
  @JsonKey(name: 'designation')
  final DesignationBean? designation;
  final List<dynamic>? _holidays;
  @override
  @JsonKey(name: 'holidays')
  List<dynamic>? get holidays {
    final value = _holidays;
    if (value == null) return null;
    if (_holidays is EqualUnmodifiableListView) return _holidays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HijriBean(date: $date, format: $format, day: $day, weekday: $weekday, month: $month, year: $year, designation: $designation, holidays: $holidays)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HijriBean &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.weekday, weekday) || other.weekday == weekday) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.designation, designation) ||
                other.designation == designation) &&
            const DeepCollectionEquality().equals(other._holidays, _holidays));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, format, day, weekday,
      month, year, designation, const DeepCollectionEquality().hash(_holidays));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HijriBeanCopyWith<_$_HijriBean> get copyWith =>
      __$$_HijriBeanCopyWithImpl<_$_HijriBean>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HijriBeanToJson(
      this,
    );
  }
}

abstract class _HijriBean implements HijriBean {
  const factory _HijriBean(
      {@JsonKey(name: 'date') final String? date,
      @JsonKey(name: 'format') final String? format,
      @JsonKey(name: 'day') final String? day,
      @JsonKey(name: 'weekday') final WeekdayBean? weekday,
      @JsonKey(name: 'month') final MonthBean? month,
      @JsonKey(name: 'year') final String? year,
      @JsonKey(name: 'designation') final DesignationBean? designation,
      @JsonKey(name: 'holidays') final List<dynamic>? holidays}) = _$_HijriBean;

  factory _HijriBean.fromJson(Map<String, dynamic> json) =
      _$_HijriBean.fromJson;

  @override
  @JsonKey(name: 'date')
  String? get date;
  @override
  @JsonKey(name: 'format')
  String? get format;
  @override
  @JsonKey(name: 'day')
  String? get day;
  @override
  @JsonKey(name: 'weekday')
  WeekdayBean? get weekday;
  @override
  @JsonKey(name: 'month')
  MonthBean? get month;
  @override
  @JsonKey(name: 'year')
  String? get year;
  @override
  @JsonKey(name: 'designation')
  DesignationBean? get designation;
  @override
  @JsonKey(name: 'holidays')
  List<dynamic>? get holidays;
  @override
  @JsonKey(ignore: true)
  _$$_HijriBeanCopyWith<_$_HijriBean> get copyWith =>
      throw _privateConstructorUsedError;
}

DesignationBean _$DesignationBeanFromJson(Map<String, dynamic> json) {
  return _DesignationBean.fromJson(json);
}

/// @nodoc
mixin _$DesignationBean {
  @JsonKey(name: 'abbreviated')
  String? get abbreviated => throw _privateConstructorUsedError;
  @JsonKey(name: 'expanded')
  String? get expanded => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DesignationBeanCopyWith<DesignationBean> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DesignationBeanCopyWith<$Res> {
  factory $DesignationBeanCopyWith(
          DesignationBean value, $Res Function(DesignationBean) then) =
      _$DesignationBeanCopyWithImpl<$Res, DesignationBean>;
  @useResult
  $Res call(
      {@JsonKey(name: 'abbreviated') String? abbreviated,
      @JsonKey(name: 'expanded') String? expanded});
}

/// @nodoc
class _$DesignationBeanCopyWithImpl<$Res, $Val extends DesignationBean>
    implements $DesignationBeanCopyWith<$Res> {
  _$DesignationBeanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? abbreviated = freezed,
    Object? expanded = freezed,
  }) {
    return _then(_value.copyWith(
      abbreviated: freezed == abbreviated
          ? _value.abbreviated
          : abbreviated // ignore: cast_nullable_to_non_nullable
              as String?,
      expanded: freezed == expanded
          ? _value.expanded
          : expanded // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DesignationBeanCopyWith<$Res>
    implements $DesignationBeanCopyWith<$Res> {
  factory _$$_DesignationBeanCopyWith(
          _$_DesignationBean value, $Res Function(_$_DesignationBean) then) =
      __$$_DesignationBeanCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'abbreviated') String? abbreviated,
      @JsonKey(name: 'expanded') String? expanded});
}

/// @nodoc
class __$$_DesignationBeanCopyWithImpl<$Res>
    extends _$DesignationBeanCopyWithImpl<$Res, _$_DesignationBean>
    implements _$$_DesignationBeanCopyWith<$Res> {
  __$$_DesignationBeanCopyWithImpl(
      _$_DesignationBean _value, $Res Function(_$_DesignationBean) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? abbreviated = freezed,
    Object? expanded = freezed,
  }) {
    return _then(_$_DesignationBean(
      abbreviated: freezed == abbreviated
          ? _value.abbreviated
          : abbreviated // ignore: cast_nullable_to_non_nullable
              as String?,
      expanded: freezed == expanded
          ? _value.expanded
          : expanded // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DesignationBean implements _DesignationBean {
  const _$_DesignationBean(
      {@JsonKey(name: 'abbreviated') this.abbreviated,
      @JsonKey(name: 'expanded') this.expanded});

  factory _$_DesignationBean.fromJson(Map<String, dynamic> json) =>
      _$$_DesignationBeanFromJson(json);

  @override
  @JsonKey(name: 'abbreviated')
  final String? abbreviated;
  @override
  @JsonKey(name: 'expanded')
  final String? expanded;

  @override
  String toString() {
    return 'DesignationBean(abbreviated: $abbreviated, expanded: $expanded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DesignationBean &&
            (identical(other.abbreviated, abbreviated) ||
                other.abbreviated == abbreviated) &&
            (identical(other.expanded, expanded) ||
                other.expanded == expanded));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, abbreviated, expanded);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DesignationBeanCopyWith<_$_DesignationBean> get copyWith =>
      __$$_DesignationBeanCopyWithImpl<_$_DesignationBean>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DesignationBeanToJson(
      this,
    );
  }
}

abstract class _DesignationBean implements DesignationBean {
  const factory _DesignationBean(
      {@JsonKey(name: 'abbreviated') final String? abbreviated,
      @JsonKey(name: 'expanded') final String? expanded}) = _$_DesignationBean;

  factory _DesignationBean.fromJson(Map<String, dynamic> json) =
      _$_DesignationBean.fromJson;

  @override
  @JsonKey(name: 'abbreviated')
  String? get abbreviated;
  @override
  @JsonKey(name: 'expanded')
  String? get expanded;
  @override
  @JsonKey(ignore: true)
  _$$_DesignationBeanCopyWith<_$_DesignationBean> get copyWith =>
      throw _privateConstructorUsedError;
}

MonthBean _$MonthBeanFromJson(Map<String, dynamic> json) {
  return _MonthBean.fromJson(json);
}

/// @nodoc
mixin _$MonthBean {
  @JsonKey(name: 'number')
  int? get number => throw _privateConstructorUsedError;
  @JsonKey(name: 'en')
  String? get en => throw _privateConstructorUsedError;
  @JsonKey(name: 'ar')
  String? get ar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MonthBeanCopyWith<MonthBean> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonthBeanCopyWith<$Res> {
  factory $MonthBeanCopyWith(MonthBean value, $Res Function(MonthBean) then) =
      _$MonthBeanCopyWithImpl<$Res, MonthBean>;
  @useResult
  $Res call(
      {@JsonKey(name: 'number') int? number,
      @JsonKey(name: 'en') String? en,
      @JsonKey(name: 'ar') String? ar});
}

/// @nodoc
class _$MonthBeanCopyWithImpl<$Res, $Val extends MonthBean>
    implements $MonthBeanCopyWith<$Res> {
  _$MonthBeanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
    Object? en = freezed,
    Object? ar = freezed,
  }) {
    return _then(_value.copyWith(
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      en: freezed == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String?,
      ar: freezed == ar
          ? _value.ar
          : ar // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MonthBeanCopyWith<$Res> implements $MonthBeanCopyWith<$Res> {
  factory _$$_MonthBeanCopyWith(
          _$_MonthBean value, $Res Function(_$_MonthBean) then) =
      __$$_MonthBeanCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'number') int? number,
      @JsonKey(name: 'en') String? en,
      @JsonKey(name: 'ar') String? ar});
}

/// @nodoc
class __$$_MonthBeanCopyWithImpl<$Res>
    extends _$MonthBeanCopyWithImpl<$Res, _$_MonthBean>
    implements _$$_MonthBeanCopyWith<$Res> {
  __$$_MonthBeanCopyWithImpl(
      _$_MonthBean _value, $Res Function(_$_MonthBean) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
    Object? en = freezed,
    Object? ar = freezed,
  }) {
    return _then(_$_MonthBean(
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      en: freezed == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String?,
      ar: freezed == ar
          ? _value.ar
          : ar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MonthBean implements _MonthBean {
  const _$_MonthBean(
      {@JsonKey(name: 'number') this.number,
      @JsonKey(name: 'en') this.en,
      @JsonKey(name: 'ar') this.ar});

  factory _$_MonthBean.fromJson(Map<String, dynamic> json) =>
      _$$_MonthBeanFromJson(json);

  @override
  @JsonKey(name: 'number')
  final int? number;
  @override
  @JsonKey(name: 'en')
  final String? en;
  @override
  @JsonKey(name: 'ar')
  final String? ar;

  @override
  String toString() {
    return 'MonthBean(number: $number, en: $en, ar: $ar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MonthBean &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.en, en) || other.en == en) &&
            (identical(other.ar, ar) || other.ar == ar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number, en, ar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MonthBeanCopyWith<_$_MonthBean> get copyWith =>
      __$$_MonthBeanCopyWithImpl<_$_MonthBean>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MonthBeanToJson(
      this,
    );
  }
}

abstract class _MonthBean implements MonthBean {
  const factory _MonthBean(
      {@JsonKey(name: 'number') final int? number,
      @JsonKey(name: 'en') final String? en,
      @JsonKey(name: 'ar') final String? ar}) = _$_MonthBean;

  factory _MonthBean.fromJson(Map<String, dynamic> json) =
      _$_MonthBean.fromJson;

  @override
  @JsonKey(name: 'number')
  int? get number;
  @override
  @JsonKey(name: 'en')
  String? get en;
  @override
  @JsonKey(name: 'ar')
  String? get ar;
  @override
  @JsonKey(ignore: true)
  _$$_MonthBeanCopyWith<_$_MonthBean> get copyWith =>
      throw _privateConstructorUsedError;
}

WeekdayBean _$WeekdayBeanFromJson(Map<String, dynamic> json) {
  return _WeekdayBean.fromJson(json);
}

/// @nodoc
mixin _$WeekdayBean {
  @JsonKey(name: 'en')
  String? get en => throw _privateConstructorUsedError;
  @JsonKey(name: 'ar')
  String? get ar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeekdayBeanCopyWith<WeekdayBean> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeekdayBeanCopyWith<$Res> {
  factory $WeekdayBeanCopyWith(
          WeekdayBean value, $Res Function(WeekdayBean) then) =
      _$WeekdayBeanCopyWithImpl<$Res, WeekdayBean>;
  @useResult
  $Res call({@JsonKey(name: 'en') String? en, @JsonKey(name: 'ar') String? ar});
}

/// @nodoc
class _$WeekdayBeanCopyWithImpl<$Res, $Val extends WeekdayBean>
    implements $WeekdayBeanCopyWith<$Res> {
  _$WeekdayBeanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? en = freezed,
    Object? ar = freezed,
  }) {
    return _then(_value.copyWith(
      en: freezed == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String?,
      ar: freezed == ar
          ? _value.ar
          : ar // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeekdayBeanCopyWith<$Res>
    implements $WeekdayBeanCopyWith<$Res> {
  factory _$$_WeekdayBeanCopyWith(
          _$_WeekdayBean value, $Res Function(_$_WeekdayBean) then) =
      __$$_WeekdayBeanCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'en') String? en, @JsonKey(name: 'ar') String? ar});
}

/// @nodoc
class __$$_WeekdayBeanCopyWithImpl<$Res>
    extends _$WeekdayBeanCopyWithImpl<$Res, _$_WeekdayBean>
    implements _$$_WeekdayBeanCopyWith<$Res> {
  __$$_WeekdayBeanCopyWithImpl(
      _$_WeekdayBean _value, $Res Function(_$_WeekdayBean) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? en = freezed,
    Object? ar = freezed,
  }) {
    return _then(_$_WeekdayBean(
      en: freezed == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String?,
      ar: freezed == ar
          ? _value.ar
          : ar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeekdayBean implements _WeekdayBean {
  const _$_WeekdayBean(
      {@JsonKey(name: 'en') this.en, @JsonKey(name: 'ar') this.ar});

  factory _$_WeekdayBean.fromJson(Map<String, dynamic> json) =>
      _$$_WeekdayBeanFromJson(json);

  @override
  @JsonKey(name: 'en')
  final String? en;
  @override
  @JsonKey(name: 'ar')
  final String? ar;

  @override
  String toString() {
    return 'WeekdayBean(en: $en, ar: $ar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeekdayBean &&
            (identical(other.en, en) || other.en == en) &&
            (identical(other.ar, ar) || other.ar == ar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, en, ar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeekdayBeanCopyWith<_$_WeekdayBean> get copyWith =>
      __$$_WeekdayBeanCopyWithImpl<_$_WeekdayBean>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeekdayBeanToJson(
      this,
    );
  }
}

abstract class _WeekdayBean implements WeekdayBean {
  const factory _WeekdayBean(
      {@JsonKey(name: 'en') final String? en,
      @JsonKey(name: 'ar') final String? ar}) = _$_WeekdayBean;

  factory _WeekdayBean.fromJson(Map<String, dynamic> json) =
      _$_WeekdayBean.fromJson;

  @override
  @JsonKey(name: 'en')
  String? get en;
  @override
  @JsonKey(name: 'ar')
  String? get ar;
  @override
  @JsonKey(ignore: true)
  _$$_WeekdayBeanCopyWith<_$_WeekdayBean> get copyWith =>
      throw _privateConstructorUsedError;
}

GregorianBean _$GregorianBeanFromJson(Map<String, dynamic> json) {
  return _GregorianBean.fromJson(json);
}

/// @nodoc
mixin _$GregorianBean {
  @JsonKey(name: 'date')
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'format')
  String? get format => throw _privateConstructorUsedError;
  @JsonKey(name: 'day')
  String? get day => throw _privateConstructorUsedError;
  @JsonKey(name: 'weekday')
  WeekdayBean? get weekday => throw _privateConstructorUsedError;
  @JsonKey(name: 'month')
  MonthBean? get month => throw _privateConstructorUsedError;
  @JsonKey(name: 'year')
  String? get year => throw _privateConstructorUsedError;
  @JsonKey(name: 'designation')
  DesignationBean? get designation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GregorianBeanCopyWith<GregorianBean> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GregorianBeanCopyWith<$Res> {
  factory $GregorianBeanCopyWith(
          GregorianBean value, $Res Function(GregorianBean) then) =
      _$GregorianBeanCopyWithImpl<$Res, GregorianBean>;
  @useResult
  $Res call(
      {@JsonKey(name: 'date') String? date,
      @JsonKey(name: 'format') String? format,
      @JsonKey(name: 'day') String? day,
      @JsonKey(name: 'weekday') WeekdayBean? weekday,
      @JsonKey(name: 'month') MonthBean? month,
      @JsonKey(name: 'year') String? year,
      @JsonKey(name: 'designation') DesignationBean? designation});

  $WeekdayBeanCopyWith<$Res>? get weekday;
  $MonthBeanCopyWith<$Res>? get month;
  $DesignationBeanCopyWith<$Res>? get designation;
}

/// @nodoc
class _$GregorianBeanCopyWithImpl<$Res, $Val extends GregorianBean>
    implements $GregorianBeanCopyWith<$Res> {
  _$GregorianBeanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? format = freezed,
    Object? day = freezed,
    Object? weekday = freezed,
    Object? month = freezed,
    Object? year = freezed,
    Object? designation = freezed,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      weekday: freezed == weekday
          ? _value.weekday
          : weekday // ignore: cast_nullable_to_non_nullable
              as WeekdayBean?,
      month: freezed == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as MonthBean?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      designation: freezed == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as DesignationBean?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WeekdayBeanCopyWith<$Res>? get weekday {
    if (_value.weekday == null) {
      return null;
    }

    return $WeekdayBeanCopyWith<$Res>(_value.weekday!, (value) {
      return _then(_value.copyWith(weekday: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MonthBeanCopyWith<$Res>? get month {
    if (_value.month == null) {
      return null;
    }

    return $MonthBeanCopyWith<$Res>(_value.month!, (value) {
      return _then(_value.copyWith(month: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DesignationBeanCopyWith<$Res>? get designation {
    if (_value.designation == null) {
      return null;
    }

    return $DesignationBeanCopyWith<$Res>(_value.designation!, (value) {
      return _then(_value.copyWith(designation: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_GregorianBeanCopyWith<$Res>
    implements $GregorianBeanCopyWith<$Res> {
  factory _$$_GregorianBeanCopyWith(
          _$_GregorianBean value, $Res Function(_$_GregorianBean) then) =
      __$$_GregorianBeanCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'date') String? date,
      @JsonKey(name: 'format') String? format,
      @JsonKey(name: 'day') String? day,
      @JsonKey(name: 'weekday') WeekdayBean? weekday,
      @JsonKey(name: 'month') MonthBean? month,
      @JsonKey(name: 'year') String? year,
      @JsonKey(name: 'designation') DesignationBean? designation});

  @override
  $WeekdayBeanCopyWith<$Res>? get weekday;
  @override
  $MonthBeanCopyWith<$Res>? get month;
  @override
  $DesignationBeanCopyWith<$Res>? get designation;
}

/// @nodoc
class __$$_GregorianBeanCopyWithImpl<$Res>
    extends _$GregorianBeanCopyWithImpl<$Res, _$_GregorianBean>
    implements _$$_GregorianBeanCopyWith<$Res> {
  __$$_GregorianBeanCopyWithImpl(
      _$_GregorianBean _value, $Res Function(_$_GregorianBean) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? format = freezed,
    Object? day = freezed,
    Object? weekday = freezed,
    Object? month = freezed,
    Object? year = freezed,
    Object? designation = freezed,
  }) {
    return _then(_$_GregorianBean(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      format: freezed == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String?,
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      weekday: freezed == weekday
          ? _value.weekday
          : weekday // ignore: cast_nullable_to_non_nullable
              as WeekdayBean?,
      month: freezed == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as MonthBean?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as String?,
      designation: freezed == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as DesignationBean?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GregorianBean implements _GregorianBean {
  const _$_GregorianBean(
      {@JsonKey(name: 'date') this.date,
      @JsonKey(name: 'format') this.format,
      @JsonKey(name: 'day') this.day,
      @JsonKey(name: 'weekday') this.weekday,
      @JsonKey(name: 'month') this.month,
      @JsonKey(name: 'year') this.year,
      @JsonKey(name: 'designation') this.designation});

  factory _$_GregorianBean.fromJson(Map<String, dynamic> json) =>
      _$$_GregorianBeanFromJson(json);

  @override
  @JsonKey(name: 'date')
  final String? date;
  @override
  @JsonKey(name: 'format')
  final String? format;
  @override
  @JsonKey(name: 'day')
  final String? day;
  @override
  @JsonKey(name: 'weekday')
  final WeekdayBean? weekday;
  @override
  @JsonKey(name: 'month')
  final MonthBean? month;
  @override
  @JsonKey(name: 'year')
  final String? year;
  @override
  @JsonKey(name: 'designation')
  final DesignationBean? designation;

  @override
  String toString() {
    return 'GregorianBean(date: $date, format: $format, day: $day, weekday: $weekday, month: $month, year: $year, designation: $designation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GregorianBean &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.weekday, weekday) || other.weekday == weekday) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.designation, designation) ||
                other.designation == designation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, date, format, day, weekday, month, year, designation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GregorianBeanCopyWith<_$_GregorianBean> get copyWith =>
      __$$_GregorianBeanCopyWithImpl<_$_GregorianBean>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GregorianBeanToJson(
      this,
    );
  }
}

abstract class _GregorianBean implements GregorianBean {
  const factory _GregorianBean(
          {@JsonKey(name: 'date') final String? date,
          @JsonKey(name: 'format') final String? format,
          @JsonKey(name: 'day') final String? day,
          @JsonKey(name: 'weekday') final WeekdayBean? weekday,
          @JsonKey(name: 'month') final MonthBean? month,
          @JsonKey(name: 'year') final String? year,
          @JsonKey(name: 'designation') final DesignationBean? designation}) =
      _$_GregorianBean;

  factory _GregorianBean.fromJson(Map<String, dynamic> json) =
      _$_GregorianBean.fromJson;

  @override
  @JsonKey(name: 'date')
  String? get date;
  @override
  @JsonKey(name: 'format')
  String? get format;
  @override
  @JsonKey(name: 'day')
  String? get day;
  @override
  @JsonKey(name: 'weekday')
  WeekdayBean? get weekday;
  @override
  @JsonKey(name: 'month')
  MonthBean? get month;
  @override
  @JsonKey(name: 'year')
  String? get year;
  @override
  @JsonKey(name: 'designation')
  DesignationBean? get designation;
  @override
  @JsonKey(ignore: true)
  _$$_GregorianBeanCopyWith<_$_GregorianBean> get copyWith =>
      throw _privateConstructorUsedError;
}

TimingsBean _$TimingsBeanFromJson(Map<String, dynamic> json) {
  return _TimingsBean.fromJson(json);
}

/// @nodoc
mixin _$TimingsBean {
  @JsonKey(name: 'Fajr')
  String? get Fajr => throw _privateConstructorUsedError;
  @JsonKey(name: 'Sunrise')
  String? get Sunrise => throw _privateConstructorUsedError;
  @JsonKey(name: 'Dhuhr')
  String? get Dhuhr => throw _privateConstructorUsedError;
  @JsonKey(name: 'Asr')
  String? get Asr => throw _privateConstructorUsedError;
  @JsonKey(name: 'Sunset')
  String? get Sunset => throw _privateConstructorUsedError;
  @JsonKey(name: 'Maghrib')
  String? get Maghrib => throw _privateConstructorUsedError;
  @JsonKey(name: 'Isha')
  String? get Isha => throw _privateConstructorUsedError;
  @JsonKey(name: 'Imsak')
  String? get Imsak => throw _privateConstructorUsedError;
  @JsonKey(name: 'Midnight')
  String? get Midnight => throw _privateConstructorUsedError;
  @JsonKey(name: 'Firstthird')
  String? get Firstthird => throw _privateConstructorUsedError;
  @JsonKey(name: 'Lastthird')
  String? get Lastthird => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TimingsBeanCopyWith<TimingsBean> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimingsBeanCopyWith<$Res> {
  factory $TimingsBeanCopyWith(
          TimingsBean value, $Res Function(TimingsBean) then) =
      _$TimingsBeanCopyWithImpl<$Res, TimingsBean>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Fajr') String? Fajr,
      @JsonKey(name: 'Sunrise') String? Sunrise,
      @JsonKey(name: 'Dhuhr') String? Dhuhr,
      @JsonKey(name: 'Asr') String? Asr,
      @JsonKey(name: 'Sunset') String? Sunset,
      @JsonKey(name: 'Maghrib') String? Maghrib,
      @JsonKey(name: 'Isha') String? Isha,
      @JsonKey(name: 'Imsak') String? Imsak,
      @JsonKey(name: 'Midnight') String? Midnight,
      @JsonKey(name: 'Firstthird') String? Firstthird,
      @JsonKey(name: 'Lastthird') String? Lastthird});
}

/// @nodoc
class _$TimingsBeanCopyWithImpl<$Res, $Val extends TimingsBean>
    implements $TimingsBeanCopyWith<$Res> {
  _$TimingsBeanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Fajr = freezed,
    Object? Sunrise = freezed,
    Object? Dhuhr = freezed,
    Object? Asr = freezed,
    Object? Sunset = freezed,
    Object? Maghrib = freezed,
    Object? Isha = freezed,
    Object? Imsak = freezed,
    Object? Midnight = freezed,
    Object? Firstthird = freezed,
    Object? Lastthird = freezed,
  }) {
    return _then(_value.copyWith(
      Fajr: freezed == Fajr
          ? _value.Fajr
          : Fajr // ignore: cast_nullable_to_non_nullable
              as String?,
      Sunrise: freezed == Sunrise
          ? _value.Sunrise
          : Sunrise // ignore: cast_nullable_to_non_nullable
              as String?,
      Dhuhr: freezed == Dhuhr
          ? _value.Dhuhr
          : Dhuhr // ignore: cast_nullable_to_non_nullable
              as String?,
      Asr: freezed == Asr
          ? _value.Asr
          : Asr // ignore: cast_nullable_to_non_nullable
              as String?,
      Sunset: freezed == Sunset
          ? _value.Sunset
          : Sunset // ignore: cast_nullable_to_non_nullable
              as String?,
      Maghrib: freezed == Maghrib
          ? _value.Maghrib
          : Maghrib // ignore: cast_nullable_to_non_nullable
              as String?,
      Isha: freezed == Isha
          ? _value.Isha
          : Isha // ignore: cast_nullable_to_non_nullable
              as String?,
      Imsak: freezed == Imsak
          ? _value.Imsak
          : Imsak // ignore: cast_nullable_to_non_nullable
              as String?,
      Midnight: freezed == Midnight
          ? _value.Midnight
          : Midnight // ignore: cast_nullable_to_non_nullable
              as String?,
      Firstthird: freezed == Firstthird
          ? _value.Firstthird
          : Firstthird // ignore: cast_nullable_to_non_nullable
              as String?,
      Lastthird: freezed == Lastthird
          ? _value.Lastthird
          : Lastthird // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TimingsBeanCopyWith<$Res>
    implements $TimingsBeanCopyWith<$Res> {
  factory _$$_TimingsBeanCopyWith(
          _$_TimingsBean value, $Res Function(_$_TimingsBean) then) =
      __$$_TimingsBeanCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Fajr') String? Fajr,
      @JsonKey(name: 'Sunrise') String? Sunrise,
      @JsonKey(name: 'Dhuhr') String? Dhuhr,
      @JsonKey(name: 'Asr') String? Asr,
      @JsonKey(name: 'Sunset') String? Sunset,
      @JsonKey(name: 'Maghrib') String? Maghrib,
      @JsonKey(name: 'Isha') String? Isha,
      @JsonKey(name: 'Imsak') String? Imsak,
      @JsonKey(name: 'Midnight') String? Midnight,
      @JsonKey(name: 'Firstthird') String? Firstthird,
      @JsonKey(name: 'Lastthird') String? Lastthird});
}

/// @nodoc
class __$$_TimingsBeanCopyWithImpl<$Res>
    extends _$TimingsBeanCopyWithImpl<$Res, _$_TimingsBean>
    implements _$$_TimingsBeanCopyWith<$Res> {
  __$$_TimingsBeanCopyWithImpl(
      _$_TimingsBean _value, $Res Function(_$_TimingsBean) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Fajr = freezed,
    Object? Sunrise = freezed,
    Object? Dhuhr = freezed,
    Object? Asr = freezed,
    Object? Sunset = freezed,
    Object? Maghrib = freezed,
    Object? Isha = freezed,
    Object? Imsak = freezed,
    Object? Midnight = freezed,
    Object? Firstthird = freezed,
    Object? Lastthird = freezed,
  }) {
    return _then(_$_TimingsBean(
      Fajr: freezed == Fajr
          ? _value.Fajr
          : Fajr // ignore: cast_nullable_to_non_nullable
              as String?,
      Sunrise: freezed == Sunrise
          ? _value.Sunrise
          : Sunrise // ignore: cast_nullable_to_non_nullable
              as String?,
      Dhuhr: freezed == Dhuhr
          ? _value.Dhuhr
          : Dhuhr // ignore: cast_nullable_to_non_nullable
              as String?,
      Asr: freezed == Asr
          ? _value.Asr
          : Asr // ignore: cast_nullable_to_non_nullable
              as String?,
      Sunset: freezed == Sunset
          ? _value.Sunset
          : Sunset // ignore: cast_nullable_to_non_nullable
              as String?,
      Maghrib: freezed == Maghrib
          ? _value.Maghrib
          : Maghrib // ignore: cast_nullable_to_non_nullable
              as String?,
      Isha: freezed == Isha
          ? _value.Isha
          : Isha // ignore: cast_nullable_to_non_nullable
              as String?,
      Imsak: freezed == Imsak
          ? _value.Imsak
          : Imsak // ignore: cast_nullable_to_non_nullable
              as String?,
      Midnight: freezed == Midnight
          ? _value.Midnight
          : Midnight // ignore: cast_nullable_to_non_nullable
              as String?,
      Firstthird: freezed == Firstthird
          ? _value.Firstthird
          : Firstthird // ignore: cast_nullable_to_non_nullable
              as String?,
      Lastthird: freezed == Lastthird
          ? _value.Lastthird
          : Lastthird // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TimingsBean implements _TimingsBean {
  const _$_TimingsBean(
      {@JsonKey(name: 'Fajr') this.Fajr,
      @JsonKey(name: 'Sunrise') this.Sunrise,
      @JsonKey(name: 'Dhuhr') this.Dhuhr,
      @JsonKey(name: 'Asr') this.Asr,
      @JsonKey(name: 'Sunset') this.Sunset,
      @JsonKey(name: 'Maghrib') this.Maghrib,
      @JsonKey(name: 'Isha') this.Isha,
      @JsonKey(name: 'Imsak') this.Imsak,
      @JsonKey(name: 'Midnight') this.Midnight,
      @JsonKey(name: 'Firstthird') this.Firstthird,
      @JsonKey(name: 'Lastthird') this.Lastthird});

  factory _$_TimingsBean.fromJson(Map<String, dynamic> json) =>
      _$$_TimingsBeanFromJson(json);

  @override
  @JsonKey(name: 'Fajr')
  final String? Fajr;
  @override
  @JsonKey(name: 'Sunrise')
  final String? Sunrise;
  @override
  @JsonKey(name: 'Dhuhr')
  final String? Dhuhr;
  @override
  @JsonKey(name: 'Asr')
  final String? Asr;
  @override
  @JsonKey(name: 'Sunset')
  final String? Sunset;
  @override
  @JsonKey(name: 'Maghrib')
  final String? Maghrib;
  @override
  @JsonKey(name: 'Isha')
  final String? Isha;
  @override
  @JsonKey(name: 'Imsak')
  final String? Imsak;
  @override
  @JsonKey(name: 'Midnight')
  final String? Midnight;
  @override
  @JsonKey(name: 'Firstthird')
  final String? Firstthird;
  @override
  @JsonKey(name: 'Lastthird')
  final String? Lastthird;

  @override
  String toString() {
    return 'TimingsBean(Fajr: $Fajr, Sunrise: $Sunrise, Dhuhr: $Dhuhr, Asr: $Asr, Sunset: $Sunset, Maghrib: $Maghrib, Isha: $Isha, Imsak: $Imsak, Midnight: $Midnight, Firstthird: $Firstthird, Lastthird: $Lastthird)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TimingsBean &&
            (identical(other.Fajr, Fajr) || other.Fajr == Fajr) &&
            (identical(other.Sunrise, Sunrise) || other.Sunrise == Sunrise) &&
            (identical(other.Dhuhr, Dhuhr) || other.Dhuhr == Dhuhr) &&
            (identical(other.Asr, Asr) || other.Asr == Asr) &&
            (identical(other.Sunset, Sunset) || other.Sunset == Sunset) &&
            (identical(other.Maghrib, Maghrib) || other.Maghrib == Maghrib) &&
            (identical(other.Isha, Isha) || other.Isha == Isha) &&
            (identical(other.Imsak, Imsak) || other.Imsak == Imsak) &&
            (identical(other.Midnight, Midnight) ||
                other.Midnight == Midnight) &&
            (identical(other.Firstthird, Firstthird) ||
                other.Firstthird == Firstthird) &&
            (identical(other.Lastthird, Lastthird) ||
                other.Lastthird == Lastthird));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, Fajr, Sunrise, Dhuhr, Asr,
      Sunset, Maghrib, Isha, Imsak, Midnight, Firstthird, Lastthird);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TimingsBeanCopyWith<_$_TimingsBean> get copyWith =>
      __$$_TimingsBeanCopyWithImpl<_$_TimingsBean>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TimingsBeanToJson(
      this,
    );
  }
}

abstract class _TimingsBean implements TimingsBean {
  const factory _TimingsBean(
      {@JsonKey(name: 'Fajr') final String? Fajr,
      @JsonKey(name: 'Sunrise') final String? Sunrise,
      @JsonKey(name: 'Dhuhr') final String? Dhuhr,
      @JsonKey(name: 'Asr') final String? Asr,
      @JsonKey(name: 'Sunset') final String? Sunset,
      @JsonKey(name: 'Maghrib') final String? Maghrib,
      @JsonKey(name: 'Isha') final String? Isha,
      @JsonKey(name: 'Imsak') final String? Imsak,
      @JsonKey(name: 'Midnight') final String? Midnight,
      @JsonKey(name: 'Firstthird') final String? Firstthird,
      @JsonKey(name: 'Lastthird') final String? Lastthird}) = _$_TimingsBean;

  factory _TimingsBean.fromJson(Map<String, dynamic> json) =
      _$_TimingsBean.fromJson;

  @override
  @JsonKey(name: 'Fajr')
  String? get Fajr;
  @override
  @JsonKey(name: 'Sunrise')
  String? get Sunrise;
  @override
  @JsonKey(name: 'Dhuhr')
  String? get Dhuhr;
  @override
  @JsonKey(name: 'Asr')
  String? get Asr;
  @override
  @JsonKey(name: 'Sunset')
  String? get Sunset;
  @override
  @JsonKey(name: 'Maghrib')
  String? get Maghrib;
  @override
  @JsonKey(name: 'Isha')
  String? get Isha;
  @override
  @JsonKey(name: 'Imsak')
  String? get Imsak;
  @override
  @JsonKey(name: 'Midnight')
  String? get Midnight;
  @override
  @JsonKey(name: 'Firstthird')
  String? get Firstthird;
  @override
  @JsonKey(name: 'Lastthird')
  String? get Lastthird;
  @override
  @JsonKey(ignore: true)
  _$$_TimingsBeanCopyWith<_$_TimingsBean> get copyWith =>
      throw _privateConstructorUsedError;
}
