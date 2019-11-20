// To parse this JSON data, do
//
//     final darkSkyModel = darkSkyModelFromJson(jsonString);

import 'dart:convert';


class Currently {
  int time;
  String summary;
  String icon;
  int nearestStormDistance;
  int nearestStormBearing;
  double precipIntensity;
  double precipIntensityError;
  double precipProbability;
  String precipType;
  double temperature;
  double apparentTemperature;
  double dewPoint;
  double humidity;
  double pressure;
  double windSpeed;
  double windGust;
  int windBearing;
  double cloudCover;
  int uvIndex;
  double visibility;
  double ozone;

  Currently({
    this.time,
    this.summary,
    this.icon,
    this.nearestStormDistance,
    this.nearestStormBearing,
    this.precipIntensity,
    this.precipIntensityError,
    this.precipProbability,
    this.precipType,
    this.temperature,
    this.apparentTemperature,
    this.dewPoint,
    this.humidity,
    this.pressure,
    this.windSpeed,
    this.windGust,
    this.windBearing,
    this.cloudCover,
    this.uvIndex,
    this.visibility,
    this.ozone,
  });

  factory Currently.fromJson(Map<String, dynamic> json) => Currently(
    time: json["time"] == null ? null : json["time"],
    summary: json["summary"] == null ? null : json["summary"],
    icon: json["icon"],
    nearestStormDistance: json["nearestStormDistance"] == null ? null : json["nearestStormDistance"],
    nearestStormBearing: json["nearestStormBearing"] == null ? null : json["nearestStormBearing"],
    precipIntensity: json["precipIntensity"].toDouble(),
    precipIntensityError: json["precipIntensityError"] == null ? null : json["precipIntensityError"].toDouble(),
    precipProbability: json["precipProbability"].toDouble(),
    precipType: json["precipType"] == null ? null : json["precipType"],
    temperature: json["temperature"].toDouble(),
    apparentTemperature: json["apparentTemperature"].toDouble(),
    dewPoint: json["dewPoint"].toDouble(),
    humidity: json["humidity"].toDouble(),
    pressure: json["pressure"].toDouble(),
    windSpeed: json["windSpeed"].toDouble(),
    windGust: json["windGust"].toDouble(),
    windBearing: json["windBearing"],
    cloudCover: json["cloudCover"].toDouble(),
    uvIndex: json["uvIndex"],
    visibility: json["visibility"].toDouble(),
    ozone: json["ozone"].toDouble(),
  );


}

class Daily {
  String summary;
  String icon;
  List<DailyDatum> data;

  Daily({
    this.summary,
    this.icon,
    this.data,
  });

  factory Daily.fromJson(Map<String, dynamic> json) => Daily(
    summary: json["summary"]== null ? null : json["summary"],
    icon: json["icon"]== null ? null : json["summary"],
    data: List<DailyDatum>.from(json["data"].map((x) => DailyDatum.fromJson(x))),
  );


}

class DailyDatum {
  int time;
  String summary;
  String icon;
  int sunriseTime;
  int sunsetTime;
  double moonPhase;
  double precipIntensity;
  double precipIntensityMax;
  int precipIntensityMaxTime;
  double precipProbability;
  String precipType;
  double temperatureHigh;
  int temperatureHighTime;
  double temperatureLow;
  int temperatureLowTime;
  double apparentTemperatureHigh;
  int apparentTemperatureHighTime;
  double apparentTemperatureLow;
  int apparentTemperatureLowTime;
  double dewPoint;
  double humidity;
  double pressure;
  double windSpeed;
  double windGust;
  int windGustTime;
  int windBearing;
  double cloudCover;
  int uvIndex;
  int uvIndexTime;
  double visibility;
  double ozone;
  double temperatureMin;
  int temperatureMinTime;
  double temperatureMax;
  int temperatureMaxTime;
  double apparentTemperatureMin;
  int apparentTemperatureMinTime;
  double apparentTemperatureMax;
  int apparentTemperatureMaxTime;

