// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fic5_bloc_restaurant/shared/theme/google_map/gmaap_marker.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DvMapFullView extends StatefulWidget {
  static const routeName = '/fullMap';
  final String title;
  final String latitude;
  final String longitude;
  const DvMapFullView({
    Key? key,
    required this.title,
    required this.latitude,
    required this.longitude,
  }) : super(key: key);

  @override
  _DvMapFullViewState createState() => _DvMapFullViewState();
}

class _DvMapFullViewState extends State<DvMapFullView> {
  @override
  void initState() {
    createMarker(
      double.parse(widget.latitude),
      double.parse(widget.longitude),
      widget.title,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: GoogleMap(
        mapType: MapType.normal,
        markers: markers,
        initialCameraPosition: CameraPosition(
          target: LatLng(
            double.parse(widget.latitude),
            double.parse(widget.longitude),
          ),
          zoom: 15,
        ),
      ),
    );
  }
}
