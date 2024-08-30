// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:notyourapp/hexa.dart';

class ArticleWidget extends StatefulWidget {
  @override
  State<ArticleWidget> createState() => _ArticleWidgetState();
}

class _ArticleWidgetState extends State<ArticleWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.blueGrey,
      ),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(20, 20, 40, 20),
            padding: EdgeInsets.all(0.0),
            height: 130.0,
            width: 130.0,
            child: Card(
              elevation: 10.0,
              color: Colors.grey,
            ),
          ),
          Column(
            children: <Widget>[
              Text(
                'Title',
                style: TextStyle(
                  fontSize: 30.0,
                  color: HexColor('#fe2a00'),
                ),
              ),
              Text(
                '...Discription...',
                style: TextStyle(
                  fontSize: 15.0,
                  color: HexColor('#fe2a00'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
