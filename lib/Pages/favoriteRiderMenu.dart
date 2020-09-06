import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class favoriteRiderMenu extends StatelessWidget {
  const favoriteRiderMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Rider'),
      ),
      body: ListView(
        children: [
          ListTile(
            onTap: () {},
            leading: FaIcon(FontAwesomeIcons.biking),
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
            title: Text('Prajwal Rai',
                style: GoogleFonts.robotoCondensed(
                    textStyle: TextStyle(fontSize: 20))),
            subtitle: Row(
              children: [
                Text('NS 200', style: GoogleFonts.poppins()),
                SizedBox(
                  width: 16,
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
                    Text("4.8"),
                  ],
                ),
                SizedBox(
                  width: 16,
                ),
                Text('2m away',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(fontSize: 14, color: Colors.black54),
                    ))
              ],
            ),
          ),
          Divider(),
          ListTile(
            onTap: () {},
            leading: FaIcon(FontAwesomeIcons.biking),
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
            title: Text('Prajwal Rai',
                style: GoogleFonts.robotoCondensed(
                    textStyle: TextStyle(fontSize: 20))),
            subtitle: Row(
              children: [
                Text('NS 200', style: GoogleFonts.poppins()),
                SizedBox(
                  width: 16,
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
                    Text("4.8"),
                  ],
                ),
                SizedBox(
                  width: 16,
                ),
                Text('2m away',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(fontSize: 14, color: Colors.black54),
                    ))
              ],
            ),
          ),
          Divider(),
          ListTile(
            onTap: () {},
            leading: FaIcon(FontAwesomeIcons.biking),
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
            title: Text('Prajwal Rai',
                style: GoogleFonts.robotoCondensed(
                    textStyle: TextStyle(fontSize: 20))),
            subtitle: Row(
              children: [
                Text('NS 200', style: GoogleFonts.poppins()),
                SizedBox(
                  width: 16,
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
                    Text("4.8"),
                  ],
                ),
                SizedBox(
                  width: 16,
                ),
                Text('2m away',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(fontSize: 14, color: Colors.black54),
                    ))
              ],
            ),
          ),
          Divider(),
          ListTile(
            onTap: () {},
            leading: FaIcon(FontAwesomeIcons.biking),
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
            title: Text('Prajwal Rai',
                style: GoogleFonts.robotoCondensed(
                    textStyle: TextStyle(fontSize: 20))),
            subtitle: Row(
              children: [
                Text('NS 200', style: GoogleFonts.poppins()),
                SizedBox(
                  width: 16,
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
                    Text("4.8"),
                  ],
                ),
                SizedBox(
                  width: 16,
                ),
                Text('2m away',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(fontSize: 14, color: Colors.black54),
                    ))
              ],
            ),
          ),
          Divider(),
          ListTile(
            onTap: () {},
            leading: FaIcon(FontAwesomeIcons.biking),
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
            title: Text('Prajwal Rai',
                style: GoogleFonts.robotoCondensed(
                    textStyle: TextStyle(fontSize: 20))),
            subtitle: Row(
              children: [
                Text('NS 200', style: GoogleFonts.poppins()),
                SizedBox(
                  width: 16,
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
                    Text("4.8"),
                  ],
                ),
                SizedBox(
                  width: 16,
                ),
                Text('2m away',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(fontSize: 14, color: Colors.black54),
                    ))
              ],
            ),
          ),
          Divider(),
          ListTile(
            onTap: () {},
            leading: FaIcon(FontAwesomeIcons.biking),
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
            title: Text('Prajwal Rai',
                style: GoogleFonts.robotoCondensed(
                    textStyle: TextStyle(fontSize: 20))),
            subtitle: Row(
              children: [
                Text('NS 200', style: GoogleFonts.poppins()),
                SizedBox(
                  width: 16,
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
                    Text("4.8"),
                  ],
                ),
                SizedBox(
                  width: 16,
                ),
                Text('2m away',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(fontSize: 14, color: Colors.black54),
                    ))
              ],
            ),
          ),
          Divider(),
          ListTile(
            onTap: () {},
            leading: FaIcon(FontAwesomeIcons.biking),
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
            title: Text('Prajwal Rai',
                style: GoogleFonts.robotoCondensed(
                    textStyle: TextStyle(fontSize: 20))),
            subtitle: Row(
              children: [
                Text('NS 200', style: GoogleFonts.poppins()),
                SizedBox(
                  width: 16,
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
                    Text("4.8"),
                  ],
                ),
                SizedBox(
                  width: 16,
                ),
                Text('2m away',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(fontSize: 14, color: Colors.black54),
                    ))
              ],
            ),
          ),
          Divider(),
          ListTile(
            onTap: () {},
            leading: FaIcon(FontAwesomeIcons.biking),
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
            title: Text('Prajwal Rai',
                style: GoogleFonts.robotoCondensed(
                    textStyle: TextStyle(fontSize: 20))),
            subtitle: Row(
              children: [
                Text('NS 200', style: GoogleFonts.poppins()),
                SizedBox(
                  width: 16,
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
                    Text("4.8"),
                  ],
                ),
                SizedBox(
                  width: 16,
                ),
                Text('2m away',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(fontSize: 14, color: Colors.black54),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
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
        height: 330,
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
              Divider(),
              ListTile(
                  title: Text('MESSAGE'),
                  trailing: FaIcon(
                    FontAwesomeIcons.comment,
                    size: 20,
                  )),
              Divider(),
              ListTile(
                  title: Text('CALL'),
                  trailing: FaIcon(
                    FontAwesomeIcons.phoneAlt,
                    size: 20,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
