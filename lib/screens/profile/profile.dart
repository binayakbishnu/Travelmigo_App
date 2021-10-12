import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travelmigo_2021/sub_screens/SearchBar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'dart:ui';
//? ^for frosted glass

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final FirebaseAuth auth = FirebaseAuth.instance;

  userID() {
    final User user = auth.currentUser;
    final uid = user.email.toString();
    return uid;
    // here you write the codes to input the data into firestore
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Theme.of(context).primaryColor,
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

          //! Page title
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
                    text: 'My Profile',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: ' Travelmigo!',
                    style: TextStyle(
                      // fontFamily: 'Lobster',
                      // fontSize: 35.0,
                      fontFamily: 'Lobster_Two',
                      fontSize: 35.0,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Color.fromRGBO(0, 0, 0, 0.0),
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(
            height: 40,
          ),

          Column(
            children: <Widget>[
              //! Profile pic
              Container(
                height: 80.0,
                width: 80.0,
                decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  border: Border.all(
                    color: Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(40.0),
                ),
                child: Icon(
                  FontAwesomeIcons.user,
                  size: 32,
                ),
              ),
            ],
          ),

          SizedBox(
            height: 40,
          ),

          //! Details
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //! THE BOX
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white.withOpacity(0.5),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.0,
                    vertical: 16.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //! Name
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          RichText(
                            text: TextSpan(
                              //? default styling...
                              // text: 'Default',
                              style: TextStyle(color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'First name: ',
                                  style: TextStyle(
                                    fontFamily: 'Lobster',
                                    fontSize: 20.0,
                                    color: Colors.black,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Binayak',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(
                            width: MediaQuery.of(context).size.width / 10,
                          ),

                          RichText(
                            text: TextSpan(
                              //? default styling...
                              // text: 'Default',
                              style: TextStyle(color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Last name: ',
                                  style: TextStyle(
                                    fontFamily: 'Lobster',
                                    fontSize: 20.0,
                                    color: Colors.black,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Bishnu',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //!
                        ],
                      ),

                      SizedBox(
                        height: MediaQuery.of(context).size.height / 14,
                      ),

                      //! Email
                      RichText(
                        text: TextSpan(
                          //? default styling...
                          // text: 'Default',
                          style: TextStyle(color: Colors.black),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Email: ',
                              style: TextStyle(
                                fontFamily: 'Lobster',
                                fontSize: 20.0,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              // text: 'bishnu.binayak12@gmail.com',
                              //! email from firebase
                              // text: userID(),
                              text: 'abcd',
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        height: MediaQuery.of(context).size.height / 14,
                      ),

                      //! City, country
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          RichText(
                            text: TextSpan(
                              //? default styling...
                              // text: 'Default',
                              style: TextStyle(color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'City: ',
                                  style: TextStyle(
                                    fontFamily: 'Lobster',
                                    fontSize: 20.0,
                                    color: Colors.black,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Kolkata',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(
                            width: MediaQuery.of(context).size.width / 10,
                          ),

                          RichText(
                            text: TextSpan(
                              //? default styling...
                              // text: 'Default',
                              style: TextStyle(color: Colors.black),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'Country: ',
                                  style: TextStyle(
                                    fontFamily: 'Lobster',
                                    fontSize: 20.0,
                                    color: Colors.black,
                                  ),
                                ),
                                TextSpan(
                                  text: 'India',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          //!
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          SizedBox(
            height: 40.0,
          ),

          //! Logout
          Center(
            child: ElevatedButton(
              onPressed: () {
                print('Logged out');
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => LogIn()),
                // );
                FirebaseAuth.instance.signOut();
                // return LogIn();
              },
              child: Text('Logout'),
            ),
          ),

          // CircleAvatar(
          //   backgroundImage: Image(),
          // ),
        ],
      ),
    );
  }
}
