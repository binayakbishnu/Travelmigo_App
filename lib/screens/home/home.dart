import 'package:flutter/material.dart';
import 'package:travelmigo_2021/sub_screens/SearchBar.dart';
import 'package:travelmigo_2021/sub_screens/TopButtons.dart';
import 'package:travelmigo_2021/sub_screens/PlacesScroll.dart';
import 'package:travelmigo_2021/sub_screens/ThrillsScroll.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: ListView(
        padding: EdgeInsets.symmetric(vertical: 20.0),
        children: <Widget>[
          //! Search Bar
          SearchBar(),

          //! Just debugging
          // RaisedButton(
          //   onPressed: () {
          //     Navigator.pop(context);
          //   },
          //   child: Icon(FontAwesomeIcons.arrowCircleLeft),
          // ),

          //! add space
          SizedBox(height: 20.0),

          Padding(
            padding: EdgeInsets.only(
              left: 20.0,
              // right: 120.0,
            ),
            child: RichText(
              text: TextSpan(
                //? default styling...
                // text: 'Default',
                style: TextStyle(color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Welcome to',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: ' Travelmigo!',
                    style: TextStyle(
                      fontFamily: 'Lobster',
                      fontSize: 35.0,
                    ),
                  ),
                ],
              ),
            ),
          ),

          //! add space
          SizedBox(height: 20.0),

          //!Top Buttons
          TopButtons(),

          //! add space
          SizedBox(height: 20.0),

          //! Places
          PlacesScroll(),

          //! add space
          SizedBox(height: 30.0),

          //! Cheap Thrills
          ThrillsScroll(),
        ],
      ),
    );
    // Scaffold(
    //   backgroundColor: Theme.of(context).scaffoldBackgroundColor,

    //   //! transparent appbar
    //   appBar: PreferredSize(
    //     preferredSize: Size.fromHeight(0.0),
    //     child: AppBar(
    //       backgroundColor: Color.fromRGBO(0, 0, 0, 0.0),
    //     ),
    //   ),

    //   //! body
    //   body: Container(
    //     child: ListView(
    //       padding: EdgeInsets.symmetric(vertical: 20.0),
    //       children: <Widget>[
    //         //! Search Bar
    //         SearchBar(),

    //         //! add space
    //         SizedBox(height: 15.0),

    //         Padding(
    //           padding: EdgeInsets.only(
    //             left: 20.0,
    //             // right: 120.0,
    //           ),
    //           child: RichText(
    //             text: TextSpan(
    //               //? default styling...
    //               // text: 'Default',
    //               style: TextStyle(color: Colors.black),
    //               children: <TextSpan>[
    //                 TextSpan(
    //                   text: 'Welcome to',
    //                   style: TextStyle(
    //                     fontSize: 25.0,
    //                     fontWeight: FontWeight.bold,
    //                   ),
    //                 ),
    //                 TextSpan(
    //                   text: ' Travelmigo!',
    //                   style: TextStyle(
    //                     fontFamily: 'Lobster',
    //                     fontSize: 35.0,
    //                     // fontWeight: FontWeight.bold,
    //                     // fontFamily: ,
    //                   ),
    //                 ),
    //               ],
    //             ),
    //           ),
    //         ),

    //         //! add space
    //         SizedBox(height: 20.0),

    //         //!Top Buttons
    //         TopButtons(),

    //         //! add space
    //         SizedBox(height: 20.0),

    //         //! Places
    //         PlacesScroll(),

    //         //! add space
    //         SizedBox(height: 30.0),

    //         //! Cheap Thrills
    //         ThrillsScroll(),
    //       ],
    //     ),
    //   ),

    //   floatingActionButton: FloatingActionButton(
    //     onPressed: () {
    //       Navigator.push(
    //         context,
    //         MaterialPageRoute(builder: (context) => PD1()),
    //       );
    //     },
    //     child: Text('PD1'),
    //   ),
    // );
  }
}
