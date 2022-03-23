import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class CustomGoogleMaps extends StatefulWidget {
  @override
  _CustomGoogleMapsState createState() => _CustomGoogleMapsState();
}

class _CustomGoogleMapsState extends State<CustomGoogleMaps> {
  final Set<Marker> _markers = {};
  final LatLng _currentPosition = LatLng(-0.8971395757503112, 100.3507166778259);

  @override
  void initState() {
    _markers.add(
      Marker(
        markerId: MarkerId("-0.8971395757503112, 100.3507166778259"),
        position: _currentPosition,
        icon: BitmapDescriptor.defaultMarker,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300.h,
      width: double.infinity,
      child: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: _currentPosition,
          zoom: 14.0,
        ),
        markers: _markers,
          onTap: (position) {
            setState(() {
              _markers.add(
                Marker(
                  markerId:
                  MarkerId(
                    "${position.latitude}, ${position.longitude}"
                  ),
                  icon: BitmapDescriptor.defaultMarker,
                  position: position,
                ),
              );
            },
          );
        },
      ),
    );
  }
}