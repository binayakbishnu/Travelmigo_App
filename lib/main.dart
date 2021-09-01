import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:travelmigo_2021/screens/wrapper.dart';

// void main() {
//   runApp(MyApp());
// }
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   // await Firebase.initializeApp();
//   runApp(Portal());
// }

// class Portal extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//       //* Initialize FlutterFire
//       future: Firebase.initializeApp(),
//       builder: (context, snapshot) {
//         //// Check for errors
//         if (snapshot.hasError) {
//           return SomethingWentWrong();
//         }

//         //// Once complete, show your application
//         if (snapshot.connectionState == ConnectionState.done) {
//           return MyApp();
//         }

//         //// Otherwise, show something whilst waiting for initialization to complete
//         return Loading();
//       },
//     );
//   }
// }

// class SomethingWentWrong extends StatelessWidget {
//   // const SomethingWentWrong({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Container(
//           child: Text(
//             '!!!Error!!!',
//             style: TextStyle(
//               color: Colors.red,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class Loading extends StatelessWidget {
//   // const Loading({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Container(
//           child: Text('App is loading...'),
//         ),
//       ),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.teal[300],
        accentColor: Colors.teal[700],
        // scaffoldBackgroundColor: Colors.grey[200],
        scaffoldBackgroundColor: Colors.grey[200],
        //! inner shadow colour
        shadowColor: Colors.teal[700],
        appBarTheme: AppBarTheme(backgroundColor: Colors.white),

        // primaryColor: Color.fromRGBO(35, 35, 35, 1.0),
        // accentColor: Color.fromRGBO(239, 39, 26, 1.0),
        splashColor: Color.fromRGBO(0, 150, 180, 0.6),
        // scaffoldBackgroundColor: Color.fromRGBO(97, 97, 97, 1.0),
        // scaffoldBackgroundColor: Color.fromRGBO(150, 150, 150, 1.0),
        // bottomNavigationBarTheme: BottomNavigationBarTheme(data: data, child: child),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          // backgroundColor: Color.fromRGBO(35, 35, 35, 1.0),
          backgroundColor: Colors.white,
        ),

        // Color.fromRGBO(239, 39, 26, 1.0),
        // Color.fromRGBO(19, 19, 19, 1.0),
        // Color.fromRGBO(255, 255, 255, 1.0),
        // Color.fromRGBO(0, 140, 140, 1.0),
        // Color.fromRGBO(5, 206, 145, 1.0),
        // Color.fromRGBO(30, 165, 252, 1.0),
        // Color.fromRGBO(0, 91, 255, 1.0),
        // Color.fromRGBO(52, 86, 255, 1.0),
        // Color.fromRGBO(255, 49, 82, 1.0),
        // Color.fromRGBO(7, 9, 40, 1.0),
        // Color.fromRGBO(143, 0, 255, 1.0),
        /* 
        Color.fromRGBO(23, 24, 31, 1.0),
        Color.fromRGBO(108, 114, 203, 1.0),
        Color.fromRGBO(203, 105, 193, 1.0),
        Color.fromRGBO(238, 237, 240, 1.0),
        */
        // Color.fromRGBO(253, 121, 79, 1.0),
        // Color.fromRGBO(203, 118, 93, 1.0),
        // Color.fromRGBO(63, 138, 137, 1.0),
      ),
      home: Wrapper(),
    );
  }
}
