import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rollingdelivery/Pages/locationPage.dart';
import 'package:rollingdelivery/color.dart' as color;

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
          child: Text('OUR SERVICES',
              style: GoogleFonts.robotoCondensed(
                  textStyle: TextStyle(color: Colors.grey[500], fontSize: 16))),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 18),
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              MaterialButton(
                height: 100,
                minWidth: 100,
                elevation: 1,
                color: Colors.white,
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.biking,
                      size: 35,
                      color: Colors.red,
                    ),
                    Text(
                      'Bike',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(fontSize: 18)),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 12,
              ),
              MaterialButton(
                height: 100,
                minWidth: 100,
                elevation: 1,
                color: Colors.white,
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.biking,
                      size: 35,
                      color: Colors.red,
                    ),
                    Text(
                      'Bike',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(fontSize: 18)),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 12,
              ),
              MaterialButton(
                height: 100,
                minWidth: 100,
                elevation: 1,
                color: Colors.white,
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.biking,
                      size: 35,
                      color: Colors.red,
                    ),
                    Text(
                      'Bike',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(fontSize: 18)),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 12,
              ),
              MaterialButton(
                height: 100,
                minWidth: 100,
                elevation: 1,
                color: Colors.white,
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.biking,
                      size: 35,
                      color: Colors.red,
                    ),
                    Text(
                      'Bike',
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(fontSize: 18)),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
          child: Text('WHERE WOULD YOU LIKE TO GO?',
              style: GoogleFonts.robotoCondensed(
                  textStyle: TextStyle(color: Colors.grey[500], fontSize: 16))),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 18),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(32),
          ),
          child: TextFormField(
              style: TextStyle(color: Colors.red),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => locationPage(),
                ));
              },
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Enter your destination....",
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.grey[500],
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20, vertical: 14),
                  hintStyle: GoogleFonts.robotoCondensed(
                      textStyle: TextStyle(color: Colors.grey[500])))),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 18, vertical: 10),
          height: 26,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  width: 70,
                  decoration: BoxDecoration(
                      color: color.secondary,
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  child: Text(
                    'Home',
                    style: GoogleFonts.poppins(fontSize: 14),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  width: 70,
                  decoration: BoxDecoration(
                      color: color.secondary,
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  child: Text(
                    'Gym',
                    style: GoogleFonts.poppins(fontSize: 14),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  width: 70,
                  decoration: BoxDecoration(
                      color: color.secondary,
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  child: Text(
                    'Office',
                    style: GoogleFonts.poppins(fontSize: 14),
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  width: 70,
                  decoration: BoxDecoration(
                      color: color.secondary,
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  child: Text(
                    'Party',
                    style: GoogleFonts.poppins(fontSize: 14),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
          child: Text('RECOMMENDED PRODUCTS',
              style: GoogleFonts.robotoCondensed(
                  textStyle: TextStyle(color: Colors.grey[500], fontSize: 16))),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Stack(
                children: [
                  Container(
                    height: 100,
                    width: 165,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: ExactAssetImage('images/product.jpg'))),
                  ),
                  // Container(
                  //   color: Colors.black.withOpacity(.2),
                  //   height: 100,
                  //   width: 150,
                  // ),
                  Positioned(
                    top: 30,
                    left: 50,
                    child: Container(
                      // padding: EdgeInsets.all(value),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: color.primary,
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(60))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '10%',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    color: Colors.white, fontSize: 10)),
                          ),
                          Text(
                            'OFF',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    height: 100,
                    width: 165,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: ExactAssetImage('images/product.jpg'))),
                  ),
                  // Container(
                  //   color: Colors.black.withOpacity(.2),
                  //   height: 100,
                  //   width: 150,
                  // ),
                  Positioned(
                    top: 30,
                    left: 50,
                    child: Container(
                      // padding: EdgeInsets.all(value),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: color.primary,
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(60))),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '10%',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    color: Colors.white, fontSize: 10)),
                          ),
                          Text(
                            'OFF',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold)),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
