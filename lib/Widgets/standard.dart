// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Standard extends StatefulWidget {
  const Standard({Key? key}) : super(key: key);

  @override
  State<Standard> createState() => _StandardState();
}

class _StandardState extends State<Standard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0),
      decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          borderRadius: BorderRadius.circular(5.0),
          border: Border.all(
            color: Colors.grey,
          )),
      height: 120.0,
      width: MediaQuery.of(context).size.width * 0.95,
      child: Stack(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Container(
            margin: EdgeInsets.only(left: 15.0),
            alignment: Alignment.centerLeft,
            child: Text(
              'THE                         ',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15.0, bottom: 10.0),
            alignment: Alignment.bottomLeft,
            child: Text(
              'STANDARD',
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 15.0, bottom: 20.0),
            alignment: Alignment.bottomRight,
            child: Image.asset(
              'Assets/Logo.jpeg',
              height: 50.0,
              width: 50.0,
            ),
          )
        ],
      ),
    );
  }
}
