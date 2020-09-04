import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rollingdelivery/color.dart' as color;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class profilePage extends StatefulWidget {
  profilePage({Key key}) : super(key: key);

  @override
  _profilePageState createState() => _profilePageState();
}

class _profilePageState extends State<profilePage> {
  bool status = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: ListView(
        children: [
          Container(
            height: 100,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: ExactAssetImage('images/user.png'))),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Prajwal Rai',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 2.0),
                        child: Text(
                          '9800949495',
                          style:
                              TextStyle(color: Colors.grey[500], fontSize: 16),
                        ),
                      ),
                      Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.mapMarkerAlt,
                            size: 12,
                            color: Colors.grey[500],
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            'Kathmandu, Nepal',
                            style: TextStyle(
                                color: Colors.grey[500], fontSize: 12),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            height: 280,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    width: double.infinity,
                    child: Text(
                      'ACCOUNT',
                      style: TextStyle(color: Colors.grey[500]),
                    ),
                  ),
                  FlatButton(
                    splashColor: color.secondary,
                    onPressed: () {},
                    child: Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.solidUserCircle,
                          size: 20,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Profile',
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  FlatButton(
                    splashColor: color.secondary,
                    onPressed: () {},
                    child: Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.heart,
                          size: 20,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Saved Address',
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  FlatButton(
                    splashColor: color.secondary,
                    onPressed: () {},
                    child: Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.userCheck,
                          size: 20,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Favorite Rider',
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  FlatButton(
                    splashColor: color.secondary,
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            FaIcon(
                              FontAwesomeIcons.bell,
                              size: 20,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              'Notifications',
                              style: TextStyle(fontSize: 16),
                            )
                          ],
                        ),
                        FlutterSwitch(
                          height: 26,
                          width: 60,
                          value: status,
                          borderRadius: 30,
                          toggleSize: 20,
                          showOnOff: true,
                          onToggle: (val) {
                            setState(() {
                              status = val;
                            });
                          },
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            height: 220,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    width: double.infinity,
                    child: Text(
                      'SETTINGS',
                      style: TextStyle(color: Colors.grey[500]),
                    ),
                  ),
                  FlatButton(
                    splashColor: color.secondary,
                    onPressed: () {},
                    child: Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.globeAsia,
                          size: 20,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Language',
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  FlatButton(
                    splashColor: color.secondary,
                    onPressed: () {},
                    child: Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.moneyBillAlt,
                          size: 20,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Add Payment Methods',
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  FlatButton(
                    splashColor: color.secondary,
                    onPressed: () {},
                    child: Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.solidCalendarCheck,
                          size: 20,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Calender',
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            height: 160,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    width: double.infinity,
                    child: Text(
                      'HELP & LEGAL',
                      style: TextStyle(color: Colors.grey[500]),
                    ),
                  ),
                  FlatButton(
                    splashColor: color.secondary,
                    onPressed: () {},
                    child: Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.solidQuestionCircle,
                          size: 20,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Help',
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  FlatButton(
                    splashColor: color.secondary,
                    onPressed: () {},
                    child: Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.fileAlt,
                          size: 20,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Privacy & Policies',
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            color: Colors.white,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FlatButton(
                    splashColor: color.secondary,
                    onPressed: () {},
                    child: Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.signOutAlt,
                          size: 20,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'LogOut',
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text('Copyright by Rolling Plans Pvt. Ltd',
                      style: GoogleFonts.robotoCondensed(
                          textStyle: TextStyle(
                              color: Colors.grey[500],
                              fontStyle: FontStyle.italic,
                              fontSize: 12))),
                  Text('Version 1.0',
                      style: GoogleFonts.robotoCondensed(
                          textStyle: TextStyle(
                              color: Colors.grey[500],
                              fontStyle: FontStyle.italic,
                              fontSize: 12))),
                  SizedBox(
                    height: 8,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
