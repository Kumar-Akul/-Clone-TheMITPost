// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CopyRight extends StatelessWidget {
  const CopyRight({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30.0, bottom: 50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Text(
            'Made with ❤️ By Akul Kumar',
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            'Task Phase of THE MIT POST',
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          Text(
            'App Version v1.2',
            style: TextStyle(
              fontSize: 15.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
