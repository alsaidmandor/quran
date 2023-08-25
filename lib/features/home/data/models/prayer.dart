import 'package:json_annotation/json_annotation.dart';

part 'prayer.g.dart';

@JsonSerializable()
class Prayer {
  final int? code;
  final String? status;
  final List<Data>? data;

  const Prayer({
    this.code,
    this.status,
    this.data,
  });

  factory Prayer.fromJson(Map<String, dynamic> json) =>
      _$PrayerFromJson(json);

  Map<String, dynamic> toJson() => _$PrayerToJson(this);

  Prayer copyWith({
    int? code,
    String? status,
    List<Data>? data,
  }) {
    return Prayer(
      code: code ?? this.code,
      status: status ?? this.status,
      data: data ?? this.data,
    );
  }
}

@JsonSerializable()
class Data {
  final Timings? timings;
  final Date? date;
  final Meta? meta;

  const Data({
    this.timings,
    this.date,
    this.meta,
  });

  factory Data.fromJson(Map<String, dynamic> json) =>
      _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);

  Data copyWith({
    Timings? timings,
    Date? date,
    Meta? meta,
  }) {
    return Data(
      timings: timings ?? this.timings,
      date: date ?? this.date,
      meta: meta ?? this.meta,
    );
  }
}

@JsonSerializable()
class Timings {
  final String? Fajr;
  final String? Sunrise;
  final String? Dhuhr;
  final String? Asr;
  final String? Maghrib;
  final String? Isha;


  const Timings({
    this.Fajr,
    this.Sunrise,
    this.Dhuhr,
    this.Asr,
    this.Maghrib,
    this.Isha,

  });

  factory Timings.fromJson(Map<String, dynamic> json) =>
      _$TimingsFromJson(json);

  Map<String, dynamic> toJson() => _$TimingsToJson(this);

  Timings copyWith({
    String? Fajr,
    String? Sunrise,
    String? Dhuhr,
    String? Asr,
    String? Maghrib,
    String? Isha,

  }) {
    return Timings(
      Fajr: Fajr ?? this.Fajr,
      Sunrise: Sunrise ?? this.Sunrise,
      Dhuhr: Dhuhr ?? this.Dhuhr,
      Asr: Asr ?? this.Asr,
      Maghrib: Maghrib ?? this.Maghrib,
      Isha: Isha ?? this.Isha,
    );
  }
}

@JsonSerializable()
class Date {
  final String? readable;
  final String? timestamp;
  final Gregorian? gregorian;
  final Hijri? hijri;

  const Date({
    this.readable,
    this.timestamp,
    this.gregorian,
    this.hijri,
  });

  factory Date.fromJson(Map<String, dynamic> json) =>
      _$DateFromJson(json);

  Map<String, dynamic> toJson() => _$DateToJson(this);

  Date copyWith({
    String? readable,
    String? timestamp,
    Gregorian? gregorian,
    Hijri? hijri,
  }) {
    return Date(
      readable: readable ?? this.readable,
      timestamp: timestamp ?? this.timestamp,
      gregorian: gregorian ?? this.gregorian,
      hijri: hijri ?? this.hijri,
    );
  }
}

@JsonSerializable()
class Gregorian {
  final String? date;
  final String? format;
  final String? day;
  final Weekday? weekday;
  final Month? month;
  final String? year;
  final Designation? designation;

  const Gregorian({
    this.date,
    this.format,
    this.day,
    this.weekday,
    this.month,
    this.year,
    this.designation,
  });

  factory Gregorian.fromJson(Map<String, dynamic> json) =>
      _$GregorianFromJson(json);

  Map<String, dynamic> toJson() => _$GregorianToJson(this);

  Gregorian copyWith({
    String? date,
    String? format,
    String? day,
    Weekday? weekday,
    Month? month,
    String? year,
    Designation? designation,
  }) {
    return Gregorian(
      date: date ?? this.date,
      format: format ?? this.format,
      day: day ?? this.day,
      weekday: weekday ?? this.weekday,
      month: month ?? this.month,
      year: year ?? this.year,
      designation: designation ?? this.designation,
    );
  }
}

@JsonSerializable()
class Weekday {
  final String? en;
  final String? ar;

  const Weekday({
    this.en,
    this.ar,
  });

  factory Weekday.fromJson(Map<String, dynamic> json) =>
      _$WeekdayFromJson(json);

  Map<String, dynamic> toJson() => _$WeekdayToJson(this);

  Weekday copyWith({
    String? en,
    String? ar,
  }) {
    return Weekday(
      en: en ?? this.en,
      ar: ar ?? this.ar,
    );
  }
}

@JsonSerializable()
class Month {
  final int? number;
  final String? en;
  final String? ar;

  const Month({
    this.number,
    this.en,
    this.ar,
  });

  factory Month.fromJson(Map<String, dynamic> json) =>
      _$MonthFromJson(json);

  Map<String, dynamic> toJson() => _$MonthToJson(this);

  Month copyWith({
    int? number,
    String? en,
    String? ar,
  }) {
    return Month(
      number: number ?? this.number,
      en: en ?? this.en,
      ar: ar ?? this.ar,
    );
  }
}

@JsonSerializable()
class Designation {
  final String? abbreviated;
  final String? expanded;

  const Designation({
    this.abbreviated,
    this.expanded,
  });

  factory Designation.fromJson(Map<String, dynamic> json) =>
      _$DesignationFromJson(json);

  Map<String, dynamic> toJson() => _$DesignationToJson(this);

