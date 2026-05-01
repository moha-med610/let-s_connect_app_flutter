import 'package:flutter/material.dart';

final ThemeData darkTheme = ThemeData(
  appBarTheme: AppBarThemeData(backgroundColor: Colors.black),
  scaffoldBackgroundColor: Colors.black26,
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.black,
    selectedItemColor: Colors.green.shade800,
    selectedIconTheme: IconThemeData(size: 25),
    unselectedItemColor: Colors.grey.shade200,
    unselectedIconTheme: IconThemeData(size: 20),
  ),
);
