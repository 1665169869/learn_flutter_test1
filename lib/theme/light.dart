import 'package:flutter/material.dart';

class LightTheme {
  static get theme => ThemeData(
    textTheme: TextTheme(
      titleLarge: TextStyle(fontSize: 22, color: Colors.white),
    ),
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: Colors.white),
      centerTitle: true,
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 22),
      backgroundColor: Color.fromARGB(255, 57, 155, 53),
    ),
    inputDecorationTheme: InputDecorationTheme(
      floatingLabelStyle: TextStyle(color: Colors.green),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.green),
      ),
      suffixIconColor: Colors.green,
    ),
  );
}
