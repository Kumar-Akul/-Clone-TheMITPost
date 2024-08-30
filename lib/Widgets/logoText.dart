// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:notyourapp/hexa.dart';

class LogoText extends StatefulWidget {
  const LogoText({Key? key}) : super(key: key);

  @override
  State<LogoText> createState() => _LogoTextState();
}

class _LogoTextState extends State<LogoText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Text(
        'THE MIT POST',
        style: TextStyle(
          fontSize: 45.0,
          fontWeight: FontWeight.w600,
          color: HexColor("#eb683b"),
        ),
        textDirection: TextDirection.ltr,
      ),
    );
  }
}
