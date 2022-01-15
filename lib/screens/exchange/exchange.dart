import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travelmigo_2021/sub_screens/SearchBar.dart';

class Xchange extends StatefulWidget {
  // const Xchange({Key? key}) : super(key: key);

  @override
  XchangeState createState() => XchangeState();
}

class XchangeState extends State<Xchange> {
  TextEditingController _left = TextEditingController();
  TextEditingController _right = TextEditingController();
  TextEditingController _nullAlert = TextEditingController();
  final int xchngRupee = 70;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: ListView(
        padding: EdgeInsets.symmetric(vertical: 20.0),
        children: <Widget>[
          //! Searchbar
          SearchBar(),

          //! add space
          SizedBox(height: 20.0),

          // // Padding(
          // //   padding: EdgeInsets.only(
          // //     left: 20.0,
          // //     // right: 120.0,
          // //   ),
          // //   child: Text(
          // //     'Convert Currencies',
          // //     style: TextStyle(
          // //       fontSize: 25.0,
          // //       fontWeight: FontWeight.bold,
          // //     ),
          // //   ),
          // // ),

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
                    text: 'Convert Currencies',
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
                      color: Theme.of(context).scaffoldBackgroundColor,
                    ),
                  ),
                ],
              ),
            ),
          ),

          //! add space
          SizedBox(height: 15.0),

          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 0.0,
              horizontal: 20.0,
            ),
            child: Row(
              children: <Widget>[
                //! Convertor
                //^ currency A
                Flexible(
                  child: TextFormField(
                    // onChanged: (text) {
                    //   print('First text field: $text');
                    // },

                    onTap: () {
                      FocusScopeNode currentFocus = FocusScope.of(context);

                      if (!currentFocus.hasPrimaryFocus) {
                        currentFocus.unfocus();
                      }
                    },

                    controller: _left,
                    keyboardType: TextInputType.number,

                    decoration: InputDecoration(
                      labelText: 'Rupees',
                      hintText: 'Start typing or tap to close',
                      // fillColor: Colors.grey,
                      // borderRadius: BorderRadius.circular(8.0),
                      hintStyle: TextStyle(
                        fontSize: 10.0,
                      ),

                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        // borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2.0,
                        ),
                      ),

                      // focusColor: Colors.grey[200],
                      focusedBorder: OutlineInputBorder(
                        gapPadding: 10.0,
                        borderRadius: BorderRadius.circular(5.0),
                        // borderSide: BorderSide(width: 1, color: Colors.black),
                        borderSide: BorderSide(
                          // color: Colors.grey[900],
                          color: Color.fromRGBO(85, 85, 85, 1.0),
                          width: 1.0,
                        ),
                      ),
                    ),

                    // validator: (String? value) {
                    //   return (value != null && value.contains('@'))
                    //       ? 'Do not use the @ char.'
                    //       : null;
                    // },
                  ),
                ),

                //! add space
                SizedBox(width: 15.0),

                Icon(FontAwesomeIcons.exchangeAlt),

                //! add space
                SizedBox(width: 15.0),

                //^ currency B
                Flexible(
                  child: TextFormField(
                    onTap: () {
                      FocusScopeNode currentFocus = FocusScope.of(context);

                      if (!currentFocus.hasPrimaryFocus) {
                        currentFocus.unfocus();
                      }
                    },
                    controller: _right,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Dollar',
                      hintText: 'Start typing or tap to close',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 2.0,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        gapPadding: 10.0,
                        borderRadius: BorderRadius.circular(5.0),
                        // borderSide: BorderSide(width: 1, color: Colors.black),
                        borderSide: BorderSide(
                          // color: Colors.grey[900],
                          color: Color.fromRGBO(85, 85, 85, 1.0),
                          width: 1.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 5.0),

          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              _nullAlert.text,
              style: TextStyle(
                color: Colors.redAccent[700],
              ),
            ),
          ),

          SizedBox(
            height: 40.0,
          ),

          //!Go/Clear
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //! Go
              ElevatedButton(
                onPressed: () {
                  // print(_left.text + " " + _right.text);
                  if (_left.text == "" && _right.text == "") {
                    print("Enter both!");
                    _nullAlert.text = "Enter either of the two";
                  } else if (_right.text == "") {
                    print(_left.text);
                    double _leftint = double.parse(_left.text);
                    // print(_leftint * 0.013);
                    _leftint = _leftint * 0.014285;
                    _right.text = _leftint.toString();
                    print(_right.text);
                    _nullAlert.text = "";
                  } else if (_left.text == "") {
                    print(_right.text);
                    double _rightint = double.parse(_right.text);
                    // print(_rightint * 75.5);
                    _rightint = _rightint * 70.0;
                    _left.text = _rightint.toString();
                    print(_left.text);
                    _nullAlert.text = "";
                  }
                },
                child: Text('Go'),
              ),

              SizedBox(
                width: 20.0,
              ),

              //! Clear
              ElevatedButton(
                onPressed: () {
                  // print(_left.text + " " + _right.text);
                  if (_left.text != "" && _right.text != "") {
                    _left.text = "";
                    _right.text = "";
                  } else if (_right.text != "") {
                    _right.text = "";
                  } else if (_left.text != "") {
                    _left.text = "";
                  }
                },
                child: Text('Clear'),
              ),
            ],
          ),

          SizedBox(
            height: 40.0,
          ),

          Center(child: Text('1 Dollar = $xchngRupee Rupees')),
        ],
      ),
    );
  }
}
