import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travelmigo_2021/screens/authenticate/log_in.dart';

class AdminLogIn extends StatefulWidget {
  // const AdminLogIn({ Key? key }) : super(key: key);

  @override
  _AdminLogInState createState() => _AdminLogInState();
}

class _AdminLogInState extends State<AdminLogIn> {
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

      body: Center(
        child: Container(
          child: Text(
            'Admin Login',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Toggle User Login');
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LogIn()),
          );
        },
        child: Icon(
          FontAwesomeIcons.users,
        ),
      ),
    );
  }
}
