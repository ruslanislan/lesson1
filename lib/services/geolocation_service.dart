import 'package:geolocator/geolocator.dart';

import '../models/network/responses/location_point/location_point.dart';

class GeolocationService {
  Future<LocationPoint> getLocationPoint() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Проверить, включена ли геолокация на телефоне;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      throw Exception('Location services are disabled.');
    }

    // Есть ли разрешение на использование геолокации в приложении;
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      // Если разрешение не запрошено, запросить разрешение;
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        throw Exception('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      throw Exception(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    final point = await Geolocator.getCurrentPosition();
    return LocationPoint(
      lat: point.latitude,
      lon: point.longitude,
    );
  }
}
