import 'package:flutter/material.dart';

class LogSignText extends StatelessWidget {
  // const LogSignText({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30.0),
      child: RichText(
        text: TextSpan(
          //? default styling...
          // text: 'Default',
          style: TextStyle(color: Colors.black),
          children: <TextSpan>[
            TextSpan(
              text: ' Travelmigo!',
              style: TextStyle(
                fontFamily: 'Lobster',
                fontSize: 40.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
