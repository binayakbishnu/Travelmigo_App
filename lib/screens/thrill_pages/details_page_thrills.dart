import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travelmigo_2021/data_sources/thrills.dart';
import 'package:travelmigo_2021/sub_screens/SearchBar.dart';

class ThrillsDetailsPage extends StatefulWidget {
  // const ThrillsDetailsPage({ Key? key }) : super(key: key);

  final Thrills thrilled;

  ThrillsDetailsPage({
    Key key,
    this.thrilled,
  }) : super(key: key);

  // var cityname = "";
  // ThrillsDetailsPage({this.cityname});

  @override
  _ThrillsDetailsPageState createState() => _ThrillsDetailsPageState();
}

class _ThrillsDetailsPageState extends State<ThrillsDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //! no appbar
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0.0),
        child: AppBar(
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        ),
      ),

      body: SafeArea(
        child: Container(
          child: ListView(
            padding: EdgeInsets.symmetric(vertical: 20.0),
            children: <Widget>[
              //! Search Bar
              SearchBar(),

              //! add space
              SizedBox(height: 15.0),

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
                        text: 'Welcome to ',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        //!!
                        text: widget.thrilled.destination,
                        //!!
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

              Image(
                height: 195.0,
                width: 195.0,
                image: AssetImage(widget.thrilled.details[0].detailsPic),
                fit: BoxFit.cover,
                //? to stretch image to fit whole 210x210 box
              ),
              SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(FontAwesomeIcons.arrowLeft),
      ),
    );
  }
}
