import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rollingdelivery/color.dart' as color;

class selectRide extends StatefulWidget {
  @override
  _selectRideState createState() => _selectRideState();
}

class _selectRideState extends State<selectRide> {
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
              padding: const EdgeInsets.all(0.0),
              child: Container(
                  height: 310,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: FaIcon(
                          FontAwesomeIcons.angleDoubleDown,
                          size: 16,
                          color: Colors.grey[500],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 18.0, vertical: 18),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Select your ride'.toUpperCase(),
                              style: GoogleFonts.robotoCondensed(
                                  textStyle: TextStyle(fontSize: 18)),
                            ),
                            OutlineButton(
                              child: Text(
                                'Available : 4'.toUpperCase(),
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey[500])),
                              ),
                            )
                          ],
                        ),
                      ),
                      Divider(),
                      ListTile(
                        leading: FaIcon(FontAwesomeIcons.biking),
                        title: Text('Prajwal Rai',
                            style: GoogleFonts.robotoCondensed(
                                textStyle: TextStyle(fontSize: 20))),
                        subtitle: Row(
                          children: [
                            Text('NS 200', style: GoogleFonts.poppins()),
                            SizedBox(
                              width: 6,
                            ),
                            Row(
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.star,
                                  size: 12,
                                  color: Colors.orange,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Text("4.8")
                              ],
                            )
                          ],
                        ),
                        trailing: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Rs.200.00',
                                  style: GoogleFonts.robotoCondensed(
                                    textStyle: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black54),
                                  )),
                              Text('2m away',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 14, color: Colors.black54),
                                  ))
                            ],
                          ),
                        ),
                      ),
                      Divider(),
                      ListTile(
                        leading: FaIcon(FontAwesomeIcons.biking),
                        title: Text('Prajwal Rai',
                            style: GoogleFonts.robotoCondensed(
                                textStyle: TextStyle(fontSize: 20))),
                        subtitle: Row(
                          children: [
                            Text('NS 200', style: GoogleFonts.poppins()),
                            SizedBox(
                              width: 6,
                            ),
                            Row(
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.star,
                                  size: 12,
                                  color: Colors.orange,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Text("4.8")
                              ],
                            )
                          ],
                        ),
                        trailing: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Rs.200.00',
                                  style: GoogleFonts.robotoCondensed(
                                    textStyle: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black54),
                                  )),
                              Text('2m away',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        fontSize: 14, color: Colors.black54),
                                  ))
                            ],
                          ),
                        ),
                      ),
                      Divider(),
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
