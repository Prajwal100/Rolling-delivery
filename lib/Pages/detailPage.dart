import 'dart:async';

import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rollingdelivery/color.dart' as color;
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class trackPage extends StatefulWidget {
  @override
  _trackPageState createState() => _trackPageState();
}

class _trackPageState extends State<trackPage> {
  Completer<GoogleMapController> _controller = Completer();
  static const LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  @override
  Widget build(BuildContext context) {
    DateTime selectedDate = DateTime.now();

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
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Container(
                  height: 430,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    color: Colors.white,
                  ),
                  child: ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 28.0, vertical: 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Column(
                                children: [
                                  Text(
                                    '2:30 - 2:40 PM',
                                    style: GoogleFonts.robotoCondensed(
                                        textStyle: TextStyle(
                                            fontSize: 24,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Text(
                                    'EST. time to reach on your destination',
                                    style: GoogleFonts.robotoCondensed(
                                        textStyle: TextStyle(
                                      fontSize: 12,
                                      color: Colors.black45,
                                    )),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              height: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'TRIP DETAILS',
                                style: GoogleFonts.robotoCondensed(
                                    textStyle: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black45,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 0.0, horizontal: 20),
                              child: Row(
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.circle,
                                    color: Colors.green,
                                    size: 16,
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Ratnapark',
                                          style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black))),
                                      Text('Ratnapark Kathmandu - Nepal',
                                          style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.grey))),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 0.0, horizontal: 20),
                              child: Row(
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.dotCircle,
                                    color: Colors.green,
                                    size: 16,
                                  ),
                                  SizedBox(
                                    width: 6,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Baneshwor',
                                          style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black))),
                                      Text('Baneshwor Kathmandu - Nepal',
                                          style: GoogleFonts.poppins(
                                              textStyle: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.grey))),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Divider(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'BOOKING DETAILS',
                                style: GoogleFonts.robotoCondensed(
                                    textStyle: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black45,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                            Divider(),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 20),
                              child: Row(
                                children: [
                                  FaIcon(FontAwesomeIcons.biking,
                                      size: 18, color: Colors.grey),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    'NS 200',
                                    style: GoogleFonts.robotoCondensed(
                                        textStyle: TextStyle(
                                            fontSize: 20, color: Colors.grey)),
                                  )
                                ],
                              ),
                            ),
                            Divider(),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 20),
                              child: Row(
                                children: [
                                  FaIcon(FontAwesomeIcons.moneyBill,
                                      size: 18, color: Colors.grey),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Text(
                                    'Cash',
                                    style: GoogleFonts.robotoCondensed(
                                        textStyle: TextStyle(
                                            fontSize: 20, color: Colors.grey)),
                                  )
                                ],
                              ),
                            ),
                            Divider(),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Text(
                                'Manage ride'.toUpperCase(),
                                style: GoogleFonts.robotoCondensed(
                                    textStyle: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black45,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                            ListTile(
                              leading: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50))),
                                child: Center(
                                    child: FaIcon(
                                  FontAwesomeIcons.share,
                                  size: 16,
                                )),
                              ),
                              title: Text(
                                'Share ride details',
                                style: GoogleFonts.poppins(
                                    color: Colors.grey[500]),
                              ),
                            ),
                            Divider(),
                            ListTile(
                              leading: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50))),
                                child: Center(
                                    child: FaIcon(
                                  FontAwesomeIcons.questionCircle,
                                  size: 16,
                                )),
                              ),
                              title: Text(
                                'Get supports',
                                style: GoogleFonts.poppins(
                                    color: Colors.grey[500]),
                              ),
                            ),
                            Divider(),
                            ListTile(
                              leading: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: Colors.red[100],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(50))),
                                child: Center(
                                    child: FaIcon(
                                  FontAwesomeIcons.trashAlt,
                                  color: Colors.red,
                                  size: 16,
                                )),
                              ),
                              title: Text(
                                'Cancel ride',
                                style:
                                    GoogleFonts.poppins(color: Colors.red[300]),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            )
                          ],
                        ),
                      )
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

// _selectDate(BuildContext context) async {
//   DateTime selectedDate = DateTime.now();

//   final DateTime picked = await showDatePicker(
//     context: context,
//     initialDate: selectedDate, // Refer step 1
//     firstDate: DateTime(2000),
//     lastDate: DateTime(2025),
//   );
//   if (picked != null && picked != selectedDate)
//     setState(() {
//       selectedDate = picked;
//     });
// }
