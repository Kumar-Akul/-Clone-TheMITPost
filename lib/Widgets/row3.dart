// ignore_for_file: import_of_legacy_library_into_null_safe, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Row3 extends StatelessWidget {
  const Row3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        ChangeLog(),
        Code(),
      ],
    );
  }
}

class ChangeLog extends StatefulWidget {
  const ChangeLog({Key? key}) : super(key: key);

  @override
  State<ChangeLog> createState() => _ChangeLogState();
}

final shape = RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(10.0),
);

class _ChangeLogState extends State<ChangeLog> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        maximumSize: Size(
          MediaQuery.of(context).size.width * 0.45,
          60.0,
        ),
        elevation: 0.0,
        shape: shape,
        primary: Theme.of(context).colorScheme.secondaryVariant,
        padding: EdgeInsets.all(0.0),
        textStyle: TextStyle(
          fontSize: 15.0,
          color: Colors.white,
        ),
        side: BorderSide(
          color: Colors.grey,
          width: 0.7,
        ),
      ),
      onPressed: () {
        //currentTheme.toggleTheme();
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(20.0),
            alignment: Alignment.centerRight,
            child: Text(
              'CHANGELOG',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          Container(
            margin: EdgeInsets.all(20.0),
            alignment: Alignment.centerLeft,
            child: Icon(
              FontAwesomeIcons.database,
              color: Theme.of(context).iconTheme.color,
            ),
          ),
        ],
      ),
    );
  }
}

class Code extends StatefulWidget {
  const Code({Key? key}) : super(key: key);

  @override
  State<Code> createState() => _CodeState();
}

class _CodeState extends State<Code> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        maximumSize: Size(
          MediaQuery.of(context).size.width * 0.45,
          60.0,
        ),
        elevation: 0.0,
        shape: shape,
        primary: Theme.of(context).colorScheme.secondaryVariant,
        padding: EdgeInsets.all(0.0),
        textStyle: TextStyle(
          fontSize: 15.0,
          color: Colors.white,
        ),
        side: BorderSide(
          color: Colors.grey,
          width: 0.7,
        ),
      ),
      onPressed: () {
        //currentTheme.toggleTheme();
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(20.0),
            alignment: Alignment.centerRight,
            child: Text(
              'SOURCE CODE',
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
          Container(
            margin: EdgeInsets.all(20.0),
            alignment: Alignment.centerLeft,
            child: Icon(
              FontAwesomeIcons.code,
              color: Theme.of(context).iconTheme.color,
            ),
          ),
        ],
      ),
    );
  }
}
