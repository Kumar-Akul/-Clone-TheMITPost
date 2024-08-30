// ignore_for_file: prefer_final_fields, non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:notyourapp/hexa.dart';

ThemeManager currentTheme = ThemeManager();

class ThemeManager with ChangeNotifier {
  static bool _isDark = true;
  ThemeMode get currentTheme => _isDark ? ThemeMode.dark : ThemeMode.light;

  toggleTheme() {
    _isDark = !_isDark;
    notifyListeners();
    print('$_isDark');
  }
}

Color mitPostOrange = Color(0xFFF16739);
Color blueWhite = Color(0xFFEFF0F5);
Color black = Colors.black54;
Color pitchBlack = Colors.black;
Color white = Colors.white;
Color offWhite = Colors.white70;

final shape = RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(10.0),
);

ThemeData lightTheme = ThemeData(
  colorScheme: ColorScheme.light(
    primary: white,
    secondary: pitchBlack,
    secondaryVariant: HexColor('e9e8ed'),
    primaryVariant: pitchBlack,
  ),
  backgroundColor: Colors.white10,
  iconTheme: IconThemeData(
    color: pitchBlack,
  ),
  textTheme: TextTheme(
    headline1: TextStyle(color: HexColor("#fe2a00")),
    bodyText1: TextStyle(
      color: Colors.black,
      fontSize: 15.0,
      fontWeight: FontWeight.w700,
    ),
  ),
);

ThemeData get darkTheme {
  return ThemeData(
    colorScheme: ColorScheme.dark(
      primary: white,
      secondary: offWhite,
      secondaryVariant: HexColor('#302f34'),
      primaryVariant: white,
    ),
    backgroundColor: HexColor("#17181c"),
    iconTheme: IconThemeData(
      color: Colors.white,
    ),
    textTheme: TextTheme(
      headline1: TextStyle(color: HexColor("#fe2a00")),
      bodyText1: TextStyle(
        color: Colors.white,
        fontSize: 15.0,
        fontWeight: FontWeight.w700,
      ),
    ),
  );
}
