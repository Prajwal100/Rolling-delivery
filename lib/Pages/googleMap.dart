import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rollingdelivery/Pages/selectRide.dart';
import 'package:rollingdelivery/color.dart' as color;

class googleMap extends StatefulWidget {
  @override
  _googleMapState createState() => _googleMapState();
}

class _googleMapState extends State<googleMap> {
  Completer<GoogleMapController> _controller = Completer();

  static const LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: _center,
              zoom: 11.0,
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
                margin: EdgeInsets.symmetric(horizontal: 18, vertical: 60),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(60))),
                child: Center(
                  child: InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: FaIcon(FontAwesomeIcons.angleLeft)),
                )),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(60)),
                  color: color.primary,
                ),
                child: TextFormField(
                  // readOnly: true,
                  style: TextStyle(color: Colors.white),
                  cursorColor: Colors.white,

                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Pick location from map.....",
                      contentPadding: EdgeInsets.only(top: 12),
                      hintStyle: GoogleFonts.robotoCondensed(
                          textStyle:
                              TextStyle(color: Colors.white, fontSize: 20)),
                      prefixIcon: Icon(
                        Icons.location_on,
                        color: Colors.white,
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => selectRide()));
                        },
                        icon: Icon(
                          Icons.send,
                          color: Colors.white,
                        ),
                      )),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
