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
      home: Center(
        child: Text('Hello World!'),
      ),
    );
  }
}
