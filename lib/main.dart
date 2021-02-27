import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import './screens/splash.dart';

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

        textTheme: TextTheme(
          headline1: GoogleFonts.roboto(
            fontSize: 64,
            color: Color(0xFFf6f6f6),
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
      home: SplashScreen(),
    );
  }
}
