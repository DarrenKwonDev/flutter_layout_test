import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:layoutchallenge/Screen/city_of_light.dart';
import 'package:layoutchallenge/Screen/login.dart';
import 'package:layoutchallenge/Screen/recipe.dart';

void main() {
  runApp(MyApp());
}

Color backColor = Colors.grey[100];

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            primaryColor: backColor,
            appBarTheme: AppBarTheme(color: backColor)),
        home: Recipe());
  }
}

// Home 에 넣을 수 있는 것들
// LoginScreen()
// CityOfLight()
// Recipe()