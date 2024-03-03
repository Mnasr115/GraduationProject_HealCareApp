
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

import '../colors.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;

  bool get isDarkMode =>
      themeMode == ThemeMode.dark;

  void toggleTheme (bool isOn) {
    themeMode = isOn ?
      ThemeMode.dark : ThemeMode.light ;
    notifyListeners();
  }
}

class MyThemes {
  static final darkTheme = ThemeData(
    primarySwatch: defaultColor,
    scaffoldBackgroundColor: HexColor('333739'),
    appBarTheme: AppBarTheme(
      backwardsCompatibility: false, //عشان اقدر اتحكم ف ال statusbar
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: HexColor('333739'),
        statusBarIconBrightness: Brightness.light,
      ),
      backgroundColor: HexColor('333739'),
      elevation: 0.0,
      titleTextStyle: const TextStyle(
        color: Colors.white,
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: const IconThemeData(
        color: Colors.grey,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      // selectedItemColor: Colors.deepOrange,
      unselectedItemColor: Colors.grey,
      elevation: 20.0,
      backgroundColor: HexColor('333739'),
    ),
    textTheme: const TextTheme(
      bodyText1: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      bodyText2: TextStyle(
        fontSize: 12.0,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
    ),
  );

  static final lightTheme = ThemeData(
    primarySwatch: defaultColor,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backwardsCompatibility: false, //عشان اقدر اتحكم ف ال statusbar
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
      color: Colors.white,
      elevation: 0.0,
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      // selectedItemColor: Colors.deepOrange,
      unselectedItemColor: Colors.grey,
      elevation: 20.0,
      backgroundColor: Colors.white,
    ),
    textTheme: const TextTheme(
      bodyText1: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      bodyText2: TextStyle(
        fontSize: 12.0,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
    ),
  );

}