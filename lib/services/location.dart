import 'package:geolocator/geolocator.dart';

class Location {
  Future<Position> getCurrentLocation() async {
    Geolocator geo = Geolocator();
    if (!await geo.isLocationServiceEnabled()) {
      throw Exception('The geolocation service is disabled !');
    }
    geo.forceAndroidLocationManager = true;
    return geo.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
  }
}
