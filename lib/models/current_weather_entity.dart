import 'package:clima/generated/json/base/json_convert_content.dart';
import 'package:clima/generated/json/base/json_filed.dart';

class CurrentWeatherEntity with JsonConvert<CurrentWeatherEntity> {
  CurrentWeatherCoord coord;
  List<CurrentWeatherWeather> weather;
  String base;
  CurrentWeatherMain main;
  int visibility;
  CurrentWeatherWind wind;
  CurrentWeatherClouds clouds;
  int dt;
  CurrentWeatherSys sys;
  int id;
  String name;
  int cod;
}

class CurrentWeatherCoord with JsonConvert<CurrentWeatherCoord> {
  double lon;
  double lat;
}

class CurrentWeatherWeather with JsonConvert<CurrentWeatherWeather> {
  int id;
  String main;
  String description;
  String icon;
}

class CurrentWeatherMain with JsonConvert<CurrentWeatherMain> {
  double temp;
  int pressure;
  int humidity;
  @JSONField(name: "temp_min")
  double tempMin;
  @JSONField(name: "temp_max")
  double tempMax;
}

class CurrentWeatherWind with JsonConvert<CurrentWeatherWind> {
  double speed;
  int deg;
}

class CurrentWeatherClouds with JsonConvert<CurrentWeatherClouds> {
  int all;
}

class CurrentWeatherSys with JsonConvert<CurrentWeatherSys> {
  int type;
  int id;
  double message;
  String country;
  int sunrise;
  int sunset;
}
