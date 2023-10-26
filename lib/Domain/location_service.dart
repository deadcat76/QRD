
import 'package:geolocator/geolocator.dart';
import 'package:qrd/Domain/app_lat_long.dart';
import 'package:qrd/Domain/app_location.dart';
import 'package:qrd/Screens/map_screen.dart';

class LocationService implements AppLocation {
  final deflocation = const DefaultLocation();

  @override
  Future<bool> checkPermission() {
    return Geolocator.requestPermission().then((value) =>
    value == LocationPermission.always ||
        value == LocationPermission.whileInUse)
        .catchError((_) => false);
  }

  @override
  Future<AppLatLong> getCurrentLocation() async {
    return Geolocator.getCurrentPosition().then((value) {
      return AppLatLong(lat: value.latitude, long: value.longitude);
    }).catchError(
        (_) => deflocation,
    );
  }

  @override
  Future<bool> requestPermission() {
    return Geolocator.requestPermission().then((value) =>
      value == LocationPermission.always ||
      value == LocationPermission.whileInUse)
        .catchError((_) => false);
  }
}