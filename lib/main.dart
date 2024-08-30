// ignore_for_file: deprecated_member_use, prefer_const_constructors, unused_element, use_key_in_widget_constructors
// @dart=2.9

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notyourapp/Screens/login.dart';
import 'package:notyourapp/Screens/main_screen.dart';
import 'package:notyourapp/Screens/notices.dart';
import 'package:notyourapp/Screens/social.dart';
import 'package:notyourapp/Theme/theme_manager.dart';
import 'package:notyourapp/hexa.dart';

import 'Screens/articles.dart';

void main() {
  runApp(
    Main(),
  );
}

class Main extends StatefulWidget {
  @override
  State<Main> createState() => _MainState();
}

int pageIndex = 0;
List<Widget> pageList = <Widget>[
  Articles_Page(),
  SocialPage(),
  LogInPage(),
  MyApp(),
  Notices_page(),
];

class _MainState extends State<Main> {
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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: currentTheme.currentTheme,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: pageList[pageIndex],
        // body: PageTransitionSwitcher(),
        bottomNavigationBar: BottomNavigationBar(
          unselectedIconTheme: IconThemeData(
            color: Colors.white,
          ),
          unselectedItemColor: Colors.white,
          selectedItemColor: HexColor("#fe2a00"),
          showSelectedLabels: true,
          backgroundColor: HexColor("#17181c"),
          selectedIconTheme: IconThemeData(color: HexColor("#fe2a00")),
          currentIndex: pageIndex,
          onTap: (value) {
            setState(
              () {
                pageIndex = value;
              },
            );
          },
          type: BottomNavigationBarType.fixed,
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            BottomNavigationBarItem(
              icon: pageIndex == 0
                  ? Icon(
                      Icons.description,
                      color: mitPostOrange,
                    )
                  : Icon(
                      Icons.description_outlined,
                      color: Colors.grey,
                    ),
              label: 'Articles',
            ),
            BottomNavigationBarItem(
              icon: pageIndex == 1
                  ? Icon(
                      Icons.favorite_rounded,
                      color: mitPostOrange,
                    )
                  : Icon(
                      Icons.favorite_border_outlined,
                      color: Colors.grey,
                    ),
              label: 'Social',
            ),
            BottomNavigationBarItem(
              icon: pageIndex == 2
                  ? Icon(
                      Icons.person,
                      color: mitPostOrange,
                    )
                  : Icon(
                      Icons.person_outlined,
                      color: Colors.grey,
                    ),
              label: 'SLCM',
            ),
            BottomNavigationBarItem(
              icon: pageIndex == 3
                  ? Icon(
                      Icons.calendar_today,
                      color: mitPostOrange,
                    )
                  : Icon(
                      Icons.calendar_today_outlined,
                      color: Colors.grey,
                    ),
              label: 'Events',
            ),
            BottomNavigationBarItem(
              icon: pageIndex == 4
                  ? Icon(
                      Icons.notifications,
                      color: mitPostOrange,
                    )
                  : Icon(
                      Icons.notifications_outlined,
                      color: Colors.grey,
                    ),
              label: 'Notices',
            ),
          ],
        ),
      ),
    );
  }
}
