import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:group_radio_button/group_radio_button.dart';
import 'package:rollingdelivery/color.dart' as color;

class editProfile extends StatefulWidget {
  editProfile({Key key}) : super(key: key);

  @override
  _editProfileState createState() => _editProfileState();
}

class _editProfileState extends State<editProfile> {
  int _stackIndex = 0;

  String _singleValue = "Text alignment right";
  String _verticalGroupValue = "MALE";
  List<String> _status = ["MALE", "FEMALE", "OTHER"];
  // const editProfile({Key key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Profile'),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: 80,
                width: 80,
                margin: EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: ExactAssetImage('images/user.png'))),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
              child: TextFormField(
                keyboardType: TextInputType.name,
                textInputAction: TextInputAction.send,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4))),
                    labelText: "ENTER FULL NAME",
                    hintText: "Prajwal Rai"),
                autofocus: false,
                autocorrect: false,
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return 'YOUR NAME REQUIRED';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.send,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4))),
                    labelText: "ENTER EMAIL ADDRESS",
                    hintText: "Prajwal.iar@gmail.com"),
                autofocus: false,
                autocorrect: false,
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return 'EMAIL ADDRESS REQUIRED';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
              child: TextFormField(
                keyboardType: TextInputType.phone,
                textInputAction: TextInputAction.send,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4))),
                    labelText: "ENTER PHONE NUMBER",
                    hintText: "9807009889"),
                autofocus: false,
                autocorrect: false,
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return 'PHONE NUMBER REQUIRED';
                  }
                  return null;
                },
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
              child: TextFormField(
                keyboardType: TextInputType.datetime,
                textInputAction: TextInputAction.send,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4))),
                    labelText: "DATE OF BIRTH",
                    hintText: "1999/06/20"),
                autofocus: false,
                autocorrect: false,
                validator: (text) {
                  if (text == null || text.isEmpty) {
                    return 'DATE OF BIRTH REQUIRED';
                  }
                  return null;
                },
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Text('GENDER',
                    style: GoogleFonts.robotoCondensed(
                        textStyle:
                            TextStyle(color: Colors.grey[600], fontSize: 18)))),
            RadioGroup<String>.builder(
              direction: Axis.horizontal,
              groupValue: _verticalGroupValue,
              onChanged: (value) => setState(() {
                _verticalGroupValue = value;
              }),
              items: _status,
              itemBuilder: (item) => RadioButtonBuilder(
                item,
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18.0, vertical: 18),
                    child: FlatButton(
                      color: color.primary,
                      onPressed: () {
                        if (_formKey.currentState.validate()) {}
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: Text(
                          'SAVE',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
