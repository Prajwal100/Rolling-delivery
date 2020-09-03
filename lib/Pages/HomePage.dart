import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

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
                  textStyle: TextStyle(color: Colors.grey[500], fontSize: 18))),
        ),
        SliverPadding(
          padding: EdgeInsets.all(4),
          sliver: SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 1.2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10),
            delegate:
                SliverChildBuilderDelegate(_buildServiceItem, childCount: 6),
          ),
        )
      ],
    );
  }
}

Widget _buildServiceItem(BuildContext context, int index) {
  return MaterialButton(
      onPressed: () {},
      child: Column(
        children: [FaIcon(FontAwesomeIcons.biking), Text('Bike')],
      ));
}
