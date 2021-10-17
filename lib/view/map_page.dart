//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sky_mint/constants/colors.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  var firstVal = 41.025930;
  var secondVal = 28.889374;
  var pressAttention = false;
  GoogleMapController? _controller;
  static final _cameraPositionDP =
      CameraPosition(target: LatLng(41.025930, 28.889374), zoom: 15.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
              initialCameraPosition: _cameraPositionDP,
              myLocationButtonEnabled: true,
              mapType: MapType.normal,
              tiltGesturesEnabled: true,
              compassEnabled: false,
              scrollGesturesEnabled: true,
              zoomGesturesEnabled: true,
              onMapCreated: (GoogleMapController controller) {
                _controller = controller;
              }),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              ElevatedButton(
                onPressed: () {
                  _controller!.animateCamera(CameraUpdate.newCameraPosition(
                      (CameraPosition(
                          target: LatLng(41.025930, 28.889374), zoom: 15.0))));
                  setState(() {
                    if (pressAttention == true) {
                      pressAttention = !pressAttention;
                    }
                  });
                },
                child: Text(
                  "Davutpaşa",
                  style: TextStyle(fontFamily: "Pattaya", fontSize: 16),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomLeft: Radius.circular(30)),
                  ),
                  minimumSize: Size(90, 30),
                  primary: pressAttention ? kPrimaryColor : darkColor,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  //setState(() => pressattention = !pressattention);
                  _controller!.animateCamera(CameraUpdate.newCameraPosition(
                      (CameraPosition(
                          target: LatLng(41.051739, 29.010093), zoom: 15.0))));

                  setState(() {
                    if (pressAttention == false) {
                      pressAttention = !pressAttention;
                    }
                  });
                },
                child: Text("Beşiktaş",
                    style: TextStyle(fontFamily: "Pattaya", fontSize: 16)),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                  ),
                  minimumSize: Size(90, 30),
                  primary: pressAttention ? darkColor : kPrimaryColor,
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