  DailyDatum({
    this.time,
    this.summary,
    this.icon,
    this.sunriseTime,
    this.sunsetTime,
    this.moonPhase,
    this.precipIntensity,
    this.precipIntensityMax,
    this.precipIntensityMaxTime,
    this.precipProbability,
    this.precipType,
    this.temperatureHigh,
    this.temperatureHighTime,
    this.temperatureLow,
    this.temperatureLowTime,
    this.apparentTemperatureHigh,
    this.apparentTemperatureHighTime,
    this.apparentTemperatureLow,
    this.apparentTemperatureLowTime,
    this.dewPoint,
    this.humidity,
    this.pressure,
    this.windSpeed,
    this.windGust,
    this.windGustTime,
    this.windBearing,
    this.cloudCover,
    this.uvIndex,
    this.uvIndexTime,
    this.visibility,
    this.ozone,
    this.temperatureMin,
    this.temperatureMinTime,
    this.temperatureMax,
    this.temperatureMaxTime,
    this.apparentTemperatureMin,
    this.apparentTemperatureMinTime,
    this.apparentTemperatureMax,
    this.apparentTemperatureMaxTime,
  });

  factory DailyDatum.fromJson(Map<String, dynamic> json) => DailyDatum(
    time: json["time"] as int,
    summary: json["summary"],
    icon: json["icon"],
    sunriseTime: json["sunriseTime"],
    sunsetTime: json["sunsetTime"],
    moonPhase: json["moonPhase"].toDouble(),
    precipIntensity: json["precipIntensity"].toDouble(),
    precipIntensityMax: json["precipIntensityMax"].toDouble(),
    precipIntensityMaxTime: json["precipIntensityMaxTime"],
    precipProbability: json["precipProbability"].toDouble(),
    precipType: json["precipType"],
    temperatureHigh: json["temperatureHigh"].toDouble(),
    temperatureHighTime: json["temperatureHighTime"],
    temperatureLow: json["temperatureLow"].toDouble(),
    temperatureLowTime: json["temperatureLowTime"],
    apparentTemperatureHigh: json["apparentTemperatureHigh"].toDouble(),
    apparentTemperatureHighTime: json["apparentTemperatureHighTime"],
    apparentTemperatureLow: json["apparentTemperatureLow"].toDouble(),
    apparentTemperatureLowTime: json["apparentTemperatureLowTime"],
    dewPoint: json["dewPoint"].toDouble(),
    humidity: json["humidity"].toDouble(),
    pressure: json["pressure"].toDouble(),
    windSpeed: json["windSpeed"].toDouble(),
    windGust: json["windGust"].toDouble(),
    windGustTime: json["windGustTime"],
    windBearing: json["windBearing"],
    cloudCover: json["cloudCover"].toDouble(),
    uvIndex: json["uvIndex"],
    uvIndexTime: json["uvIndexTime"],
    visibility: json["visibility"].toDouble(),
    ozone: json["ozone"].toDouble(),
    temperatureMin: json["temperatureMin"].toDouble(),
    temperatureMinTime: json["temperatureMinTime"],
    temperatureMax: json["temperatureMax"].toDouble(),
    temperatureMaxTime: json["temperatureMaxTime"],
    apparentTemperatureMin: json["apparentTemperatureMin"].toDouble(),
    apparentTemperatureMinTime: json["apparentTemperatureMinTime"],
    apparentTemperatureMax: json["apparentTemperatureMax"].toDouble(),
    apparentTemperatureMaxTime: json["apparentTemperatureMaxTime"],
  );


}

class Flags {
  List<String> sources;
  double nearestStation;
  String units;

  Flags({
    this.sources,
    this.nearestStation,
    this.units,
  });

  factory Flags.fromJson(Map<String, dynamic> json) => Flags(
    sources: List<String>.from(json["sources"].map((x) => x)),
    nearestStation: json["nearest-station"].toDouble(),
    units: json["units"],
  );

  Map<String, dynamic> toJson() => {
    "sources": List<dynamic>.from(sources.map((x) => x)),
    "nearest-station": nearestStation,
    "units": units,
  };
}

class Hourly {
  String summary;
  String icon;
  List<Currently> data;

  Hourly({
    this.summary,
    this.icon,
    this.data,
  });

  factory Hourly.fromJson(Map<String, dynamic> json) => Hourly(
    summary: json["summary"],
    icon: json["icon"],
    data: List<Currently>.from(json["data"].map((x) => Currently.fromJson(x))),
  );


}


class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
