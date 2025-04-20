import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData appTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: const Color.fromARGB(255, 44, 44, 44),
    appBarTheme: AppBarTheme(
      backgroundColor: const Color.fromARGB(255, 26, 26, 26),
      elevation: 0,
      titleTextStyle: GoogleFonts.oswald(fontSize: 30, color: Colors.blue),
    ),
    textTheme: TextTheme(
      headlineLarge: GoogleFonts.kanit(fontSize: 40, color: Colors.blue),
      headlineMedium: GoogleFonts.kanit(fontSize: 20, color: Colors.blue),
      // bodyLarge:
    ),
  );
}
