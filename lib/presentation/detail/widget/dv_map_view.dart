// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:fic5_bloc_restaurant/presentation/detail/widget/dv_map_full_view.dart';
import 'package:fic5_bloc_restaurant/shared/widgets/Buttons/main_button.dart';

class DvMapView extends StatefulWidget {
  static const routeName = "/map";
  final String cafeName;
  final String latitude;
  final String longitude;
  const DvMapView({
    Key? key,
    required this.cafeName,
    required this.latitude,
    required this.longitude,
  }) : super(key: key);

  @override
  State<DvMapView> createState() => _DvMapViewState();
}

class _DvMapViewState extends State<DvMapView> {
  late GoogleMapController mapController;
  // final LatLng _palopo = const LatLng(-3.0068907878258972, 120.20167831747938);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 250,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: GoogleMap(
              onMapCreated: _onMapCreated,
              initialCameraPosition: CameraPosition(
                target: LatLng(
                  double.parse(widget.latitude),
                  double.parse(widget.longitude),
                ),
                zoom: 17,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 10,
          left: 15,
          child: MainButton(
            onTap: () => context.push(
                "${DvMapFullView.routeName}/${widget.cafeName}/${widget.latitude}/${widget.longitude}"),
            label: 'Full View',
          ),
        ),
      ],
    );
  }
}
