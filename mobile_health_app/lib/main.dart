import 'package:flutter/material.dart';
import 'screens/home_page.dart';
import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.black87,
          textTheme: TextTheme(
            headline1: TextStyle(color: Colors.blue),
          ),
        ),
        buttonColor: kButtonColor,
//        scaffoldBackgroundColor: kBackgroundColour,
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
