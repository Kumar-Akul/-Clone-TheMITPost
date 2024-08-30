// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notyourapp/hexa.dart';

class Row1 extends StatelessWidget {
  Row1({Key? key}) : super(key: key);

  final shape = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10.0),
  );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //rectitude
        Container(
          height: 100.0,
          width: MediaQuery.of(context).size.width * 0.27,
          margin: EdgeInsets.only(bottom: 5.0, top: 5.0),
          padding: EdgeInsets.all(0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
              color: Colors.white30,
              width: 0.5,
            ),
            color: HexColor('#302f34'),
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0.0,
              shape: shape,
              primary: HexColor('#302f34'),
              padding: EdgeInsets.all(0.0),
            ),
            onPressed: () {
              //currentTheme.toggleTheme();
            },
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(12.0),
                  padding: EdgeInsets.all(0),
                  alignment: Alignment.topRight,
                  child: Icon(
                    FontAwesomeIcons.lightbulb,
                    color: Colors.white,
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(0),
                  margin: EdgeInsets.all(12.0),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'LIGHT\nMODE',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 100.0,
          width: MediaQuery.of(context).size.width * 0.27,
          margin: EdgeInsets.only(bottom: 5.0, top: 5.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
              color: Colors.white30,
              width: 0.5,
            ),
          ),
          child: ElevatedButton(
            onPressed: () {},
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(12.0),
                  alignment: Alignment.topRight,
                  child: Icon(
                    FontAwesomeIcons.calendar,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(12.0),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'ACADEMIC\nCALENDER',
                    // style: TextStyle(
                    //   color: Colors.white,
                    //   fontSize: 15.0,
                    //   fontWeight: FontWeight.w700,
                    // ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 100.0,
          width: MediaQuery.of(context).size.width * 0.27,
          margin: EdgeInsets.only(bottom: 5.0, top: 5.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
              color: Colors.white30,
              width: 0.5,
            ),
            color: HexColor('#302f34'),
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0.0,
              shape: shape,
              primary: HexColor('#302f34'),
              padding: EdgeInsets.all(0.0),
            ),
            onPressed: () {},
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(12.0),
                  alignment: Alignment.topRight,
                  child: Icon(
                    FontAwesomeIcons.externalLinkAlt,
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(12.0),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'OUR\nWEBSITE',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
