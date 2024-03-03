
import 'package:flutter/material.dart';
import 'layouts/home_nvi_bar.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      //themeMode: ThemeMode.system,
     // theme: MyThemes.lightTheme,
     // darkTheme: MyThemes.darkTheme,
      home: home_nvi_bar(),
    );
  }
}

