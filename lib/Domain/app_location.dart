import 'package:qrd/Domain/app_lat_long.dart';

class DefaultLocation extends AppLatLong {
  const DefaultLocation({
    super.lat = 56.0183900,
    super.long = 92.8671700,
  });
}
abstract class AppLocation{
  Future<AppLatLong> getCurrentLocation();

  Future<bool> requestPermission();

  Future<bool> checkPermission();
}
