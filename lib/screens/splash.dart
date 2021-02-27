import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,

      body: Center(
        child: Text(
          'DateChat',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}
