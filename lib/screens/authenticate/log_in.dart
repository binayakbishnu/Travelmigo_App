import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travelmigo_2021/screens/authenticate/admin_login.dart';
import 'package:travelmigo_2021/screens/authenticate/login_form.dart';
import 'package:travelmigo_2021/screens/authenticate/logsign_text.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
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
      // resizeToAvoidBottomInset: false,
      //? ^Prevent shrinking due to keyboard but elements below keyboard inaccesible when keyboard present
      //? solved by using singlechildscrollview and adjusting height of container to fill total height
      body: Builder(builder: (context) {
        return SingleChildScrollView(
          // physics: NeverScrollableScrollPhysics(),
          child: SafeArea(
            child: Container(
              // height: MediaQuery.of(context).size.height - 41.0,
              height: MediaQuery.of(context).size.height -
                  Scaffold.of(context).appBarMaxHeight,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 100.0),
                child: Center(
                  child: Container(
                    // child: Text('Authenticate'),
                    // width: MediaQuery.of(context).size.width / 2,
                    width: 390,
                    // height: MediaQuery.of(context).size.height / 2,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      // backgroundBlendMode: BlendMode.luminosity,
                      borderRadius: BorderRadius.circular(10.0),
                    ),

                    child: IntrinsicHeight(
                      //^^* to restrict height of column to children
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          //! Travelmigo Text
                          LogSignText(),

                          //! LogIn form
                          LogInForm(),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Toggle Admin Login');
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AdminLogIn()),
          );
        },
        // child: Text('Hello'),
        child: Icon(
          FontAwesomeIcons.usersCog,
        ),
      ),
    );
  }
}
