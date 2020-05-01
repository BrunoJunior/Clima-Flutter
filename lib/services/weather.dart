import 'package:clima/models/current_weather_entity.dart';
import 'package:clima/services/networking.dart';
import 'package:clima/utilities/constants.dart';
import 'package:geolocator/geolocator.dart';

const kApiKey = '8ecdc6de3a745d9c242c475353a460c8';

class WeatherModel {
  Future<CurrentWeatherEntity> getCurrentWeather(Position position) {
    NetworkHelper network = NetworkHelper(
        'https://api.openweathermap.org/data/2.5/weather?lat=${position.latitude}&lon=${position.longitude}&appid=$kApiKey&units=metric');
    return network.getData(CurrentWeatherEntity());
  }

  double convertTempToCelcius(double kelvinTemp) {
    return kelvinTemp + kKelvin;
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
