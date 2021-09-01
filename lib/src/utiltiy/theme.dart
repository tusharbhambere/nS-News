import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final fontComfortaa = GoogleFonts.comfortaa();

class AppThemed {
  static final ThemeData light = ThemeData(
      splashColor: Colors.white,
      //
      primarySwatch: Colors.deepOrange,
      buttonColor: Colors.deepOrange,
      //

      iconTheme: const IconThemeData(color: Colors.black87, size: 10),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.deepOrange))),
      appBarTheme: const AppBarTheme(
        color: Colors.deepOrange,
      ),
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.white,
      cardColor: Colors.grey[500],
      unselectedWidgetColor: Colors.black45,
      focusColor: Colors.black,
      textTheme: GoogleFonts.comfortaaTextTheme().copyWith(
        headline1: fontComfortaa.copyWith(
            letterSpacing: 4,
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.w500),
        headline2: fontComfortaa.copyWith(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.w400),
        headline3: fontComfortaa.copyWith(
            color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500),
        headline4: fontComfortaa.copyWith(
            color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
        headline5: fontComfortaa.copyWith(
            color: Colors.black, fontSize: 17, fontWeight: FontWeight.w700),
        headline6: fontComfortaa.copyWith(
            color: Colors.black, fontSize: 13, fontWeight: FontWeight.w400),
        subtitle1: fontComfortaa.copyWith(
            color: Colors.black87, fontSize: 14, fontWeight: FontWeight.normal),
        subtitle2: fontComfortaa.copyWith(
            fontSize: 10, color: Colors.black87, fontWeight: FontWeight.normal),
        button: fontComfortaa.copyWith(color: Colors.white),
        bodyText1: fontComfortaa.copyWith(
            color: Colors.black87, fontSize: 12, fontWeight: FontWeight.normal),
        bodyText2: fontComfortaa.copyWith(
          fontSize: 9,
          color: Colors.black,
        ),
      ));

  static final ThemeData dark = ThemeData(
      splashColor: Colors.black,

      //
      primarySwatch: Colors.orange,
      buttonColor: Colors.black,
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.green[600]))),
      //!

      primaryColor: Colors.black12,
      appBarTheme: const AppBarTheme(
        titleTextStyle: TextStyle(color: Colors.white),
        color: Colors.black,
      ),
      brightness: Brightness.dark,
      scaffoldBackgroundColor: Colors.black,
      focusColor: Colors.white,
      //!
      textTheme: GoogleFonts.comfortaaTextTheme().copyWith(
        headline1: fontComfortaa.copyWith(
            letterSpacing: 4,
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w500),
        headline2: fontComfortaa.copyWith(
            color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400),
        headline3: fontComfortaa.copyWith(
            color: Colors.white, fontSize: 22, fontWeight: FontWeight.w500),
        headline4: fontComfortaa.copyWith(
            color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        headline5: fontComfortaa.copyWith(
            color: Colors.white, fontSize: 19, fontWeight: FontWeight.w700),
        headline6: fontComfortaa.copyWith(
            color: Colors.white, fontSize: 13, fontWeight: FontWeight.w400),
        subtitle1: fontComfortaa.copyWith(
            color: Colors.white, fontSize: 13, fontWeight: FontWeight.normal),
        subtitle2: fontComfortaa.copyWith(
            fontSize: 10, color: Colors.white, fontWeight: FontWeight.normal),
        button: fontComfortaa.copyWith(color: Colors.white),
        bodyText1: fontComfortaa.copyWith(
            color: Colors.white, fontSize: 12, fontWeight: FontWeight.normal),
        bodyText2: fontComfortaa.copyWith(
          fontSize: 9,
          color: Colors.white,
        ),
      ));
}
