import 'package:flutter/material.dart';
import 'package:travelmigo_2021/screens/authenticate/logsign_text.dart';
import 'package:travelmigo_2021/screens/authenticate/signup_form.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Scaffold(
        //! no appbar
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(0.0),
          child: AppBar(
            backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          ),
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              // height: MediaQuery.of(context).size.height - 41.0,
              height: MediaQuery.of(context).size.height -
                  Scaffold.of(context).appBarMaxHeight,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
              child: Center(
                child: Container(
                  // color: Theme.of(context).scaffoldBackgroundColor,
                  // child: Text('Authenticate'),
                  // width: MediaQuery.of(context).size.width / 2,
                  width: 390,
                  // height: MediaQuery.of(context).size.height / 2,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),

                  child: IntrinsicHeight(
                    //^^* to restrict height of column to children
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        //!Travelmigo Text
                        LogSignText(),

                        //! SignUp form
                        SignUpForm(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
