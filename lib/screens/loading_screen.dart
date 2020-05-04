import 'package:clima/models/current_weather_entity.dart';
import 'package:clima/screens/error_screen.dart';
import 'package:clima/screens/location_screen.dart';
import 'package:clima/services/weather.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    StatefulWidget screen;
    try {
      CurrentWeatherEntity cur =
          await WeatherModel().getCurrentWeatherForCurrentPosition();
      screen = LocationScreen(currentWeather: cur);
    } catch (ex) {
      screen = ErrorScreen(ex);
    }
    Navigator.push(context, MaterialPageRoute(builder: (context) => screen))
        .then((val) => getLocationData());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitWave(
          size: 100.0,
          color: Colors.white,
        ),
      ),
    );
  }
}
