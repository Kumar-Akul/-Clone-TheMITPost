// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, file_names, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notyourapp/Theme/theme_manager.dart';
import 'package:notyourapp/Widgets/row0.dart';
import 'package:notyourapp/Widgets/row2.dart';
import 'package:notyourapp/Widgets/row3.dart';
import 'package:notyourapp/Widgets/logo.dart';
import 'package:notyourapp/Widgets/logoText.dart';
import 'package:notyourapp/Widgets/standard.dart';
import 'package:notyourapp/Widgets/visit.dart';
import 'package:notyourapp/Widgets/socialwidget.dart';
import 'package:notyourapp/hexa.dart';
import 'package:notyourapp/Widgets/copyright.dart';
import 'package:notyourapp/theme_style.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void dispose() {
    currentTheme.removeListener(() {
      setState(() {});
    });
    super.dispose();
  }

  @override
  void initState() {
    currentTheme.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  final shape = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10.0),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: currentTheme.currentTheme,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: IconButton(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.all(50.0),
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
              //Logo
              Logo(),
              //THE MIT POST
              LogoText(),
              //The Actual Body
              Column(
                children: [
                  //Visit our Website
                  Visit(),
                  //THE STANDARD
                  Standard(),
                  //Social Media
                  SocialMedia(),
                  //ROW0
                  Row0(),
                  //Row1
                  Row(
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
                            currentTheme.toggleTheme();
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
                                  FontAwesomeIcons.calendar,
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(12.0),
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  'ACADEMIC\nCALENDER',
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
                  ),
                  //sizedbox
                  SizedBox(
                    height: 10.0,
                  ),
                  //ROW2
                  Row2(),
                  SizedBox(
                    height: 20.0,
                  ),
                  //ROW3
                  Row3(),
                  //Copyright
                  CopyRight(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
