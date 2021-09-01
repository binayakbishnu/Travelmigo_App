import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travelmigo_2021/data_sources/places.dart';
import 'package:travelmigo_2021/data_sources/places_details.dart';
import 'package:travelmigo_2021/sub_screens/SearchBar.dart';

class PlacesDetailsPage extends StatefulWidget {
  // const PlacesDetailsPage({ Key? key }) : super(key: key);

  final Places placed;

  PlacesDetailsPage({
    Key key,
    this.placed,
  }) : super(key: key);

  @override
  _PlacesDetailsPageState createState() => _PlacesDetailsPageState();
}

class _PlacesDetailsPageState extends State<PlacesDetailsPage> {
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

      body: ListView(
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
                    text: widget.placed.city,
                    //!!
                    style: TextStyle(
                      // fontFamily: 'Lobster',
                      // fontSize: 35.0,
                      fontFamily: 'Lobster_Two',
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
          ),

          //! add space
          // SizedBox(height: 20.0),

          // Image(
          //   height: 195.0,
          //   width: 195.0,
          //   image: AssetImage(widget.placed.details[0].detailsPic),
          //   fit: BoxFit.cover,
          //   //? to stretch image to fit whole box
          // ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: ListView.builder(
              itemCount: widget.placed.details.length,
              shrinkWrap: true,
              physics: ScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                PlacesDetails placedata = widget.placed.details[index];
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      placedata.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                      ),
                    ),
                    // Text(placedata.rate.toString()),
                    Image(
                      image: AssetImage(placedata.detailsPic),
                      fit: BoxFit.cover,
                      //? to stretch image to fit whole box
                    ),
                  ],
                );
              },
            ),
          ),
          // SizedBox(height: 20.0),
        ],
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
