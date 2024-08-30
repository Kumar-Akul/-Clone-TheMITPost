// ignore_for_file: use_key_in_widget_constructors, import_of_legacy_library_into_null_safe, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notyourapp/hexa.dart';

class SocialMedia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        border: Border.all(),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Insta
          Instagram(),
          //FaceBook
          Face(),
          In(),
          Twit(),
        ],
      ),
    );
  }
}

class Instagram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      //alignment: Alignment.centerLeft,
      onPressed: () {
        //Navigator.of(context).pop();
      },
      icon: Icon(FontAwesomeIcons.instagram),
    );
  }
}

class Face extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        //Navigator.of(context).pop();
      },
      icon: Icon(FontAwesomeIcons.facebookF),
    );
  }
}

class In extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        // Navigator.of(context).pop();
      },
      icon: const Icon(FontAwesomeIcons.linkedinIn),
    );
  }
}

class Twit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        //Navigator.of(context).pop();
      },
      icon: Icon(FontAwesomeIcons.twitter),
    );
  }
}

class Insta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25.0),
      color: HexColor("#17181c"),
      child: Image.asset(
        'Assets/InstaKiss.png',
        height: 40.0,
        width: 40.0,
      ),
    );
  }
}

class FaceBook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25.0),
      color: HexColor("#17181c"),
      child: Image.asset(
        'Assets/Social/facebook.png',
        height: 40.0,
        width: 40.0,
      ),
    );
  }
}

class Twitter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25.0),
      color: HexColor("#17181c"),
      child: Image.asset(
        'Assets/Social/twitter.png',
        height: 40.0,
        width: 40.0,
      ),
    );
  }
}

class LinkedIN extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25.0),
      color: HexColor("#17181c"),
      child: Image.asset(
        'Assets/Social/linkedin.png',
        filterQuality: FilterQuality.high,
        height: 40.0,
        width: 40.0,
      ),
    );
  }
}
