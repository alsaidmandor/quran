// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prayer_time.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PrayerTime _$$_PrayerTimeFromJson(Map<String, dynamic> json) =>
    _$_PrayerTime(
      code: json['code'] as int?,
      status: json['status'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DataBean.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PrayerTimeToJson(_$_PrayerTime instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'data': instance.data,
    };

_$_DataBean _$$_DataBeanFromJson(Map<String, dynamic> json) => _$_DataBean(
      timings: json['timings'] == null
          ? null
          : TimingsBean.fromJson(json['timings'] as Map<String, dynamic>),
      date: json['date'] == null
          ? null
          : DateBean.fromJson(json['date'] as Map<String, dynamic>),
      meta: json['meta'] == null
          ? null
          : MetaBean.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DataBeanToJson(_$_DataBean instance) =>
    <String, dynamic>{
      'timings': instance.timings,
      'date': instance.date,
      'meta': instance.meta,
    };

_$_MetaBean _$$_MetaBeanFromJson(Map<String, dynamic> json) => _$_MetaBean(
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      timezone: json['timezone'] as String?,
      method: json['method'] == null
          ? null
          : MethodBean.fromJson(json['method'] as Map<String, dynamic>),
      latitudeAdjustmentMethod: json['latitudeAdjustmentMethod'] as String?,
      midnightMode: json['midnightMode'] as String?,
      school: json['school'] as String?,
      offset: json['offset'] == null
          ? null
          : OffsetBean.fromJson(json['offset'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MetaBeanToJson(_$_MetaBean instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'timezone': instance.timezone,
      'method': instance.method,
      'latitudeAdjustmentMethod': instance.latitudeAdjustmentMethod,
      'midnightMode': instance.midnightMode,
      'school': instance.school,
      'offset': instance.offset,
    };

_$_OffsetBean _$$_OffsetBeanFromJson(Map<String, dynamic> json) =>
    _$_OffsetBean(
      Imsak: json['Imsak'] as int?,
      Fajr: json['Fajr'] as int?,
      Sunrise: json['Sunrise'] as int?,
      Dhuhr: json['Dhuhr'] as int?,
      Asr: json['Asr'] as int?,
      Maghrib: json['Maghrib'] as int?,
      Sunset: json['Sunset'] as int?,
      Isha: json['Isha'] as int?,
      Midnight: json['Midnight'] as int?,
    );

Map<String, dynamic> _$$_OffsetBeanToJson(_$_OffsetBean instance) =>
    <String, dynamic>{
      'Imsak': instance.Imsak,
      'Fajr': instance.Fajr,
      'Sunrise': instance.Sunrise,
      'Dhuhr': instance.Dhuhr,
      'Asr': instance.Asr,
      'Maghrib': instance.Maghrib,
      'Sunset': instance.Sunset,
      'Isha': instance.Isha,
      'Midnight': instance.Midnight,
    };

_$_MethodBean _$$_MethodBeanFromJson(Map<String, dynamic> json) =>
    _$_MethodBean(
      id: json['id'] as int?,
      name: json['name'] as String?,
      params: json['params'] == null
          ? null
          : ParamsBean.fromJson(json['params'] as Map<String, dynamic>),
      location: json['location'] == null
          ? null
          : LocationBean.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MethodBeanToJson(_$_MethodBean instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'params': instance.params,
      'location': instance.location,
    };

_$_LocationBean _$$_LocationBeanFromJson(Map<String, dynamic> json) =>
    _$_LocationBean(
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_LocationBeanToJson(_$_LocationBean instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

_$_ParamsBean _$$_ParamsBeanFromJson(Map<String, dynamic> json) =>
    _$_ParamsBean(
      Fajr: (json['Fajr'] as num?)?.toDouble(),
      Isha: (json['Isha'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_ParamsBeanToJson(_$_ParamsBean instance) =>
    <String, dynamic>{
      'Fajr': instance.Fajr,
      'Isha': instance.Isha,
    };

_$_DateBean _$$_DateBeanFromJson(Map<String, dynamic> json) => _$_DateBean(
      readable: json['readable'] as String?,
      timestamp: json['timestamp'] as String?,
      gregorian: json['gregorian'] == null
          ? null
          : GregorianBean.fromJson(json['gregorian'] as Map<String, dynamic>),
      hijri: json['hijri'] == null
          ? null
          : HijriBean.fromJson(json['hijri'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DateBeanToJson(_$_DateBean instance) =>
    <String, dynamic>{
      'readable': instance.readable,
      'timestamp': instance.timestamp,
      'gregorian': instance.gregorian,
      'hijri': instance.hijri,
    };

_$_HijriBean _$$_HijriBeanFromJson(Map<String, dynamic> json) => _$_HijriBean(
      date: json['date'] as String?,
      format: json['format'] as String?,
      day: json['day'] as String?,
      weekday: json['weekday'] == null
          ? null
          : WeekdayBean.fromJson(json['weekday'] as Map<String, dynamic>),
      month: json['month'] == null
          ? null
          : MonthBean.fromJson(json['month'] as Map<String, dynamic>),
      year: json['year'] as String?,
      designation: json['designation'] == null
          ? null
          : DesignationBean.fromJson(
              json['designation'] as Map<String, dynamic>),
      holidays: json['holidays'] as List<dynamic>?,
    );

Map<String, dynamic> _$$_HijriBeanToJson(_$_HijriBean instance) =>
    <String, dynamic>{
      'date': instance.date,
      'format': instance.format,
      'day': instance.day,
      'weekday': instance.weekday,
      'month': instance.month,
      'year': instance.year,
      'designation': instance.designation,
      'holidays': instance.holidays,
    };

_$_DesignationBean _$$_DesignationBeanFromJson(Map<String, dynamic> json) =>
    _$_DesignationBean(
      abbreviated: json['abbreviated'] as String?,
      expanded: json['expanded'] as String?,
    );

Map<String, dynamic> _$$_DesignationBeanToJson(_$_DesignationBean instance) =>
    <String, dynamic>{
      'abbreviated': instance.abbreviated,
      'expanded': instance.expanded,
    };

_$_MonthBean _$$_MonthBeanFromJson(Map<String, dynamic> json) => _$_MonthBean(
      number: json['number'] as int?,
      en: json['en'] as String?,
      ar: json['ar'] as String?,
    );

Map<String, dynamic> _$$_MonthBeanToJson(_$_MonthBean instance) =>
    <String, dynamic>{
      'number': instance.number,
      'en': instance.en,
      'ar': instance.ar,
    };

_$_WeekdayBean _$$_WeekdayBeanFromJson(Map<String, dynamic> json) =>
    _$_WeekdayBean(
      en: json['en'] as String?,
      ar: json['ar'] as String?,
    );

Map<String, dynamic> _$$_WeekdayBeanToJson(_$_WeekdayBean instance) =>
    <String, dynamic>{
      'en': instance.en,
      'ar': instance.ar,
    };

_$_GregorianBean _$$_GregorianBeanFromJson(Map<String, dynamic> json) =>
    _$_GregorianBean(
      date: json['date'] as String?,
      format: json['format'] as String?,
      day: json['day'] as String?,
      weekday: json['weekday'] == null
          ? null
          : WeekdayBean.fromJson(json['weekday'] as Map<String, dynamic>),
      month: json['month'] == null
          ? null
          : MonthBean.fromJson(json['month'] as Map<String, dynamic>),
      year: json['year'] as String?,
      designation: json['designation'] == null
          ? null
          : DesignationBean.fromJson(
              json['designation'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_GregorianBeanToJson(_$_GregorianBean instance) =>
    <String, dynamic>{
      'date': instance.date,
      'format': instance.format,
      'day': instance.day,
      'weekday': instance.weekday,
      'month': instance.month,
      'year': instance.year,
      'designation': instance.designation,
    };

_$_TimingsBean _$$_TimingsBeanFromJson(Map<String, dynamic> json) =>
    _$_TimingsBean(
      Fajr: json['Fajr'] as String?,
      Sunrise: json['Sunrise'] as String?,
      Dhuhr: json['Dhuhr'] as String?,
      Asr: json['Asr'] as String?,
      Sunset: json['Sunset'] as String?,
      Maghrib: json['Maghrib'] as String?,
      Isha: json['Isha'] as String?,
      Imsak: json['Imsak'] as String?,
      Midnight: json['Midnight'] as String?,
      Firstthird: json['Firstthird'] as String?,
      Lastthird: json['Lastthird'] as String?,
    );

Map<String, dynamic> _$$_TimingsBeanToJson(_$_TimingsBean instance) =>
    <String, dynamic>{
      'Fajr': instance.Fajr,
      'Sunrise': instance.Sunrise,
      'Dhuhr': instance.Dhuhr,
      'Asr': instance.Asr,
      'Sunset': instance.Sunset,
      'Maghrib': instance.Maghrib,
      'Isha': instance.Isha,
      'Imsak': instance.Imsak,
      'Midnight': instance.Midnight,
      'Firstthird': instance.Firstthird,
      'Lastthird': instance.Lastthird,
    };