  Designation copyWith({
    String? abbreviated,
    String? expanded,
  }) {
    return Designation(
      abbreviated: abbreviated ?? this.abbreviated,
      expanded: expanded ?? this.expanded,
    );
  }
}

@JsonSerializable()
class Hijri {
  final String? date;
  final String? format;
  final String? day;
  final Weekday? weekday;
  final Month? month;
  final String? year;
  final Designation? designation;
  final List<dynamic>? holidays;

  const Hijri({
    this.date,
    this.format,
    this.day,
    this.weekday,
    this.month,
    this.year,
    this.designation,
    this.holidays,
  });

  factory Hijri.fromJson(Map<String, dynamic> json) =>
      _$HijriFromJson(json);

  Map<String, dynamic> toJson() => _$HijriToJson(this);

  Hijri copyWith({
    String? date,
    String? format,
    String? day,
    Weekday? weekday,
    Month? month,
    String? year,
    Designation? designation,
    List<dynamic>? holidays,
  }) {
    return Hijri(
      date: date ?? this.date,
      format: format ?? this.format,
      day: day ?? this.day,
      weekday: weekday ?? this.weekday,
      month: month ?? this.month,
      year: year ?? this.year,
      designation: designation ?? this.designation,
      holidays: holidays ?? this.holidays,
    );
  }
}

@JsonSerializable()
class Meta {
  final double? latitude;
  final double? longitude;
  final String? timezone;
  final Method? method;
  final String? latitudeAdjustmentMethod;
  final String? midnightMode;
  final String? school;
  final Offset? offset;

  const Meta({
    this.latitude,
    this.longitude,
    this.timezone,
    this.method,
    this.latitudeAdjustmentMethod,
    this.midnightMode,
    this.school,
    this.offset,
  });

  factory Meta.fromJson(Map<String, dynamic> json) =>
      _$MetaFromJson(json);

  Map<String, dynamic> toJson() => _$MetaToJson(this);

  Meta copyWith({
    double? latitude,
    double? longitude,
    String? timezone,
    Method? method,
    String? latitudeAdjustmentMethod,
    String? midnightMode,
    String? school,
    Offset? offset,
  }) {
    return Meta(
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      timezone: timezone ?? this.timezone,
      method: method ?? this.method,
      latitudeAdjustmentMethod: latitudeAdjustmentMethod ?? this.latitudeAdjustmentMethod,
      midnightMode: midnightMode ?? this.midnightMode,
      school: school ?? this.school,
      offset: offset ?? this.offset,
    );
  }
}

@JsonSerializable()
class Method {
  final int? id;
  final String? name;
  final Params? params;
  final Location? location;

  const Method({
    this.id,
    this.name,
    this.params,
    this.location,
  });

  factory Method.fromJson(Map<String, dynamic> json) =>
      _$MethodFromJson(json);

  Map<String, dynamic> toJson() => _$MethodToJson(this);

  Method copyWith({
    int? id,
    String? name,
    Params? params,
    Location? location,
  }) {
    return Method(
      id: id ?? this.id,
      name: name ?? this.name,
      params: params ?? this.params,
      location: location ?? this.location,
    );
  }
}

@JsonSerializable()
class Params {
  final double? Fajr;
  final double? Isha;

  const Params({
    this.Fajr,
    this.Isha,
  });

  factory Params.fromJson(Map<String, dynamic> json) =>
      _$ParamsFromJson(json);

  Map<String, dynamic> toJson() => _$ParamsToJson(this);

  Params copyWith({
    double? Fajr,
    double? Isha,
  }) {
    return Params(
      Fajr: Fajr ?? this.Fajr,
      Isha: Isha ?? this.Isha,
    );
  }
}

@JsonSerializable()
class Location {
  final double? latitude;
  final double? longitude;

  const Location({
    this.latitude,
    this.longitude,
  });

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  Map<String, dynamic> toJson() => _$LocationToJson(this);

  Location copyWith({
    double? latitude,
    double? longitude,
  }) {
    return Location(
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
    );
  }
}

@JsonSerializable()
class Offset {
  final int? Imsak;
  final int? Fajr;
  final int? Sunrise;
  final int? Dhuhr;
  final int? Asr;
  final int? Maghrib;
  final int? Sunset;
  final int? Isha;
  final int? Midnight;

  const Offset({
    this.Imsak,
    this.Fajr,
    this.Sunrise,
    this.Dhuhr,
    this.Asr,
    this.Maghrib,
    this.Sunset,
    this.Isha,
    this.Midnight,
  });

  factory Offset.fromJson(Map<String, dynamic> json) =>
      _$OffsetFromJson(json);

  Map<String, dynamic> toJson() => _$OffsetToJson(this);

  Offset copyWith({
    int? Imsak,
    int? Fajr,
    int? Sunrise,
    int? Dhuhr,
    int? Asr,
    int? Maghrib,
    int? Sunset,
    int? Isha,
    int? Midnight,
  }) {
    return Offset(
      Imsak: Imsak ?? this.Imsak,
      Fajr: Fajr ?? this.Fajr,
      Sunrise: Sunrise ?? this.Sunrise,
      Dhuhr: Dhuhr ?? this.Dhuhr,
      Asr: Asr ?? this.Asr,
      Maghrib: Maghrib ?? this.Maghrib,
      Sunset: Sunset ?? this.Sunset,
      Isha: Isha ?? this.Isha,
      Midnight: Midnight ?? this.Midnight,
    );
  }
}
