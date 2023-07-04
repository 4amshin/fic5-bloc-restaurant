// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fic5_bloc_restaurant/shared/theme/google_map/gmaap_marker.dart';
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
  @override
  void initState() {
    createMarker(
      double.parse(widget.latitude),
      double.parse(widget.longitude),
      widget.cafeName,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 250,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  offset: const Offset(2, 0),
                  blurRadius: 10,
                  spreadRadius: 5,
                )
              ]),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: GoogleMap(
              // onMapCreated: _onMapCreated,
              mapType: MapType.normal,
              markers: markers,
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
