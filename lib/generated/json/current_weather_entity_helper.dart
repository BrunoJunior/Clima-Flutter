import 'package:clima/models/current_weather_entity.dart';

currentWeatherEntityFromJson(
    CurrentWeatherEntity data, Map<String, dynamic> json) {
  if (json['coord'] != null) {
    data.coord = new CurrentWeatherCoord().fromJson(json['coord']);
  }
  if (json['weather'] != null) {
    data.weather = new List<CurrentWeatherWeather>();
    (json['weather'] as List).forEach((v) {
      data.weather.add(new CurrentWeatherWeather().fromJson(v));
    });
  }
  if (json['base'] != null) {
    data.base = json['base']?.toString();
  }
  if (json['main'] != null) {
    data.main = new CurrentWeatherMain().fromJson(json['main']);
  }
  if (json['visibility'] != null) {
    data.visibility = json['visibility']?.toInt();
  }
  if (json['wind'] != null) {
    data.wind = new CurrentWeatherWind().fromJson(json['wind']);
  }
  if (json['clouds'] != null) {
    data.clouds = new CurrentWeatherClouds().fromJson(json['clouds']);
  }
  if (json['dt'] != null) {
    data.dt = json['dt']?.toInt();
  }
  if (json['sys'] != null) {
    data.sys = new CurrentWeatherSys().fromJson(json['sys']);
  }
  if (json['id'] != null) {
    data.id = json['id']?.toInt();
  }
  if (json['name'] != null) {
    data.name = json['name']?.toString();
  }
  if (json['cod'] != null) {
    data.cod = json['cod']?.toInt();
  }
  return data;
}

Map<String, dynamic> currentWeatherEntityToJson(CurrentWeatherEntity entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  if (entity.coord != null) {
    data['coord'] = entity.coord.toJson();
  }
  if (entity.weather != null) {
    data['weather'] = entity.weather.map((v) => v.toJson()).toList();
  }
  data['base'] = entity.base;
  if (entity.main != null) {
    data['main'] = entity.main.toJson();
  }
  data['visibility'] = entity.visibility;
  if (entity.wind != null) {
    data['wind'] = entity.wind.toJson();
  }
  if (entity.clouds != null) {
    data['clouds'] = entity.clouds.toJson();
  }
  data['dt'] = entity.dt;
  if (entity.sys != null) {
    data['sys'] = entity.sys.toJson();
  }
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['cod'] = entity.cod;
  return data;
}

currentWeatherCoordFromJson(
    CurrentWeatherCoord data, Map<String, dynamic> json) {
  if (json['lon'] != null) {
    data.lon = json['lon']?.toDouble();
  }
  if (json['lat'] != null) {
    data.lat = json['lat']?.toDouble();
  }
  return data;
}

Map<String, dynamic> currentWeatherCoordToJson(CurrentWeatherCoord entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['lon'] = entity.lon;
  data['lat'] = entity.lat;
  return data;
}

currentWeatherWeatherFromJson(
    CurrentWeatherWeather data, Map<String, dynamic> json) {
  if (json['id'] != null) {
    data.id = json['id']?.toInt();
  }
  if (json['main'] != null) {
    data.main = json['main']?.toString();
  }
  if (json['description'] != null) {
    data.description = json['description']?.toString();
  }
  if (json['icon'] != null) {
    data.icon = json['icon']?.toString();
  }
  return data;
}

Map<String, dynamic> currentWeatherWeatherToJson(CurrentWeatherWeather entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['id'] = entity.id;
  data['main'] = entity.main;
  data['description'] = entity.description;
  data['icon'] = entity.icon;
  return data;
}

currentWeatherMainFromJson(CurrentWeatherMain data, Map<String, dynamic> json) {
  if (json['temp'] != null) {
    data.temp = json['temp']?.toDouble();
  }
  if (json['pressure'] != null) {
    data.pressure = json['pressure']?.toInt();
  }
  if (json['humidity'] != null) {
    data.humidity = json['humidity']?.toInt();
  }
  if (json['temp_min'] != null) {
    data.tempMin = json['temp_min']?.toDouble();
  }
  if (json['temp_max'] != null) {
    data.tempMax = json['temp_max']?.toDouble();
  }
  return data;
}

Map<String, dynamic> currentWeatherMainToJson(CurrentWeatherMain entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['temp'] = entity.temp;
  data['pressure'] = entity.pressure;
  data['humidity'] = entity.humidity;
  data['temp_min'] = entity.tempMin;
  data['temp_max'] = entity.tempMax;
  return data;
}

currentWeatherWindFromJson(CurrentWeatherWind data, Map<String, dynamic> json) {
  if (json['speed'] != null) {
    data.speed = json['speed']?.toDouble();
  }
  if (json['deg'] != null) {
    data.deg = json['deg']?.toInt();
  }
  return data;
}

Map<String, dynamic> currentWeatherWindToJson(CurrentWeatherWind entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['speed'] = entity.speed;
  data['deg'] = entity.deg;
  return data;
}

currentWeatherCloudsFromJson(
    CurrentWeatherClouds data, Map<String, dynamic> json) {
  if (json['all'] != null) {
    data.all = json['all']?.toInt();
  }
  return data;
}

Map<String, dynamic> currentWeatherCloudsToJson(CurrentWeatherClouds entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['all'] = entity.all;
  return data;
}

currentWeatherSysFromJson(CurrentWeatherSys data, Map<String, dynamic> json) {
  if (json['type'] != null) {
    data.type = json['type']?.toInt();
  }
  if (json['id'] != null) {
    data.id = json['id']?.toInt();
  }
  if (json['message'] != null) {
    data.message = json['message']?.toDouble();
  }
  if (json['country'] != null) {
    data.country = json['country']?.toString();
  }
  if (json['sunrise'] != null) {
    data.sunrise = json['sunrise']?.toInt();
  }
  if (json['sunset'] != null) {
    data.sunset = json['sunset']?.toInt();
  }
  return data;
}

Map<String, dynamic> currentWeatherSysToJson(CurrentWeatherSys entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['type'] = entity.type;
  data['id'] = entity.id;
  data['message'] = entity.message;
  data['country'] = entity.country;
  data['sunrise'] = entity.sunrise;
  data['sunset'] = entity.sunset;
  return data;
}
