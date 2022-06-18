import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:travelapp_project/screens/authenticate/log_in.dart';
import 'package:travelmigo_2021/screens/navigator.dart';
import 'package:travelmigo_2021/services/auth.dart';
// import 'package:travelmigo_2021/screens/loading.dart';

class SignUpForm extends StatefulWidget {
  // const SignUpForm({ Key? key }) : super(key: key);

  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  //! to capture input
  TextEditingController _fname = TextEditingController();
  TextEditingController _lname = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _cpassword = TextEditingController();
  // bool loading = false;

  @override
  Widget build(BuildContext context) {
    // return loading
    //     ? LoadingScreen()
    //     : Column(
    return Column(
      children: <Widget>[
        //! Name
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            children: <Widget>[
              Flexible(
                child: TextFormField(
                  onTap: () {
                    FocusScopeNode currentFocus = FocusScope.of(context);
                    if (!currentFocus.hasPrimaryFocus) {
                      currentFocus.unfocus();
                    }
                  },
                  controller: _fname,
                  obscureText: false,
                  //^^* true will hide prev characters while typing new ones
                  decoration: InputDecoration(
                    labelText: 'First Name',
                    hintText: 'Tap to close',
                    prefixIcon: Icon(
                      FontAwesomeIcons.user,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              ),

              SizedBox(width: 10.0),

              //! Last name
              Flexible(
                child: TextFormField(
                  onTap: () {
                    FocusScopeNode currentFocus = FocusScope.of(context);
                    if (!currentFocus.hasPrimaryFocus) {
                      currentFocus.unfocus();
                    }
                  },
                  controller: _lname,
                  obscureText: false,
                  //^^* hide prev characters while typing new ones
                  decoration: InputDecoration(
                    labelText: 'Last Name',
                    hintText: 'Tap to close',
                    prefixIcon: Icon(
                      FontAwesomeIcons.user,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        SizedBox(height: 20.0),

        //! Email
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: TextFormField(
            keyboardType: TextInputType.emailAddress,
            // onChanged: (value) {
            //   setState(() {
            //     _email = value as TextEditingController;
            //   });
            // },
            onTap: () {
              FocusScopeNode currentFocus = FocusScope.of(context);
              if (!currentFocus.hasPrimaryFocus) {
                currentFocus.unfocus();
              }
            },
            controller: _email,
            obscureText: false,
            //^^* true will hide prev characters while typing new ones
            decoration: InputDecoration(
              labelText: 'Email',
              hintText: 'example@domain.com (Tap to close)',
              prefixIcon: Icon(
                FontAwesomeIcons.envelope,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ),

        SizedBox(height: 20.0),

        //! Password
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: TextFormField(
            // onChanged: (value) {
            //   setState(() {
            //     _email = value as TextEditingController;
            //   });
            // },
            onTap: () {
              FocusScopeNode currentFocus = FocusScope.of(context);
              if (!currentFocus.hasPrimaryFocus) {
                currentFocus.unfocus();
              }
            },
            controller: _password,
            obscureText: true,
            //* hide prev characters while typing new ones
            decoration: InputDecoration(
              labelText: 'Password',
              hintText: 'Tap to close',
              prefixIcon: Icon(
                FontAwesomeIcons.dotCircle,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ),

        SizedBox(height: 20.0),

        //! Confirm password
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: TextFormField(
            onTap: () {
              FocusScopeNode currentFocus = FocusScope.of(context);
              if (!currentFocus.hasPrimaryFocus) {
                currentFocus.unfocus();
              }
            },
            controller: _cpassword,
            obscureText: true,
            //* hide prev characters while typing new ones
            decoration: InputDecoration(
              labelText: 'Confirm Password',
              hintText: 'Tap to close',
              prefixIcon: Icon(
                FontAwesomeIcons.dotCircle,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ),

        SizedBox(height: 25.0),

        //! SignUp Button
        Container(
          width: MediaQuery.of(context).size.width / 2.6,
          height: 38,
          child: ElevatedButton(
            // onPressed: () {
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(builder: (context) => NavBase()),
            //   );
            // },
            onPressed: () async {
              // setState(() {
              //   loading = true;
              // });
              bool shouldNavigate = await signUp(_email.text, _password.text);
              if (shouldNavigate) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NavBase()),
                );
              } else {
                // setState(() {
                //   loading = false;
                // });
              }
            },

            style: ButtonStyle(
              // elevation: 0,
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            child: Text(
              'Register',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),

        SizedBox(height: 25.0),

        //! SignUp ButtonText
        Padding(
          padding: EdgeInsets.only(bottom: 30.0),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => LogIn()),
              // );
            },
            child: RichText(
              text: TextSpan(
                //? default styling...
                // text: 'Default',
                style: TextStyle(color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Already have an account? ',
                  ),
                  TextSpan(
                    text: 'Login',
                    style: TextStyle(
                      color: Color.fromRGBO(0, 0, 225, 1.0),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
