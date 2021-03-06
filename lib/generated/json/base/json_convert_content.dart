// ignore_for_file: non_constant_identifier_names
// ignore_for_file: camel_case_types
// ignore_for_file: prefer_single_quotes

// This file is automatically generated. DO NOT EDIT, all your changes would be lost.
import 'package:clima/generated/json/current_weather_entity_helper.dart';
import 'package:clima/models/current_weather_entity.dart';

class JsonConvert<T> {
  T fromJson(Map<String, dynamic> json) {
    return _getFromJson<T>(runtimeType, this, json);
  }

  Map<String, dynamic> toJson() {
    return _getToJson<T>(runtimeType, this);
  }

  static _getFromJson<T>(Type type, data, json) {
    switch (type) {
      case CurrentWeatherEntity:
        return currentWeatherEntityFromJson(data as CurrentWeatherEntity, json)
            as T;
      case CurrentWeatherCoord:
        return currentWeatherCoordFromJson(data as CurrentWeatherCoord, json)
            as T;
      case CurrentWeatherWeather:
        return currentWeatherWeatherFromJson(
            data as CurrentWeatherWeather, json) as T;
      case CurrentWeatherMain:
        return currentWeatherMainFromJson(data as CurrentWeatherMain, json)
            as T;
      case CurrentWeatherWind:
        return currentWeatherWindFromJson(data as CurrentWeatherWind, json)
            as T;
      case CurrentWeatherClouds:
        return currentWeatherCloudsFromJson(data as CurrentWeatherClouds, json)
            as T;
      case CurrentWeatherSys:
        return currentWeatherSysFromJson(data as CurrentWeatherSys, json) as T;
    }
    return data as T;
  }

  static _getToJson<T>(Type type, data) {
    switch (type) {
      case CurrentWeatherEntity:
        return currentWeatherEntityToJson(data as CurrentWeatherEntity);
      case CurrentWeatherCoord:
        return currentWeatherCoordToJson(data as CurrentWeatherCoord);
      case CurrentWeatherWeather:
        return currentWeatherWeatherToJson(data as CurrentWeatherWeather);
      case CurrentWeatherMain:
        return currentWeatherMainToJson(data as CurrentWeatherMain);
      case CurrentWeatherWind:
        return currentWeatherWindToJson(data as CurrentWeatherWind);
      case CurrentWeatherClouds:
        return currentWeatherCloudsToJson(data as CurrentWeatherClouds);
      case CurrentWeatherSys:
        return currentWeatherSysToJson(data as CurrentWeatherSys);
    }
    return data as T;
  }

  //Go back to a single instance by type
  static _fromJsonSingle(String type, json) {
    switch (type) {
      case 'CurrentWeatherEntity':
        return CurrentWeatherEntity().fromJson(json);
      case 'CurrentWeatherCoord':
        return CurrentWeatherCoord().fromJson(json);
      case 'CurrentWeatherWeather':
        return CurrentWeatherWeather().fromJson(json);
      case 'CurrentWeatherMain':
        return CurrentWeatherMain().fromJson(json);
      case 'CurrentWeatherWind':
        return CurrentWeatherWind().fromJson(json);
      case 'CurrentWeatherClouds':
        return CurrentWeatherClouds().fromJson(json);
      case 'CurrentWeatherSys':
        return CurrentWeatherSys().fromJson(json);
    }
    return null;
  }

  //empty list is returned by type
  static _getListFromType(String type) {
    switch (type) {
      case 'CurrentWeatherEntity':
        return List<CurrentWeatherEntity>();
      case 'CurrentWeatherCoord':
        return List<CurrentWeatherCoord>();
      case 'CurrentWeatherWeather':
        return List<CurrentWeatherWeather>();
      case 'CurrentWeatherMain':
        return List<CurrentWeatherMain>();
      case 'CurrentWeatherWind':
        return List<CurrentWeatherWind>();
      case 'CurrentWeatherClouds':
        return List<CurrentWeatherClouds>();
      case 'CurrentWeatherSys':
        return List<CurrentWeatherSys>();
    }
    return null;
  }

  static M fromJsonAsT<M>(json) {
    String type = M.toString();
    if (json is List && type.contains("List<")) {
      String itemType = type.substring(5, type.length - 1);
      List tempList = _getListFromType(itemType);
      json.forEach((itemJson) {
        tempList
            .add(_fromJsonSingle(type.substring(5, type.length - 1), itemJson));
      });
      return tempList as M;
    } else {
      return _fromJsonSingle(M.toString(), json) as M;
    }
  }
}
