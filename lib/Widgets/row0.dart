// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
// import 'hexa.dart';

class Row0 extends StatelessWidget {
  const Row0({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          playList(),
          Dev(),
        ],
      ),
    );
  }
}

class playList extends StatelessWidget {
  const playList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      child: Image.asset(
        'Assets/playlist.jpg',
        // height: 135.0,
        width: 170.0,
        height: 150.0,
        // width: 190,
      ),
    );
  }
}

class Dev extends StatelessWidget {
  const Dev({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      child: Image.asset(
        'Assets/dev.jpeg',
        height: 150.0,
        width: 170,
      ),
    );
  }
}
