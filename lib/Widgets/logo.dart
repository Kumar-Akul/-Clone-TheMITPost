// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50.0),
      child: Image(
        image: AssetImage('Assets/Logo.jpeg'),
        height: 120.0,
        width: 120.0,
      ),
    );
  }
}
