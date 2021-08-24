import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travelmigo_2021/screens/exchange/exchange.dart';
import 'package:travelmigo_2021/screens/home/home.dart';
import 'package:travelmigo_2021/screens/profile/profile.dart';

class NavBase extends StatefulWidget {
  // const NavBase({Key? key}) : super(key: key);

  @override
  _NavBaseState createState() => _NavBaseState();
}

class _NavBaseState extends State<NavBase> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Home(),
    Xchange(),
    Text(
      'Laws',
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    ),
    Profile(),
    // Text(
    //   'Profile',
    //   style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    // ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    //   return Container(
    //     child: Text('NavBase'),
    //   );
    // }
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,

      //! no appbar
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0.0),
        child: AppBar(
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        ),
      ),

      body: SafeArea(
        child: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),

      //! Bottom NavBar
      bottomNavigationBar: BottomNavigationBar(
        //? Properties + Defaults
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        // iconSize: 30,
        type: BottomNavigationBarType.shifting,
        // backgroundColor: Color.fromRGBO(255, 255, 255, 0.5),
        // backgroundColor: Gradient,

        // mouseCursor: MouseCursor,

        //? Selection properties
        // selectedFontSize: 30,
        selectedIconTheme: IconThemeData(
          size: 40,
          color: Theme.of(context).accentColor,
        ),
        // selectedItemColor: ,
        // selectedLabelStyle: TextStyle(
        //   // color: Color.fromRGBO(0, 0, 0, 1.0),
        //   color: Colors.black,
        // ),
        showSelectedLabels: false,

        //? Unselection properties
        // unselectedFontSize: 30,
        unselectedIconTheme: IconThemeData(
          size: 30,
          color: Color.fromRGBO(100, 100, 100, 1),
        ),
        // unselectedItemColor: ,
        // unselectedLabelStyle: TextStyle(
        //   color: Color.fromRGBO(0, 0, 0, 1.0),
        // ),
        showUnselectedLabels: false,

        //? List of icons
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.home),
            label: ('Home'),
            // backgroundColor: Color.fromRGBO(255, 255, 255, 1),
            backgroundColor:
                Theme.of(context).bottomNavigationBarTheme.backgroundColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.moneyBillWave),
            label: ('Exchange'),
            // backgroundColor: Color.fromRGBO(255, 255, 255, 1),
            backgroundColor:
                Theme.of(context).bottomNavigationBarTheme.backgroundColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.balanceScale),
            label: ('Laws'),
            // backgroundColor: Color.fromRGBO(255, 255, 255, 1),
            backgroundColor:
                Theme.of(context).bottomNavigationBarTheme.backgroundColor,
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.user),
            label: ('Profile'),
            // backgroundColor: Color.fromRGBO(255, 255, 255, 1),
            backgroundColor:
                Theme.of(context).bottomNavigationBarTheme.backgroundColor,
          ),
        ],
      ),
    );
  }
}
