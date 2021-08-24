import 'package:flutter/material.dart';
import 'package:travelmigo_2021/screens/authenticate/log_in.dart';
// import 'package:travelapp_project/screens/authenticate/sign_up.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  @override
  Widget build(BuildContext context) {
    return LogIn();
  }
}
