import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rollingdelivery/Pages/googleMap.dart';
import 'package:rollingdelivery/color.dart' as color;

class locationPage extends StatelessWidget {
  const locationPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose destination'),
        bottom: _buildButtonAppBar(context),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Text(
              'Recent locations',
              style: GoogleFonts.robotoCondensed(
                  textStyle: TextStyle(color: Colors.grey[500], fontSize: 18)),
            ),
          ),
          Divider(),
          ListTile(
            trailing: IconButton(
              icon: Icon(Icons.favorite_border),
              onPressed: () {},
            ),
            title: Text(
              'Balaju',
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      color: Colors.black54,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
            subtitle: RichText(
              text: TextSpan(
                  text: "Balaju, Kathmandu",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(color: Colors.grey[500])),
                  children: <TextSpan>[
                    TextSpan(
                        text: "   -5km away",
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontStyle: FontStyle.italic, fontSize: 12)))
                  ]),
            ),
          ),
          Divider(),
          ListTile(
            trailing: IconButton(
              icon: Icon(Icons.favorite_border),
              onPressed: () {},
            ),
            title: Text(
              'Balaju',
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      color: Colors.black54,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
            subtitle: RichText(
              text: TextSpan(
                  text: "Balaju, Kathmandu",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(color: Colors.grey[500])),
                  children: <TextSpan>[
                    TextSpan(
                        text: "   -5km away",
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontStyle: FontStyle.italic, fontSize: 12)))
                  ]),
            ),
          ),
          Divider(),
          ListTile(
            trailing: IconButton(
              icon: Icon(Icons.favorite_border),
              onPressed: () {},
            ),
            title: Text(
              'Balaju',
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      color: Colors.black54,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
            subtitle: RichText(
              text: TextSpan(
                  text: "Balaju, Kathmandu",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(color: Colors.grey[500])),
                  children: <TextSpan>[
                    TextSpan(
                        text: "   -5km away",
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontStyle: FontStyle.italic, fontSize: 12)))
                  ]),
            ),
          ),
          Divider(),
          ListTile(
            trailing: IconButton(
              icon: Icon(Icons.favorite_border),
              onPressed: () {},
            ),
            title: Text(
              'Balaju',
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      color: Colors.black54,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
            subtitle: RichText(
              text: TextSpan(
                  text: "Balaju, Kathmandu",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(color: Colors.grey[500])),
                  children: <TextSpan>[
                    TextSpan(
                        text: "   -5km away",
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontStyle: FontStyle.italic, fontSize: 12)))
                  ]),
            ),
          ),
          Divider(),
          ListTile(
            trailing: IconButton(
              icon: Icon(Icons.favorite_border),
              onPressed: () {},
            ),
            title: Text(
              'Balaju',
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      color: Colors.black54,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
            subtitle: RichText(
              text: TextSpan(
                  text: "Balaju, Kathmandu",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(color: Colors.grey[500])),
                  children: <TextSpan>[
                    TextSpan(
                        text: "   -5km away",
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontStyle: FontStyle.italic, fontSize: 12)))
                  ]),
            ),
          ),
          Divider(),
          ListTile(
            trailing: IconButton(
              icon: Icon(Icons.favorite_border),
              onPressed: () {},
            ),
            title: Text(
              'Balaju',
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      color: Colors.black54,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
            subtitle: RichText(
              text: TextSpan(
                  text: "Balaju, Kathmandu",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(color: Colors.grey[500])),
                  children: <TextSpan>[
                    TextSpan(
                        text: "   -5km away",
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontStyle: FontStyle.italic, fontSize: 12)))
                  ]),
            ),
          ),
          Divider(),
          ListTile(
            trailing: IconButton(
              icon: Icon(Icons.favorite_border),
              onPressed: () {},
            ),
            title: Text(
              'Balaju',
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      color: Colors.black54,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
            subtitle: RichText(
              text: TextSpan(
                  text: "Balaju, Kathmandu",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(color: Colors.grey[500])),
                  children: <TextSpan>[
                    TextSpan(
                        text: "   -5km away",
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontStyle: FontStyle.italic, fontSize: 12)))
                  ]),
            ),
          ),
          Divider(),
          ListTile(
            trailing: IconButton(
              icon: Icon(Icons.favorite_border),
              onPressed: () {},
            ),
            title: Text(
              'Balaju',
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      color: Colors.black54,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
            subtitle: RichText(
              text: TextSpan(
                  text: "Balaju, Kathmandu",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(color: Colors.grey[500])),
                  children: <TextSpan>[
                    TextSpan(
                        text: "   -5km away",
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontStyle: FontStyle.italic, fontSize: 12)))
                  ]),
            ),
          ),
          Divider(),
          ListTile(
            trailing: IconButton(
              icon: Icon(Icons.favorite_border),
              onPressed: () {},
            ),
            title: Text(
              'Balaju',
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      color: Colors.black54,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
            subtitle: RichText(
              text: TextSpan(
                  text: "Balaju, Kathmandu",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(color: Colors.grey[500])),
                  children: <TextSpan>[
                    TextSpan(
                        text: "   -5km away",
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontStyle: FontStyle.italic, fontSize: 12)))
                  ]),
            ),
          ),
          Divider(),
          ListTile(
            trailing: IconButton(
              icon: Icon(Icons.favorite_border),
              onPressed: () {},
            ),
            title: Text(
              'Balaju',
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      color: Colors.black54,
                      fontSize: 20,
                      fontWeight: FontWeight.bold)),
            ),
            subtitle: RichText(
              text: TextSpan(
                  text: "Balaju, Kathmandu",
                  style: GoogleFonts.poppins(
                      textStyle: TextStyle(color: Colors.grey[500])),
                  children: <TextSpan>[
                    TextSpan(
                        text: "   -5km away",
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontStyle: FontStyle.italic, fontSize: 12)))
                  ]),
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}

PreferredSize _buildButtonAppBar(BuildContext context) {
  return PreferredSize(
    child: Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 14),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(6))),
          child: TextFormField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                contentPadding: EdgeInsets.only(top: 15),
                hintText: "Search your destination"),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(14, 4, 14, 8),
          child: FlatButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => googleMap(),
              ));
            },
            color: color.secondary,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.mapMarkerAlt,
                    size: 16,
                    color: Colors.green,
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Text('Select from google map',
                      style: GoogleFonts.robotoCondensed(
                          textStyle: TextStyle(
                              color: Colors.grey[500], fontSize: 16))),
                ],
              ),
            ),
          ),
        )
      ],
    ),
    preferredSize: Size.fromHeight(110),
  );
}
