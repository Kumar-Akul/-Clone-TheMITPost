// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, import_of_legacy_library_into_null_safe, unused_import

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notyourapp/Widgets/copyright.dart';
import 'package:notyourapp/Widgets/logo.dart';
import 'package:notyourapp/Widgets/logoText.dart';
import 'package:notyourapp/Widgets/socialwidget.dart';
import 'package:notyourapp/Widgets/standard.dart';
import 'package:notyourapp/Widgets/visit.dart';
import 'package:notyourapp/Widgets/row1.dart';
import 'package:notyourapp/hexa.dart';

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'HELLO',
        ),
      ),
      body: Container(
        color: HexColor("#17181c"),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Logo(),
              LogoText(),
              SocialMedia(),
              Visit(),
              Standard(),
              Row1(),
              CopyRight(),
            ],
          ),
        ),
      ),
    );
  }
}
