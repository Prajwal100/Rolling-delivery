import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rollingdelivery/Pages/detailPage.dart';
import 'package:rollingdelivery/color.dart' as color;

class OrderPage extends StatefulWidget {
  OrderPage({Key key}) : super(key: key);

  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 50,
          child: TabBar(
            indicator: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(6),
                  bottomRight: Radius.circular(6)),
              color: color.primary,
            ),
            controller: _tabController,
            unselectedLabelColor: color.primary,
            unselectedLabelStyle:
                GoogleFonts.robotoCondensed(textStyle: TextStyle(fontSize: 20)),
            labelStyle:
                GoogleFonts.robotoCondensed(textStyle: TextStyle(fontSize: 20)),
            tabs: [
              Tab(
                text: "ONGOING",
              ),
              Tab(
                text: "PAST ORDERS",
              ),
            ],
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
              ListView(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                    padding: const EdgeInsets.fromLTRB(18.0, 20, 18.0, 6),
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'ORDER NUMBER : 07-ABDH-DE65',
                          style: GoogleFonts.robotoCondensed(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 6.0),
                          child: Text(
                            'Your order will delivered on Saturday, 20 Feb, 2020',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 12, color: Colors.grey[500])),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(
                              text: TextSpan(
                                  text: ('ITEMS :'),
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey[500]),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: (" 2"),
                                        style: TextStyle(color: Colors.black54))
                                  ]),
                            ),
                            RichText(
                              text: TextSpan(
                                  text: ('TOTAL CHARGE:'),
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey[500]),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: (" Rs. 500"),
                                        style: TextStyle(color: Colors.black54))
                                  ]),
                            ),
                          ],
                        ),
                        Divider(
                          height: 50,
                        ),
                        Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 110,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: ExactAssetImage(
                                              'images/document.jpg'))),
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Official documents",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 4.0),
                                      child: RichText(
                                        text: TextSpan(
                                            text: ('Status :'),
                                            style: TextStyle(
                                                color: Colors.grey[500]),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: (" Urgent"),
                                                  style: TextStyle(
                                                      color: Colors.black54))
                                            ]),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 4.0),
                                      child: RichText(
                                        text: TextSpan(
                                            text: ('Ordered date :'),
                                            style: TextStyle(
                                                color: Colors.grey[500]),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: (" 20 Feb 2020"),
                                                  style: TextStyle(
                                                      color: Colors.black54))
                                            ]),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 4.0),
                                      child: RichText(
                                        text: TextSpan(
                                            text: ('Delivered By :'),
                                            style: TextStyle(
                                                color: Colors.grey[500]),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: (" Prajwal Rai"),
                                                  style: TextStyle(
                                                      color: Colors.black54))
                                            ]),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 4.0),
                                      child: RichText(
                                        text: TextSpan(
                                            text: ('Deadline :'),
                                            style: TextStyle(
                                                color: Colors.grey[500]),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: (" 24 Feb 2020"),
                                                  style: TextStyle(
                                                      color: Colors.black54))
                                            ]),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: FlatButton(
                                    onPressed: () {},
                                    child: Row(
                                      children: [
                                        FaIcon(
                                          FontAwesomeIcons.times,
                                          size: 16,
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text("CANCEL")
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: FlatButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .push(MaterialPageRoute(
                                        builder: (context) => trackPage(),
                                      ));
                                    },
                                    child: Row(
                                      children: [
                                        FaIcon(
                                          FontAwesomeIcons.searchLocation,
                                          size: 16,
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text("TRACK")
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Divider(),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 110,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: ExactAssetImage(
                                              'images/document.jpg'))),
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Official documents",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 4.0),
                                      child: RichText(
                                        text: TextSpan(
                                            text: ('Status :'),
                                            style: TextStyle(
                                                color: Colors.grey[500]),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: (" Urgent"),
                                                  style: TextStyle(
                                                      color: Colors.black54))
                                            ]),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 4.0),
                                      child: RichText(
                                        text: TextSpan(
                                            text: ('Ordered date :'),
                                            style: TextStyle(
                                                color: Colors.grey[500]),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: (" 20 Feb 2020"),
                                                  style: TextStyle(
                                                      color: Colors.black54))
                                            ]),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 4.0),
                                      child: RichText(
                                        text: TextSpan(
                                            text: ('Delivered By :'),
                                            style: TextStyle(
                                                color: Colors.grey[500]),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: (" Prajwal Rai"),
                                                  style: TextStyle(
                                                      color: Colors.black54))
                                            ]),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 4.0),
                                      child: RichText(
                                        text: TextSpan(
                                            text: ('Deadline :'),
                                            style: TextStyle(
                                                color: Colors.grey[500]),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: (" 24 Feb 2020"),
                                                  style: TextStyle(
                                                      color: Colors.black54))
                                            ]),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: FlatButton(
                                    onPressed: () {},
                                    child: Row(
                                      children: [
                                        FaIcon(
                                          FontAwesomeIcons.times,
                                          size: 16,
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text("CANCEL")
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: FlatButton(
                                    onPressed: () {},
                                    child: Row(
                                      children: [
                                        FaIcon(
                                          FontAwesomeIcons.searchLocation,
                                          size: 16,
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text("TRACK")
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                    padding: const EdgeInsets.fromLTRB(18.0, 20, 18.0, 6),
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'ORDER NUMBER : 07-ABDH-DE65',
                          style: GoogleFonts.robotoCondensed(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16)),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 6.0),
                          child: Text(
                            'Your order will delivered on Saturday, 20 Feb, 2020',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 12, color: Colors.grey[500])),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(
                              text: TextSpan(
                                  text: ('ITEMS :'),
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey[500]),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: (" 2"),
                                        style: TextStyle(color: Colors.black54))
                                  ]),
                            ),
                            RichText(
                              text: TextSpan(
                                  text: ('TOTAL CHARGE:'),
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey[500]),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: (" Rs. 500"),
                                        style: TextStyle(color: Colors.black54))
                                  ]),
                            ),
                          ],
                        ),
                        Divider(
                          height: 50,
                        ),
                        Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 110,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: ExactAssetImage(
                                              'images/document.jpg'))),
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Official documents",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 4.0),
                                      child: RichText(
                                        text: TextSpan(
                                            text: ('Status :'),
                                            style: TextStyle(
                                                color: Colors.grey[500]),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: (" Urgent"),
                                                  style: TextStyle(
                                                      color: Colors.black54))
                                            ]),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 4.0),
                                      child: RichText(
                                        text: TextSpan(
                                            text: ('Ordered date :'),
                                            style: TextStyle(
                                                color: Colors.grey[500]),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: (" 20 Feb 2020"),
                                                  style: TextStyle(
                                                      color: Colors.black54))
                                            ]),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 4.0),
                                      child: RichText(
                                        text: TextSpan(
                                            text: ('Delivered By :'),
                                            style: TextStyle(
                                                color: Colors.grey[500]),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: (" Prajwal Rai"),
                                                  style: TextStyle(
                                                      color: Colors.black54))
                                            ]),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 4.0),
                                      child: RichText(
                                        text: TextSpan(
                                            text: ('Deadline :'),
                                            style: TextStyle(
                                                color: Colors.grey[500]),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: (" 24 Feb 2020"),
                                                  style: TextStyle(
                                                      color: Colors.black54))
                                            ]),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: FlatButton(
                                    onPressed: () {},
                                    child: Row(
                                      children: [
                                        FaIcon(
                                          FontAwesomeIcons.times,
                                          size: 16,
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text("CANCEL")
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: FlatButton(
                                    onPressed: () {},
                                    child: Row(
                                      children: [
                                        FaIcon(
                                          FontAwesomeIcons.searchLocation,
                                          size: 16,
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text("TRACK")
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Divider(),
                        SizedBox(
                          height: 10,
                        ),
                        Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 110,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: ExactAssetImage(
                                              'images/document.jpg'))),
                                ),
                                SizedBox(
                                  width: 6,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Official documents",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 4.0),
                                      child: RichText(
                                        text: TextSpan(
                                            text: ('Status :'),
                                            style: TextStyle(
                                                color: Colors.grey[500]),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: (" Urgent"),
                                                  style: TextStyle(
                                                      color: Colors.black54))
                                            ]),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 4.0),
                                      child: RichText(
                                        text: TextSpan(
                                            text: ('Ordered date :'),
                                            style: TextStyle(
                                                color: Colors.grey[500]),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: (" 20 Feb 2020"),
                                                  style: TextStyle(
                                                      color: Colors.black54))
                                            ]),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 4.0),
                                      child: RichText(
                                        text: TextSpan(
                                            text: ('Delivered By :'),
                                            style: TextStyle(
                                                color: Colors.grey[500]),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: (" Prajwal Rai"),
                                                  style: TextStyle(
                                                      color: Colors.black54))
                                            ]),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 4.0),
                                      child: RichText(
                                        text: TextSpan(
                                            text: ('Deadline :'),
                                            style: TextStyle(
                                                color: Colors.grey[500]),
                                            children: <TextSpan>[
                                              TextSpan(
                                                  text: (" 24 Feb 2020"),
                                                  style: TextStyle(
                                                      color: Colors.black54))
                                            ]),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: FlatButton(
                                    onPressed: () {},
                                    child: Row(
                                      children: [
                                        FaIcon(
                                          FontAwesomeIcons.times,
                                          size: 16,
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text("CANCEL")
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: FlatButton(
                                    onPressed: () {},
                                    child: Row(
                                      children: [
                                        FaIcon(
                                          FontAwesomeIcons.searchLocation,
                                          size: 16,
                                        ),
                                        SizedBox(
                                          width: 4,
                                        ),
                                        Text("TRACK")
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ListView(
                children: [
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 18, vertical: 20),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 110,
                              width: 80,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: ExactAssetImage(
                                          'images/document.jpg'))),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Official documents",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4.0),
                                  child: RichText(
                                    text: TextSpan(
                                        text: ('Status :'),
                                        style:
                                            TextStyle(color: Colors.grey[500]),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: (" Dellivered"),
                                              style: TextStyle(
                                                  color: Colors.black54))
                                        ]),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4.0),
                                  child: RichText(
                                    text: TextSpan(
                                        text: ('Ordered date :'),
                                        style:
                                            TextStyle(color: Colors.grey[500]),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: (" 20 Feb 2020"),
                                              style: TextStyle(
                                                  color: Colors.black54))
                                        ]),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4.0),
                                  child: RichText(
                                    text: TextSpan(
                                        text: ('Delivered By :'),
                                        style:
                                            TextStyle(color: Colors.grey[500]),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: (" Prajwal Rai"),
                                              style: TextStyle(
                                                  color: Colors.black54))
                                        ]),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4.0),
                                  child: RichText(
                                    text: TextSpan(
                                        text: ('Deadline :'),
                                        style:
                                            TextStyle(color: Colors.grey[500]),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: (" 24 Feb 2020"),
                                              style: TextStyle(
                                                  color: Colors.black54))
                                        ]),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 18, vertical: 20),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 110,
                              width: 80,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: ExactAssetImage(
                                          'images/document.jpg'))),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Official documents",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4.0),
                                  child: RichText(
                                    text: TextSpan(
                                        text: ('Status :'),
                                        style:
                                            TextStyle(color: Colors.grey[500]),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: (" Cancelled"),
                                              style: TextStyle(
                                                  color: Colors.black54))
                                        ]),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4.0),
                                  child: RichText(
                                    text: TextSpan(
                                        text: ('Ordered date :'),
                                        style:
                                            TextStyle(color: Colors.grey[500]),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: (" 20 Feb 2020"),
                                              style: TextStyle(
                                                  color: Colors.black54))
                                        ]),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4.0),
                                  child: RichText(
                                    text: TextSpan(
                                        text: ('Delivered By :'),
                                        style:
                                            TextStyle(color: Colors.grey[500]),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: (" Prajwal Rai"),
                                              style: TextStyle(
                                                  color: Colors.black54))
                                        ]),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4.0),
                                  child: RichText(
                                    text: TextSpan(
                                        text: ('Deadline :'),
                                        style:
                                            TextStyle(color: Colors.grey[500]),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: (" 24 Feb 2020"),
                                              style: TextStyle(
                                                  color: Colors.black54))
                                        ]),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 18, vertical: 20),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 110,
                              width: 80,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: ExactAssetImage(
                                          'images/document.jpg'))),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Official documents",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4.0),
                                  child: RichText(
                                    text: TextSpan(
                                        text: ('Status :'),
                                        style:
                                            TextStyle(color: Colors.grey[500]),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: (" Dellivered"),
                                              style: TextStyle(
                                                  color: Colors.black54))
                                        ]),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4.0),
                                  child: RichText(
                                    text: TextSpan(
                                        text: ('Ordered date :'),
                                        style:
                                            TextStyle(color: Colors.grey[500]),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: (" 20 Feb 2020"),
                                              style: TextStyle(
                                                  color: Colors.black54))
                                        ]),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4.0),
                                  child: RichText(
                                    text: TextSpan(
                                        text: ('Delivered By :'),
                                        style:
                                            TextStyle(color: Colors.grey[500]),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: (" Prajwal Rai"),
                                              style: TextStyle(
                                                  color: Colors.black54))
                                        ]),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4.0),
                                  child: RichText(
                                    text: TextSpan(
                                        text: ('Deadline :'),
                                        style:
                                            TextStyle(color: Colors.grey[500]),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: (" 24 Feb 2020"),
                                              style: TextStyle(
                                                  color: Colors.black54))
                                        ]),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 18, vertical: 20),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 110,
                              width: 80,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: ExactAssetImage(
                                          'images/document.jpg'))),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Official documents",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4.0),
                                  child: RichText(
                                    text: TextSpan(
                                        text: ('Status :'),
                                        style:
                                            TextStyle(color: Colors.grey[500]),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: (" Cancelled"),
                                              style: TextStyle(
                                                  color: Colors.black54))
                                        ]),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4.0),
                                  child: RichText(
                                    text: TextSpan(
                                        text: ('Ordered date :'),
                                        style:
                                            TextStyle(color: Colors.grey[500]),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: (" 20 Feb 2020"),
                                              style: TextStyle(
                                                  color: Colors.black54))
                                        ]),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4.0),
                                  child: RichText(
                                    text: TextSpan(
                                        text: ('Delivered By :'),
                                        style:
                                            TextStyle(color: Colors.grey[500]),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: (" Prajwal Rai"),
                                              style: TextStyle(
                                                  color: Colors.black54))
                                        ]),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4.0),
                                  child: RichText(
                                    text: TextSpan(
                                        text: ('Deadline :'),
                                        style:
                                            TextStyle(color: Colors.grey[500]),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: (" 24 Feb 2020"),
                                              style: TextStyle(
                                                  color: Colors.black54))
                                        ]),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 18, vertical: 20),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 110,
                              width: 80,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: ExactAssetImage(
                                          'images/document.jpg'))),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Official documents",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4.0),
                                  child: RichText(
                                    text: TextSpan(
                                        text: ('Status :'),
                                        style:
                                            TextStyle(color: Colors.grey[500]),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: (" Urgent"),
                                              style: TextStyle(
                                                  color: Colors.black54))
                                        ]),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4.0),
                                  child: RichText(
                                    text: TextSpan(
                                        text: ('Ordered date :'),
                                        style:
                                            TextStyle(color: Colors.grey[500]),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: (" 20 Feb 2020"),
                                              style: TextStyle(
                                                  color: Colors.black54))
                                        ]),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4.0),
                                  child: RichText(
                                    text: TextSpan(
                                        text: ('Delivered By :'),
                                        style:
                                            TextStyle(color: Colors.grey[500]),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: (" Prajwal Rai"),
                                              style: TextStyle(
                                                  color: Colors.black54))
                                        ]),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4.0),
                                  child: RichText(
                                    text: TextSpan(
                                        text: ('Deadline :'),
                                        style:
                                            TextStyle(color: Colors.grey[500]),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: (" 24 Feb 2020"),
                                              style: TextStyle(
                                                  color: Colors.black54))
                                        ]),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 18, vertical: 20),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 110,
                              width: 80,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: ExactAssetImage(
                                          'images/document.jpg'))),
                            ),
                            SizedBox(
                              width: 6,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Official documents",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4.0),
                                  child: RichText(
                                    text: TextSpan(
                                        text: ('Status :'),
                                        style:
                                            TextStyle(color: Colors.grey[500]),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: (" Urgent"),
                                              style: TextStyle(
                                                  color: Colors.black54))
                                        ]),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4.0),
                                  child: RichText(
                                    text: TextSpan(
                                        text: ('Ordered date :'),
                                        style:
                                            TextStyle(color: Colors.grey[500]),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: (" 20 Feb 2020"),
                                              style: TextStyle(
                                                  color: Colors.black54))
                                        ]),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4.0),
                                  child: RichText(
                                    text: TextSpan(
                                        text: ('Delivered By :'),
                                        style:
                                            TextStyle(color: Colors.grey[500]),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: (" Prajwal Rai"),
                                              style: TextStyle(
                                                  color: Colors.black54))
                                        ]),
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 4.0),
                                  child: RichText(
                                    text: TextSpan(
                                        text: ('Deadline :'),
                                        style:
                                            TextStyle(color: Colors.grey[500]),
                                        children: <TextSpan>[
                                          TextSpan(
                                              text: (" 24 Feb 2020"),
                                              style: TextStyle(
                                                  color: Colors.black54))
                                        ]),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
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
