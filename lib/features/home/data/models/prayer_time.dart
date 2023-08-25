import 'package:freezed_annotation/freezed_annotation.dart';

part 'prayer_time.freezed.dart';
part 'prayer_time.g.dart';

@freezed
class PrayerTime with _$PrayerTime {
  const factory PrayerTime({
    @JsonKey(name: 'code') int? code,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'data') List<DataBean>? data,
  }) = _PrayerTime;

  factory PrayerTime.fromJson(Map<String, Object?> json) => _$PrayerTimeFromJson(json);
}

@freezed
class DataBean with _$DataBean {
  const factory DataBean({
    @JsonKey(name: 'timings') TimingsBean? timings,
    @JsonKey(name: 'date') DateBean? date,
    @JsonKey(name: 'meta') MetaBean? meta,
  }) = _DataBean;

  factory DataBean.fromJson(Map<String, Object?> json) => _$DataBeanFromJson(json);
}

@freezed
class MetaBean with _$MetaBean {
  const factory MetaBean({
    @JsonKey(name: 'latitude') double? latitude,
    @JsonKey(name: 'longitude') double? longitude,
    @JsonKey(name: 'timezone') String? timezone,
    @JsonKey(name: 'method') MethodBean? method,
    @JsonKey(name: 'latitudeAdjustmentMethod') String? latitudeAdjustmentMethod,
    @JsonKey(name: 'midnightMode') String? midnightMode,
    @JsonKey(name: 'school') String? school,
    @JsonKey(name: 'offset') OffsetBean? offset,
  }) = _MetaBean;

  factory MetaBean.fromJson(Map<String, Object?> json) => _$MetaBeanFromJson(json);
}

@freezed
class OffsetBean with _$OffsetBean {
  const factory OffsetBean({
    @JsonKey(name: 'Imsak') int? Imsak,
    @JsonKey(name: 'Fajr') int? Fajr,
    @JsonKey(name: 'Sunrise') int? Sunrise,
    @JsonKey(name: 'Dhuhr') int? Dhuhr,
    @JsonKey(name: 'Asr') int? Asr,
    @JsonKey(name: 'Maghrib') int? Maghrib,
    @JsonKey(name: 'Sunset') int? Sunset,
    @JsonKey(name: 'Isha') int? Isha,
    @JsonKey(name: 'Midnight') int? Midnight,
  }) = _OffsetBean;

  factory OffsetBean.fromJson(Map<String, Object?> json) => _$OffsetBeanFromJson(json);
}

@freezed
class MethodBean with _$MethodBean {
  const factory MethodBean({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'params') ParamsBean? params,
    @JsonKey(name: 'location') LocationBean? location,
  }) = _MethodBean;

  factory MethodBean.fromJson(Map<String, Object?> json) => _$MethodBeanFromJson(json);
}

@freezed
class LocationBean with _$LocationBean {
  const factory LocationBean({
    @JsonKey(name: 'latitude') double? latitude,
    @JsonKey(name: 'longitude') double? longitude,
  }) = _LocationBean;

  factory LocationBean.fromJson(Map<String, Object?> json) => _$LocationBeanFromJson(json);
}

@freezed
class ParamsBean with _$ParamsBean {
  const factory ParamsBean({
    @JsonKey(name: 'Fajr') double? Fajr,
    @JsonKey(name: 'Isha') double? Isha,
  }) = _ParamsBean;

  factory ParamsBean.fromJson(Map<String, Object?> json) => _$ParamsBeanFromJson(json);
}

@freezed
class DateBean with _$DateBean {
  const factory DateBean({
    @JsonKey(name: 'readable') String? readable,
    @JsonKey(name: 'timestamp') String? timestamp,
    @JsonKey(name: 'gregorian') GregorianBean? gregorian,
    @JsonKey(name: 'hijri') HijriBean? hijri,
  }) = _DateBean;

  factory DateBean.fromJson(Map<String, Object?> json) => _$DateBeanFromJson(json);
}

@freezed
class HijriBean with _$HijriBean {
  const factory HijriBean({
    @JsonKey(name: 'date') String? date,
    @JsonKey(name: 'format') String? format,
    @JsonKey(name: 'day') String? day,
    @JsonKey(name: 'weekday') WeekdayBean? weekday,
    @JsonKey(name: 'month') MonthBean? month,
    @JsonKey(name: 'year') String? year,
    @JsonKey(name: 'designation') DesignationBean? designation,
    @JsonKey(name: 'holidays') List<dynamic>? holidays,
  }) = _HijriBean;

  factory HijriBean.fromJson(Map<String, Object?> json) => _$HijriBeanFromJson(json);
}

@freezed
class DesignationBean with _$DesignationBean {
  const factory DesignationBean({
    @JsonKey(name: 'abbreviated') String? abbreviated,
    @JsonKey(name: 'expanded') String? expanded,
  }) = _DesignationBean;

  factory DesignationBean.fromJson(Map<String, Object?> json) => _$DesignationBeanFromJson(json);
}

@freezed
class MonthBean with _$MonthBean {
  const factory MonthBean({
    @JsonKey(name: 'number') int? number,
    @JsonKey(name: 'en') String? en,
    @JsonKey(name: 'ar') String? ar,
  }) = _MonthBean;

  factory MonthBean.fromJson(Map<String, Object?> json) => _$MonthBeanFromJson(json);
}

@freezed
class WeekdayBean with _$WeekdayBean {
  const factory WeekdayBean({
    @JsonKey(name: 'en') String? en,
    @JsonKey(name: 'ar') String? ar,
  }) = _WeekdayBean;

  factory WeekdayBean.fromJson(Map<String, Object?> json) => _$WeekdayBeanFromJson(json);
}

@freezed
class GregorianBean with _$GregorianBean {
  const factory GregorianBean({
    @JsonKey(name: 'date') String? date,
    @JsonKey(name: 'format') String? format,
    @JsonKey(name: 'day') String? day,
    @JsonKey(name: 'weekday') WeekdayBean? weekday,
    @JsonKey(name: 'month') MonthBean? month,
    @JsonKey(name: 'year') String? year,
    @JsonKey(name: 'designation') DesignationBean? designation,
  }) = _GregorianBean;

  factory GregorianBean.fromJson(Map<String, Object?> json) => _$GregorianBeanFromJson(json);
}



@freezed
class TimingsBean with _$TimingsBean {
  const factory TimingsBean({
    @JsonKey(name: 'Fajr') String? Fajr,
    @JsonKey(name: 'Sunrise') String? Sunrise,
    @JsonKey(name: 'Dhuhr') String? Dhuhr,
    @JsonKey(name: 'Asr') String? Asr,
    @JsonKey(name: 'Sunset') String? Sunset,
    @JsonKey(name: 'Maghrib') String? Maghrib,
    @JsonKey(name: 'Isha') String? Isha,
    @JsonKey(name: 'Imsak') String? Imsak,
    @JsonKey(name: 'Midnight') String? Midnight,
    @JsonKey(name: 'Firstthird') String? Firstthird,
    @JsonKey(name: 'Lastthird') String? Lastthird,
  }) = _TimingsBean;

  factory TimingsBean.fromJson(Map<String, Object?> json) => _$TimingsBeanFromJson(json);
}

