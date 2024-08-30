// ignore_for_file: deprecated_member_use
import 'package:notyourapp/Screens/website.dart';
import 'package:flutter/material.dart';
import 'package:notyourapp/hexa.dart';

class Visit extends StatefulWidget {
  const Visit({Key? key}) : super(key: key);

  @override
  State<Visit> createState() => _VisitState();
}

class _VisitState extends State<Visit> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(0.0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: HexColor("#fe2a00"),
      ),
      child: RaisedButton(
        elevation: 0.0,
        padding: const EdgeInsets.all(0.0),
        color: HexColor("#fe2a00"),
        highlightColor: HexColor("#fe2a00"),
        focusColor: HexColor("#fe2a00"),
        splashColor: HexColor("#fe2a00"),
        child: const Text(
          'Visit Our Website',
        ),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const Website(),
            ),
          );
        },
      ),
    );
  }
}
