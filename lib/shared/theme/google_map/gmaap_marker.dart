import 'package:google_maps_flutter/google_maps_flutter.dart';

final Set<Marker> markers = {};

void createMarker(double lat, double lng, String address) {
  final marker = Marker(
    markerId: const MarkerId('currentPosition'),
    infoWindow: InfoWindow(title: address),
    position: LatLng(lat, lng),
  );

  markers.add(marker);
}
