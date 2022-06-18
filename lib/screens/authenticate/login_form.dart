import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travelmigo_2021/screens/authenticate/sign_up.dart';
import 'package:travelmigo_2021/screens/navigator.dart';
import 'package:travelmigo_2021/services/auth.dart';
// import 'package:travelmigo_2021/screens/loading.dart';

class LogInForm extends StatefulWidget {
  // const LogInForm({ Key? key }) : super(key: key);

  @override
  _LogInFormState createState() => _LogInFormState();
}

class _LogInFormState extends State<LogInForm> {
  //! to capture input
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    // return loading
    //     ? LoadingScreen()
    //     : Column(
    return Column(
      children: <Widget>[
        //! Email
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: TextFormField(
            //? to add special keyboard type for email
            keyboardType: TextInputType.emailAddress,
            onTap: () {
              FocusScopeNode currentFocus = FocusScope.of(context);

              if (!currentFocus.hasPrimaryFocus) {
                currentFocus.unfocus();
              }
            },
            // onChanged: (value) {
            //   setState(() {
            //     _email = value as TextEditingController;
            //   });
            // },
            controller: _email,
            obscureText: false,
            //* hide prev characters while typing new ones
            decoration: InputDecoration(
              labelText: 'Email',
              hintText: 'example@domain.com',
              prefixIcon: Visibility(
                child: Icon(
                  FontAwesomeIcons.envelope,
                  color: Theme.of(context).primaryColor,
                ),
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
            //     _password = value as TextEditingController;
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
              prefixIcon: Visibility(
                child: Icon(
                  FontAwesomeIcons.dotCircle,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          ),
        ),

        SizedBox(
          height: 20.0,
        ),

        //! Login Button
        Container(
          width: MediaQuery.of(context).size.width / 2.6,
          height: 38,
          child: ElevatedButton(
            // onPressed: () {
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(builder: (context) => NavigationWid()),
            //   );
            // },
            onPressed: () async {
              setState(() {
                loading = true;
              });
              bool shouldNavigate = await logIn(_email.text, _password.text);
              if (shouldNavigate) {
                print('Success');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NavBase()),
                );
              } else {
                // setState(() {
                //   loading = false;
                // });
                print('Wrong credentials');
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
              'Login',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),

        //!separate
        SizedBox(height: 25.0),

        //! SignUp ButtonText
        Padding(
          padding: EdgeInsets.only(bottom: 30.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignUp()),
              );
            },
            child: RichText(
              text: TextSpan(
                //? default styling...
                // text: 'Default',
                style: TextStyle(color: Colors.black),
                children: <TextSpan>[
                  TextSpan(
                    text: 'New Here? ',
                  ),
                  TextSpan(
                    text: 'Signup',
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
