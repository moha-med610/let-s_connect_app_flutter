import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
  // Scaffold
  scaffoldBackgroundColor: Colors.white,

  // AppBar
  appBarTheme: AppBarThemeData(backgroundColor: Colors.white),

  // BottomNavigationBar
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Color(0XFFFFFFFF),
    selectedItemColor: Color(0XFF1EA896),
    selectedIconTheme: IconThemeData(size: 25),
    unselectedItemColor: Color(0XFF4C5454),
    unselectedIconTheme: IconThemeData(size: 20),
  ),

  // Text
  textTheme: TextTheme(
    headlineLarge: TextStyle(fontSize: 26, fontWeight: FontWeight.w800),
    headlineMedium: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
    headlineSmall: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),

    labelSmall: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
    labelMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Colors.grey,
    ),
  ),

  // TextFromFiled
  inputDecorationTheme: InputDecorationThemeData(
    filled: true,
    contentPadding: EdgeInsets.all(8),
    hintStyle: TextStyle(
      color: Colors.grey,
      fontSize: 16,
      fontWeight: FontWeight.w700,
    ),
    fillColor: Colors.grey.shade200,
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(color: Colors.black12, width: 0.8),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(color: Colors.black12, width: 0.8),
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(color: Colors.grey, width: 0.8),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide(color: Colors.redAccent, width: 0.8),
    ),
  ),
);
