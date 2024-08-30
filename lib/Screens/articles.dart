// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, import_of_legacy_library_into_null_safe, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notyourapp/Screens/main_screen.dart';
import 'package:notyourapp/Widgets/article_widget.dart';
import 'package:notyourapp/hexa.dart';

class Articles_Page extends StatefulWidget {
  @override
  State<Articles_Page> createState() => _Articles_PageState();
}

class _Articles_PageState extends State<Articles_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          margin: EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 0.0),
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
                    'Articles',
                    style: TextStyle(
                      fontSize: 50.0,
                      color: HexColor('#fe2a00'),
                    ),
                  ),
                  IconButton(
                    enableFeedback: true,
                    splashRadius: 1.0,
                    splashColor: HexColor('#17181c'),
                    padding: EdgeInsets.fromLTRB(130.0, 0, 0, 0),
                    alignment: Alignment.centerRight,
                    icon: Icon(
                      Icons.dashboard,
                      color: Colors.white,
                      size: 30.0,
                    ),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => MyApp(),
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
              ArticleWidget(),
              ArticleWidget(),
              ArticleWidget(),
              ArticleWidget(),
              ArticleWidget(),
              ArticleWidget(),
              ArticleWidget(),
              ArticleWidget(),
              ArticleWidget(),
              ArticleWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
