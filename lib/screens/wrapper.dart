import 'package:flutter/material.dart';
import 'package:travelmigo_2021/screens/authenticate/authenticate.dart';
import 'package:travelmigo_2021/screens/navigator.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return Container(
    //   child: Text('Wrapper'),
    // );
    // return Authenticate();
    //// return Home();
    //? Now going to home == going to NavigationWid
    return NavBase();
  }
}
