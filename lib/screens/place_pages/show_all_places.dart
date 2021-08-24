import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travelmigo_2021/data_sources/places.dart';
import 'package:travelmigo_2021/screens/place_pages/details_page_places.dart';
import 'package:travelmigo_2021/sub_screens/SearchBar.dart';

class AllPlaces extends StatefulWidget {
  // const AllPlaces({ Key? key }) : super(key: key);

  @override
  _AllPlacesState createState() => _AllPlacesState();
}

class _AllPlacesState extends State<AllPlaces> {
  final _abc = 20;
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
        children: [
          SearchBar(),
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

          ListView.builder(
            itemCount: places.length,
            shrinkWrap: true,
            physics: ScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              Places place = places[index];

              //! Each card
              return GestureDetector(
                onTap: () {
                  print('${place.city}');
                  // print('${place.details[0].details_pic}');  //? debugging
                  print(index);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PlacesDetailsPage(
                        placed: place,
                      ),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.all(20.0),
                  height: 320.0 + _abc + _abc,
                  // width: 230.0,
                  // color: Colors.white,

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        // color: Color.fromRGBO(35, 35, 35, 1.0),
                        color: Colors.grey[700],
                      ),
                      BoxShadow(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        //! INNER SHADOW
                        spreadRadius: 0.0,
                        blurRadius: 10.0,
                      ),
                    ],
                  ),

                  //! Stacking text part and pic part
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      //! Text part in card
                      Positioned(
                        bottom: 8.0,
                        child: Container(
                          height: 120.0,
                          width: MediaQuery.of(context).size.width -
                              20.0 -
                              40.0 -
                              10.0,
                          decoration: BoxDecoration(
                            color: Theme.of(context).scaffoldBackgroundColor,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                // Text(places.details.length),
                                // Text(place.pic),
                                Text(
                                  '${place.details.length} places to visit',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.black,
                                    // letterSpacing: 1.0,
                                  ),
                                ),

                                //! seperator
                                SizedBox(
                                  height: 5.0,
                                ),

                                Text(
                                  place.desp,
                                  style: TextStyle(
                                    color: Colors.grey[700],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      //! Pic part
                      Container(
                        height: 250.0,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          // color: Colors.white,
                          // color: Colors.black,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0.0, 2.0),
                              blurRadius: 6.0,
                            ),
                          ],
                        ),

                        //! Stack to put image text on top of image
                        child: Stack(
                          children: <Widget>[
                            //! Image
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Theme.of(context)
                                          .scaffoldBackgroundColor,
                                      offset: const Offset(
                                        0.0,
                                        10.0,
                                      ),
                                      blurRadius: 10.0,
                                      spreadRadius: 2.0,
                                    ),
                                  ],
                                ),
                                child: Image(
                                  height: 250.0,
                                  width: MediaQuery.of(context).size.width,
                                  image: AssetImage(place.pic),
                                  fit: BoxFit.cover,
                                  //? to stretch image to fit whole 210x210 box
                                ),
                              ),
                            ),

                            //! bg for text on image
                            Container(
                              decoration: BoxDecoration(
                                //* gradient
                                gradient: LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.topCenter,
                                  stops: [0.3, 0.5],
                                  colors: [
                                    //! GRADIENT COLOURS
                                    Theme.of(context).splashColor,
                                    Color.fromRGBO(0, 0, 0, 0.0),
                                  ],
                                ),
                                //* border-radius
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              // color: Colors.teal[200],
                            ),

                            //! Text on image
                            Positioned(
                              left: 15.0,
                              bottom: 15.0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                //? Column is inside stack not Container or Row/Column
                                //? So can't use centre align in parent
                                //? Use position around child (this widget)
                                children: <Widget>[
                                  //* country
                                  Text(
                                    place.country,
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),

                                  //* city + icon
                                  Row(
                                    // mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      Icon(
                                        FontAwesomeIcons.compass,
                                        size: 15.0,
                                        color: Colors.white,
                                      ),
                                      SizedBox(width: 2.0),
                                      Text(
                                        place.city,
                                        style: TextStyle(
                                          fontSize: 15.0,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          ),
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
