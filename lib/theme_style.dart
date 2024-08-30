// // ignore_for_file: prefer_const_constructors, avoid_print

// import 'package:flutter/material.dart';
// import 'hexa.dart';

// CustomTheme currentTheme = CustomTheme();

// class CustomTheme with ChangeNotifier {
//   static bool _isDarkTheme = true;
//   ThemeMode get currentTheme => _isDarkTheme ? ThemeMode.dark : ThemeMode.light;

//   void toggleTheme() {
//     _isDarkTheme = !_isDarkTheme;
//     notifyListeners();
//     print('$_isDarkTheme');
//   }

  // static ThemeData get lightTheme {
  //   return ThemeData(
  //     //primaryColor: HexColor("#fe2a00"),
  //     backgroundColor: Colors.white,
  //     //scaffoldBackgroundColor: Colors.white,
  //     textTheme: TextTheme(
  //       bodyText1: TextStyle(color: Colors.black),
  //       headline1: TextStyle(color: HexColor("#fe2a00")),
  //     ),
  //   );
  // }

//   static ThemeData get darkTheme {
//     return ThemeData(
//       // primaryColor: HexColor("#fe2a00"),
//       backgroundColor: Colors.black,
//       //scaffoldBackgroundColor: HexColor("#17181c"),
//       textTheme: TextTheme(
//         headline1: TextStyle(color: HexColor("#fe2a00")),
//         bodyText1: TextStyle(color: Colors.white),
//       ),
//     );
//   }
// }
