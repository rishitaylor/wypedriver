import 'dart:developer';

import 'package:geolocator/geolocator.dart';
import 'package:location/location.dart';
import 'package:wypedriver/apps/models/user_location_model.dart';

class LocationService {
  Future<Position> determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // 1. Check if location services are enabled
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled, request them
      permission = await Geolocator.requestPermission();

      if (permission == LocationPermission.denied) {
        // Handle the permission being denied (e.g., display an error message)
        return Future.error('Location permissions denied');
      }

      if (permission == LocationPermission.deniedForever) {
        // Handle the case where the permission is permanently denied
        // (e.g., suggest opening App Settings to manually grant permission)
        return Future.error(
            'Location permissions are permanently denied, please enable them manually from App Settings');
      }
    } else {
      // 2. Check if already have permission
      permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied ||
          permission == LocationPermission.deniedForever) {
        //  We don't have permission, request it
        permission = await Geolocator.requestPermission();
        if (permission != LocationPermission.always) {
          //Handle the failure to obtain permission
          return Future.error('Location permissions are denied');
        }
      }
    }

    // 3. Get the location if permission is granted
    return await Geolocator.getCurrentPosition();
  }

  void getCurrentLocation() async {
    Position position = await determinePosition();
    double latitude = position.latitude;
    double longitude = position.longitude;

    print('Current Location: Latitude: $latitude, Longitude: $longitude');
  }
}
