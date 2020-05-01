import 'package:geolocator/geolocator.dart';

class Location {
  Future<Position> getCurrentLocation() {
    return (Geolocator()..forceAndroidLocationManager = true)
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
  }
}
