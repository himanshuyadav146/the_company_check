
import 'dart:ui';

import 'package:flutter/material.dart';

class AppTheme{
  AppTheme._();
  static Color _iconColor = Colors.blueAccent.shade200;
  static const Color _lightPrimaryColor = Color.fromRGBO(28, 61, 138, 1);
  static const Color _lightPrimaryVariantColor = Color.fromRGBO(77, 76, 76, 1);
 // static const Color _lightPrimaryVariantColor = Color(0xFF546E7A);
  static const Color _lightSecondaryColor = Colors.green;
  static const Color _lightOnPrimaryColor = Colors.black;

  static const Color _darkPrimaryColor = Colors.white24;
  static const Color _darkPrimaryVariantColor = Colors.black;
  static const Color _darkSecondaryColor = Colors.white;
  static const Color _darkOnPrimaryColor = Colors.white;

  static const Color lightGray138_1 = Color.fromRGBO(138, 138, 138, 1);
  static const Color tabTextColor = Color.fromRGBO(59, 89, 161, 1);
  static const Color bar1tColor = Color.fromRGBO(59,89,161, 1);
  static const Color bar2tColor = Color.fromRGBO(48,204,242, 1);
  static const Color colorActive = Color.fromRGBO(106,178,23, 1);
  static const Color colorClose = Color.fromRGBO(194,65,59, 1);
  static const Color colorGray = Color.fromRGBO(138,138,138, 1);
  static const Color colorNavylue = Color.fromRGBO(23,70,162, 1);
  static const Color colorLight = Color.fromRGBO(241, 240, 250, 1);
  static const Color colorLightGray = Color.fromRGBO(217, 217, 217, 1);
  static const Color colorGrayText = Color.fromRGBO(174, 168, 168, 1);
  static const Color colorDarkGray = Color.fromRGBO(82,82,83, 1);
  static const Color colorGray1 = Color.fromRGBO(239,239,239, 1);
  static const Color colorGray2 = Color.fromRGBO(82, 84, 87, 1);
  static const Color colorGray3 = Color.fromRGBO(113, 113, 113, 1);
  static const Color colorGray4 = Color.fromRGBO(54, 54, 55, 1);
  static const Color colorPink = Color.fromRGBO(255, 237, 227, 1);
  static const Color colorGray5 = Color.fromRGBO(86, 84, 84, 1);
  static const Color colorPink1 = Color.fromRGBO(255, 252, 248, 1);
  static const Color colorGray6 = Color.fromRGBO(144, 144, 144, 1);
  static const Color colorGray7 = Color.fromRGBO(228, 222, 222, 1);
  static const Color colorGray8 = Color.fromRGBO(207, 204, 204, 1);
  static const Color lightGreen = Color.fromRGBO(173, 221, 208, 1);
  static const Color darkPink = Color.fromRGBO(244, 193, 191, 1);
  static const Color darkBlue = Color.fromRGBO(1, 36, 120, 1);
  static const Color white = Color.fromRGBO(255, 255, 255, 1);
  static const Color colorGray9 = Color.fromRGBO(240, 240, 240, 1);
  static const Color colorGray10 = Color.fromRGBO(145, 145, 145, 1);


  static final ThemeData lightTheme = ThemeData(
      appBarTheme: const AppBarTheme(
        titleTextStyle: TextStyle(color:_darkSecondaryColor,
            fontFamily: "RobotoRegular"),
        color: _lightPrimaryColor,
        iconTheme: IconThemeData(color: _lightOnPrimaryColor),
      ),
      colorScheme: const ColorScheme.light(
        primary: _lightPrimaryColor,
        primaryVariant: _lightPrimaryColor,
        secondary: _lightSecondaryColor,
        onPrimary: _lightOnPrimaryColor,
      ),
      iconTheme: IconThemeData(
        color: _iconColor,
      ),
      textTheme: _lightTextTheme,
      dividerTheme: const DividerThemeData(
          color: Colors.black12
      )

  );

  static final ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: _darkPrimaryVariantColor,
      appBarTheme: const AppBarTheme(
        color: _darkPrimaryVariantColor,
        iconTheme: IconThemeData(color: _darkOnPrimaryColor),
      ),
      colorScheme: const ColorScheme.dark(
        primary: _darkPrimaryColor,
        primaryVariant: _darkPrimaryVariantColor,
        secondary: _darkSecondaryColor,
        onPrimary: _darkOnPrimaryColor,
        background: Colors.white12,
      ),
      iconTheme: IconThemeData(
        color: _iconColor,
      ),
      textTheme: _darkTextTheme,
      dividerTheme: const DividerThemeData(
          color: Colors.black
      )  );

  static final TextTheme _lightTextTheme = TextTheme(
    headline1: _lightScreenHeading1TextStyle,
  );

  static final TextTheme _darkTextTheme = TextTheme(
    headline1: _darkScreenHeading1TextStyle,
  );

  static final TextStyle _lightScreenHeading1TextStyle =
  TextStyle(fontFamily: "RobotoRegular");

  static final TextStyle _darkScreenHeading1TextStyle =
  _lightScreenHeading1TextStyle.copyWith(color: _darkOnPrimaryColor);

}