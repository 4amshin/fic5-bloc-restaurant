// ignore_for_file: public_member_api_docs, sort_constructors_first
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
  late GoogleMapController mapController;
  // final LatLng _center = const LatLng(-3.0068907878258972, 120.20167831747938);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
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
