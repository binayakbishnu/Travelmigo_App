import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  // const SearchBar({Key? key}) : super(key: key);

  final String labels;
  final String hints;

  SearchBar({
    this.labels = "",
    this.hints = "",
  });

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 0.0,
        right: 10.0,
        bottom: 0.0,
        left: 10.0,
      ),
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

        decoration: InputDecoration(
          labelText: 'Search',
          hintText: 'Start typing or tap to close',
          // fillColor: Colors.grey,
          // borderRadius: BorderRadius.circular(8.0),

          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
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
    );
  }
}
