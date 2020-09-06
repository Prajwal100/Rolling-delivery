import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rollingdelivery/Pages/editProfile.dart';
import 'package:rollingdelivery/color.dart' as color;

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('View Profile'),
        actions: [
          FlatButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => editProfile()));
            },
            child: FaIcon(
              FontAwesomeIcons.userEdit,
              color: Colors.white,
              size: 20,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Center(
            child: Container(
              height: 80,
              width: 80,
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: ExactAssetImage('images/user.png'))),
            ),
          ),
          ListTile(
            title: Text(
              'NAME',
              style: TextStyle(color: color.primary, fontSize: 12),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Text(
                'Prajwal Rai',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          Divider(),
          ListTile(
            title: Text(
              'EMAIL',
              style: TextStyle(color: color.primary, fontSize: 12),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Text(
                'Prajwal.iar@gmail.com',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          Divider(),
          ListTile(
            title: Text(
              'PHONE NUMBER',
              style: TextStyle(color: color.primary, fontSize: 12),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Text(
                '+977-9807009889',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          Divider(),
          ListTile(
            title: Text(
              'GENGER',
              style: TextStyle(color: color.primary, fontSize: 12),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Text(
                'MALE',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
          Divider(),
          ListTile(
            title: Text(
              'DATE OF BIRTH',
              style: TextStyle(color: color.primary, fontSize: 12),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 4.0),
              child: Text(
                '1999-06-20',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
