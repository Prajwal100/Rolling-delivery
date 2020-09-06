import 'dart:async';

import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rollingdelivery/Pages/detailPage.dart';
import 'package:rollingdelivery/color.dart' as color;
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

class confirmBook extends StatefulWidget {
  @override
  _confirmBookState createState() => _confirmBookState();
}

class _confirmBookState extends State<confirmBook> {
  Completer<GoogleMapController> _controller = Completer();
  static const LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  @override
  Widget build(BuildContext context) {
    DateTime selectedDate;

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
          Container(
            margin: EdgeInsets.symmetric(horizontal: 18, vertical: 60),
            child: Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                    height: 140,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: Colors.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 28.0, vertical: 20),
                          child: Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.mapMarkedAlt,
                                color: Colors.green,
                                size: 16,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Ratnapark',
                                      style: GoogleFonts.robotoCondensed(
                                          textStyle: TextStyle(fontSize: 20))),
                                  Text('Ratnapark kathmandu  - Nepal',
                                      style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey[500])))
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 28.0, vertical: 0),
                          child: Row(
                            children: [
                              FaIcon(
                                FontAwesomeIcons.mapMarkedAlt,
                                color: Colors.red,
                                size: 16,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text('Baneshwor',
                                          style: GoogleFonts.robotoCondensed(
                                              textStyle:
                                                  TextStyle(fontSize: 20))),
                                    ],
                                  ),
                                  Text('Baneshwor Kathmandu  - Nepal',
                                      style: GoogleFonts.poppins(
                                          textStyle: TextStyle(
                                              fontSize: 12,
                                              color: Colors.grey[500])))
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    )),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Container(
                  height: 230,
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
                        padding: const EdgeInsets.symmetric(
                            horizontal: 28.0, vertical: 30),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.biking,
                                      size: 20,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text('Bike',
                                        style: GoogleFonts.robotoCondensed(
                                            textStyle:
                                                TextStyle(fontSize: 20))),
                                  ],
                                ),
                                DropdownButton(
                                  // isExpanded: true,
                                  items: [
                                    new DropdownMenuItem(
                                        child: new Text("Bike number")),
                                    new DropdownMenuItem(
                                        child: new Text("Xyz")),
                                  ],
                                  hint: new Text("Select City"),
                                  onChanged: (value) {},
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.moneyBill,
                                      size: 16,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    DropdownButton(
                                      // isExpanded: true,
                                      items: [
                                        new DropdownMenuItem(
                                            child: new Text("Cash")),
                                        new DropdownMenuItem(
                                            child: new Text("e-sewa")),
                                      ],
                                      hint: new Text("Select City"),
                                      onChanged: (value) {},
                                    ),
                                  ],
                                ),
                                Text(
                                  'Rs.200.00',
                                  style: GoogleFonts.robotoCondensed(
                                      color: Colors.black54, fontSize: 18),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: FlatButton(
                                    color: color.primary,
                                    onPressed: () => {
                                      showDatePicker(
                                          context: context,
                                          initialDate: selectedDate == null
                                              ? DateTime.now()
                                              : selectedDate,
                                          firstDate: DateTime(2010),
                                          lastDate: DateTime(2021))
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(14.0),
                                      child: Row(
                                        children: [
                                          FaIcon(
                                            FontAwesomeIcons.calendarDay,
                                            color: Colors.white,
                                            size: 16,
                                          ),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Text(
                                            'Set Pickup',
                                            style: GoogleFonts.robotoCondensed(
                                                textStyle: TextStyle(
                                                    fontSize: 22,
                                                    color: Colors.white)),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Expanded(
                                  child: FlatButton(
                                    color: color.primary,
                                    onPressed: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => trackPage(),
                                      ));
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.all(14.0),
                                      child: Row(
                                        children: [
                                          FaIcon(
                                            FontAwesomeIcons.paperPlane,
                                            color: Colors.white,
                                            size: 16,
                                          ),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Text(
                                            'Confirm',
                                            style: GoogleFonts.robotoCondensed(
                                                textStyle: TextStyle(
                                                    fontSize: 22,
                                                    color: Colors.white)),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
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
