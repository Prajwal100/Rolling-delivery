import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class savedAddress extends StatelessWidget {
  const savedAddress({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Saved Address'),
        ),
        body: ListView(
          children: [
            Card(
              elevation: 0,
              color: Colors.white,
              child: ListTile(
                leading: FaIcon(
                  FontAwesomeIcons.home,
                  size: 30,
                ),
                title: Text(
                  'Home',
                  style: GoogleFonts.robotoCondensed(
                      textStyle: TextStyle(fontSize: 20)),
                ),
                subtitle: Text(
                  'Koteshwor Kathmandu, Nepal',
                  style:
                      GoogleFonts.poppins(textStyle: TextStyle(fontSize: 14)),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: IconButton(
                    onPressed: () => _moreOptionBottom(context),
                    icon: Icon(
                      Icons.more_vert,
                      size: 36,
                    ),
                  ),
                ),
              ),
            ),
            Card(
              elevation: 0,
              color: Colors.white,
              child: ListTile(
                leading: FaIcon(
                  FontAwesomeIcons.dumbbell,
                  size: 30,
                ),
                title: Text(
                  'Gym',
                  style: GoogleFonts.robotoCondensed(
                      textStyle: TextStyle(fontSize: 20)),
                ),
                subtitle: Text(
                  'Koteshwor Kathmandu, Nepal',
                  style:
                      GoogleFonts.poppins(textStyle: TextStyle(fontSize: 14)),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: IconButton(
                    onPressed: () => _moreOptionBottom(context),
                    icon: Icon(
                      Icons.more_vert,
                      size: 36,
                    ),
                  ),
                ),
              ),
            ),
            Card(
              elevation: 0,
              color: Colors.white,
              child: ListTile(
                leading: FaIcon(
                  FontAwesomeIcons.shoppingBag,
                  size: 30,
                ),
                title: Text(
                  'Office',
                  style: GoogleFonts.robotoCondensed(
                      textStyle: TextStyle(fontSize: 20)),
                ),
                subtitle: Text(
                  'Koteshwor Kathmandu, Nepal',
                  style:
                      GoogleFonts.poppins(textStyle: TextStyle(fontSize: 14)),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: IconButton(
                    onPressed: () => _moreOptionBottom(context),
                    icon: Icon(
                      Icons.more_vert,
                      size: 36,
                    ),
                  ),
                ),
              ),
            ),
            Card(
              elevation: 0,
              color: Colors.white,
              child: ListTile(
                leading: FaIcon(
                  FontAwesomeIcons.shoppingBag,
                  size: 30,
                ),
                title: Text(
                  'Home',
                  style: GoogleFonts.robotoCondensed(
                      textStyle: TextStyle(fontSize: 20)),
                ),
                subtitle: Text(
                  'Koteshwor Kathmandu, Nepal',
                  style:
                      GoogleFonts.poppins(textStyle: TextStyle(fontSize: 14)),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: IconButton(
                    onPressed: () => _moreOptionBottom(context),
                    icon: Icon(
                      Icons.more_vert,
                      size: 36,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}

_moreOptionBottom(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return moreDialogue();
    },
  );
}

class moreDialogue extends StatelessWidget {
  const moreDialogue({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 180,
        child: Dialog(
          child: Column(
            children: [
              ListTile(
                  onTap: () {},
                  title: Text('EDIT'),
                  trailing: FaIcon(
                    FontAwesomeIcons.edit,
                    size: 20,
                  )),
              Divider(),
              ListTile(
                  title: Text('DELETE'),
                  trailing: FaIcon(
                    FontAwesomeIcons.trashAlt,
                    size: 20,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
