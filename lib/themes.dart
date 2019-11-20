import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;

ThemeData themeData = ThemeData(
  primaryColor: Colors.white,
  appBarTheme: AppBarTheme(
    elevation: 2.0,
    color: Colors.white,
    iconTheme: IconThemeData(color: Colors.black),
    textTheme: TextTheme(
      title: TextStyle(
          color: Colors.black,
          fontFamily: 'UbuntuCondensed',
          fontSize: 24.0,
          fontWeight: FontWeight.w700),
    ),
  ),
  textTheme: TextTheme(
    body1: TextStyle(
        fontFamily: 'UbuntuCondensed',
        fontSize: 24.0,
        fontWeight: FontWeight.w700),
    body2: TextStyle(
        fontFamily: 'UbuntuCondensed',
        fontSize: 24.0,
        fontWeight: FontWeight.w700),
  ),
);

ThemeData darkThemeData = ThemeData.dark().copyWith(
  appBarTheme: AppBarTheme(
    elevation: 2.0,
    color: Colors.black12,
    iconTheme: IconThemeData(color: Colors.white),
    textTheme: TextTheme(
      title: TextStyle(
          color: Colors.white,
          fontFamily: 'UbuntuCondensed',
          fontSize: 24.0,
          fontWeight: FontWeight.w700),
    ),
  ),
  textTheme: TextTheme(
    body1: TextStyle(
        fontFamily: 'UbuntuCondensed',
        fontSize: 24.0,
        fontWeight: FontWeight.w700),
    body2: TextStyle(
        fontFamily: 'UbuntuCondensed',
        fontSize: 24.0,
        fontWeight: FontWeight.w700),
  ),
);
