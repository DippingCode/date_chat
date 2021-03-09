import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import './screens/launch.dart';

void main() {
  runApp(DateChat());
}

class DateChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Date Chat',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: AppBarTheme(
          elevation: 0,
          brightness: Brightness.dark,
        ),
        primaryColor: Color(0xFF4478EE),
        backgroundColor: Color(0xFF1A1C28),
        scaffoldBackgroundColor: Color(0xFFf6f6f6),
        dividerColor: Color(0x30c4c4c4),

        buttonTheme: ButtonThemeData(
          height: 51,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          buttonColor: Color(0xFF4478EE),
        ),

        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            primary: Color(0xFF536783),
            textStyle: GoogleFonts.roboto(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              letterSpacing: 0,
            ),
          ),
        ),

        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Color(0x48070C13),
          counterStyle: TextStyle(color: Colors.transparent),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          )
        ),

        textTheme: TextTheme(
          headline1: GoogleFonts.roboto(
            fontSize: 64,
            color: Color(0xFFf6f6f6),
            fontWeight: FontWeight.w900,
            letterSpacing: 0,
          ),

          headline2: GoogleFonts.roboto(
            fontSize: 48,
            color: Color(0xFFf6f6f6),
            fontWeight: FontWeight.w900,
            letterSpacing: 0,
            height: 1.5,
          ),

          headline3: GoogleFonts.roboto(
            fontSize: 36,
            color: Color(0xFFf6f6f6),
            fontWeight: FontWeight.bold,
            letterSpacing: 0,
            height: 1.5,
          ),

          headline4:GoogleFonts.roboto(
            fontSize: 32,
            color: Color(0xFFf6f6f6),
            fontWeight: FontWeight.bold,
            letterSpacing: 0,
          ),

          headline5:GoogleFonts.roboto(
            fontSize: 18,
            color: Color(0xFFf6f6f6),
            fontWeight: FontWeight.w600,
            letterSpacing: 0,
          ),

          headline6:GoogleFonts.roboto(
            fontSize: 18,
            color: Color(0xFF1A1C28),
            fontWeight: FontWeight.w600,
            letterSpacing: 0,
          ),

          subtitle1: GoogleFonts.roboto(
            fontSize: 16,
            color: Color(0xFFc4c4c4),
            fontWeight: FontWeight.w600,
            letterSpacing: 0,
          ),

          button: GoogleFonts.roboto(
            fontSize: 16,
            color: Color(0xFFf6f6f6),
            fontWeight: FontWeight.bold,
            letterSpacing: 0,
          ),

          caption: GoogleFonts.roboto(
            fontSize: 14,
            color: Color(0xFF536783),
            letterSpacing: 0,
            height: 1.5,
          ), 

          overline: GoogleFonts.roboto(
            fontSize: 14,
            color: Color(0xFFf6f6f6),
            fontWeight: FontWeight.bold,
            letterSpacing: 0,
            height: 1.5,
          ),

          bodyText1: GoogleFonts.roboto(
            fontSize: 16,
            color: Color(0xFFf6f6f6),
            letterSpacing: 0,
            height: 1.5,
          ),

          bodyText2: GoogleFonts.roboto(
            fontSize: 16,
            color: Color(0xFF536783),
            letterSpacing: 0,
            height: 1.5,
          ),

        ),
      ),
      home: LaunchScreen(),
    );
  }
}
