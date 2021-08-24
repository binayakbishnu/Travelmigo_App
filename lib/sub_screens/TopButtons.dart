import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TopButtons extends StatefulWidget {
  // const TopButtons({Key? key}) : super(key: key);

  @override
  _TopButtonsState createState() => _TopButtonsState();
}

class _TopButtonsState extends State<TopButtons> {
  int _activeIcon = 0;

  List<IconData> topicons = [
    FontAwesomeIcons.city,
    // FontAwesomeIcons.building,
    // FontAwesomeIcons.yahoo,
    FontAwesomeIcons.coins,
    FontAwesomeIcons.plane,
    FontAwesomeIcons.walking,
    // FontAwesomeIcons.biking,
    // FontAwesomeIcons.balanceScale,
    // FontAwesomeIcons.moneyBillWave,
  ];

  Widget _buildTopIcons(int index) {
    return GestureDetector(
      onTap: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => ThrillsScroll()),
        // );

        setState(() {
          _activeIcon = index;
          //! _activeIcon assigned with index
          //? for asigning active colour
        });
        print(_activeIcon);
      },
      child: Container(
        //?Big circle
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
          // color: Theme.of(context).primaryColor,
          // color: _activeIcon == index ? Theme.of(context).accentColor : Colors.grey[350],

          //! active/inactive colouring
          color: _activeIcon == index
              ? Theme.of(context).primaryColor
              : Color.fromRGBO(190, 190, 190, 1.0),
          borderRadius: BorderRadius.circular(30.0),
        ),

        //? Main icon
        child: Icon(
          topicons[index],
          // color: Colors.blueGrey[500],
          // color: Theme.of(context).accentColor,
          //! active/inactive colouring
          color: _activeIcon == index
              ? Theme.of(context).accentColor
              : Color.fromRGBO(100, 100, 100, 1.0),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,

      // children: <Widget>[
      //   _buildTopIcons(0),
      //   _buildTopIcons(1),
      //   _buildTopIcons(2),
      //   _buildTopIcons(3),
      // ],

      children: topicons
          .asMap() //? mapping to that new members dynamically added
          .entries
          .map((MapEntry map) => _buildTopIcons(map.key)) //? map.key is index
          //? iterates whole list to create map
          .toList(), //? need to convert map to list since children is a list
    );
  }
}
