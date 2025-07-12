import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppTheme {
  static const Color primary =Color(0xffE2BE7F);
  static const Color black =Color(0xff202020);
  static const Color width =Color(0xffffffff);

  static ThemeData lightTheme = ThemeData();
  static ThemeData darkTheme = ThemeData(
    primaryColor: primary,
    appBarTheme: AppBarTheme(
      backgroundColor: black,
      foregroundColor: primary,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: primary,
      ),

    ),
    scaffoldBackgroundColor: black,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: primary,

      type: BottomNavigationBarType.fixed,
      selectedItemColor: width,
      showUnselectedLabels: false,
    ),
    textTheme: TextTheme(titleMedium: TextStyle(fontSize: 16,fontWeight: FontWeight.bold  ,color: width),
    titleLarge:TextStyle(fontSize: 20,fontWeight: FontWeight.bold  ,color: width),
    titleSmall: TextStyle(fontSize: 14,fontWeight: FontWeight.bold  ,color: width),  
    headlineSmall:TextStyle(fontSize: 24,fontWeight: FontWeight.bold  ,color: width), ),
  );

  static var white;

}