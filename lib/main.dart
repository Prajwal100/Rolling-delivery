import 'package:flutter/material.dart';

import 'dart:async';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rollingdelivery/Pages/HomePage.dart';
import 'package:rollingdelivery/Pages/SettingPage.dart';
import 'package:rollingdelivery/Pages/favoriteRider.dart';
import 'package:rollingdelivery/pages/OrderPage.dart';

import 'package:rollingdelivery/color.dart' as color;

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MainPage(),
  ));
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool status1 = true;
  int _currentIndex = 0;
  List<Widget> _children = [];
  List<Widget> _appBars = [];

  @override
  void initState() {
    _children.add(HomePage());
    _children.add(OrderPage());
    _children.add(favoriteRider());
    _children.add(profilePage());
    _appBars.add(_buildAppBar());
    _appBars.add(_buildAppBarOne("Orders"));
    _appBars.add(_buildAppBarOne("Favorite Riders"));
    _appBars.add(_buildAppBarOne("Settings"));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: _appBars[_currentIndex],
      body: _children[_currentIndex],
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildAppBar() {
    return AppBar(
      elevation: 0,
      title: Text('Rolling Delivery',
          style: GoogleFonts.poppins(
              textStyle: TextStyle(fontWeight: FontWeight.w500))),
      actions: [
        IconButton(
          icon: FaIcon(
            FontAwesomeIcons.bell,
            size: 20,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: FaIcon(
            FontAwesomeIcons.solidUserCircle,
            size: 20,
          ),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _buildAppBarOne(String title) {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: color.primary,
      title: Text(title,
          style: GoogleFonts.poppins(
              textStyle: TextStyle(fontWeight: FontWeight.w500))),
    );
  }

  BottomNavigationBar _buildBottomNavigationBar() {
    return BottomNavigationBar(
      onTap: _onTabTapped,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            title: Text("Dashboard",
                style: GoogleFonts.robotoCondensed(fontSize: 16))),
        BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart),
            title: Text("Order",
                style: GoogleFonts.robotoCondensed(fontSize: 16))),
        BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_border),
            title: Text("Favorite",
                style: GoogleFonts.robotoCondensed(fontSize: 16))),
        BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text("Settings",
                style: GoogleFonts.robotoCondensed(fontSize: 16))),
      ],
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentIndex,
    );
  }

  _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
