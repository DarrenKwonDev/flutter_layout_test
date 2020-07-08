import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:layoutchallenge/Screen/login.dart';

void main() {
  runApp(MyApp());
}

Color backColor = const Color(0xffdfe6e9);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primaryColor: backColor,
            appBarTheme: AppBarTheme(color: backColor)),
        home: LoginScreen());
  }
}

// Home에 넣을 수 있는 것들
// LoginScreen()
