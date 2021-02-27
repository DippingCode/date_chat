import 'package:flutter/material.dart';

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
        appBarTheme: AppBarTheme(),
        primaryColor: Color(0xFF4478EE),
        backgroundColor: Color(0xFF1A1C28),


      ),
      home: Scaffold(
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
