import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class themeData {
  static bool isDark = true;

  // light
  static ThemeData lightTheme = ThemeData(
    primaryColor: const Color(0xFFB7935F),
    colorScheme: ColorScheme.fromSeed(
      primary: const Color(0xFFB7935F),
      seedColor: const Color(0xFFB7935F),
      onSecondary: Colors.black,
    ),
    // color  of all page

    scaffoldBackgroundColor: Colors.transparent,

    appBarTheme: AppBarTheme(
      iconTheme: const IconThemeData(
        color: Colors.black,
        size: 30,
      ),
      elevation: 0,
      centerTitle: true,
      titleTextStyle: GoogleFonts.elMessiri(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),

    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color(0xFFB7935F),
      selectedIconTheme: IconThemeData(
        color: Colors.black,
        size: 23,
      ),
      selectedItemColor: Colors.black,
      unselectedIconTheme: IconThemeData(
        color: Color.fromARGB(255, 255, 255, 255),
        size: 28,
      ),
      unselectedItemColor: Color.fromARGB(255, 255, 255, 255),
    ),

    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: Color(0xFFB7935F),
    ),

    textTheme: TextTheme(
        titleLarge: GoogleFonts.elMessiri(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),

        /// AppBar

        bodyLarge: GoogleFonts.elMessiri(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ), //text of Quran

        bodyMedium: GoogleFonts.elMessiri(
          fontSize: 25,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
        bodySmall: GoogleFonts.cinzelDecorative(
          fontSize: 20,
          fontWeight: FontWeight.normal,
          color: Colors.black,
        )),
    dividerColor: const Color(0xFFB7935F),
  );

// dark
  static ThemeData darkTheme = ThemeData(
    primaryColor: const Color(0xFFFACC1D),
    colorScheme: ColorScheme.fromSeed(
      primary: const Color(0xFF141A2E),
      seedColor: const Color(0xFF141A2E),
      onSecondary: const Color(0xFFFACC1D),
    ),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      iconTheme: const IconThemeData(
        color: Colors.white,
        size: 30,
      ),
      elevation: 0,
      centerTitle: true,
      titleTextStyle: GoogleFonts.elMessiri(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color(0xFF141A2E),
      selectedIconTheme: IconThemeData(
        color: Color(0xFFFACC1D),
        size: 23,
      ),
      selectedItemColor: Color(0xFFFACC1D),
      unselectedIconTheme: IconThemeData(
        color: Color.fromARGB(255, 255, 255, 255),
        size: 28,
      ),
      unselectedItemColor: Color.fromARGB(255, 255, 255, 255),
    ),
    textTheme: TextTheme(
        titleLarge: GoogleFonts.elMessiri(
            fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),

        /// AppBar

        bodyLarge: GoogleFonts.elMessiri(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.white), //text of Quran

        bodyMedium: GoogleFonts.elMessiri(
            fontSize: 25, fontWeight: FontWeight.w500, color: Colors.white),
        bodySmall: GoogleFonts.cinzelDecorative(
            fontSize: 20, fontWeight: FontWeight.normal, color: Colors.white)),
    bottomSheetTheme:
        const BottomSheetThemeData(backgroundColor: Color(0xFF141A2E)),
    dividerColor: const Color(0xFFFACC1D),
  );
}
