// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:notyourapp/Screens/main_screen.dart';
import 'package:notyourapp/Screens/test.dart';
import 'package:notyourapp/Screens/website.dart';
import 'package:notyourapp/Widgets/article_widget.dart';
import 'package:notyourapp/Widgets/socialwidget.dart';
import 'package:notyourapp/Widgets/visit.dart';
import 'package:notyourapp/hexa.dart';

class SocialPage extends StatefulWidget {
  const SocialPage({Key? key}) : super(key: key);

  @override
  State<SocialPage> createState() => _SocialPageState();
}

class _SocialPageState extends State<SocialPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Text('   '),
              margin: EdgeInsets.all(10.0),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(40.0, 50.0, 10.0, 0.0),
              child: Row(
                children: [
                  Text(
                    'Social',
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
            ),
            SocialMedia(),
            Visit(),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 20, 10, 10),
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.blueGrey,
              ),
              child: Row(
                children: [
                  Text(
                    'Instagram',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => Test(),
                        ),
                      );
                    },
                    child: Text(
                      'Follow',
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
              child: Column(
                children: [
                  ArticleWidget(),
                  ArticleWidget(),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10, 20, 10, 10),
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.blueGrey,
              ),
              child: Row(
                children: [
                  Text(
                    'Twitter',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const Website(),
                        ),
                      );
                    },
                    child: Text(
                      'Follow',
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
              child: Column(
                children: [
                  ArticleWidget(),
                  ArticleWidget(),
                  ArticleWidget(),
                  ArticleWidget(),
                  ArticleWidget(),
                  ArticleWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
