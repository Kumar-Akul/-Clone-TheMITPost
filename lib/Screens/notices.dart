// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:notyourapp/Screens/main_screen.dart';
import 'package:notyourapp/hexa.dart';

class Notices_page extends StatefulWidget {
  const Notices_page({Key? key}) : super(key: key);

  @override
  State<Notices_page> createState() => _Notices_pageState();
}

class _Notices_pageState extends State<Notices_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          margin: const EdgeInsets.fromLTRB(40.0, 50.0, 10.0, 0.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text('   '),
                margin: EdgeInsets.all(10.0),
              ),
              Row(
                children: [
                  Text(
                    'Notices',
                    style: TextStyle(
                      fontSize: 50.0,
                      color: HexColor('#fe2a00'),
                    ),
                  ),
                  IconButton(
                    enableFeedback: true,
                    splashRadius: 1.0,
                    splashColor: HexColor('#17181c'),
                    padding: const EdgeInsets.fromLTRB(140.0, 0, 0, 0),
                    alignment: Alignment.centerRight,
                    icon: const Icon(
                      Icons.dashboard,
                      color: Colors.white,
                      size: 30.0,
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const MyApp(),
                        ),
                      );
                    },
                  ),
                ],
              ),
              Container(
                child: Text('   '),
                margin: EdgeInsets.all(20.0),
              ),
              //columnbody
            ],
          ),
        ),
      ),
    );
  }
}
