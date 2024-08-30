// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:notyourapp/Screens/main_screen.dart';
import 'package:notyourapp/hexa.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
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
                    'Login',
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
              //
            ],
          ),
        ),
      ),
    );
  }
}
