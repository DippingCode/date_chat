import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import './intro.dart';

class LaunchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,

      appBar: AppBar(
        brightness: Brightness.dark,
        toolbarHeight: 0,
        backgroundColor: Colors.transparent,
      ),

      body: SplashScreen(
        seconds: 2,
        navigateAfterSeconds: IntroScreen(),
        loaderColor: Theme.of(context).primaryColor,
        backgroundColor: Theme.of(context).backgroundColor,
        title: Text(
          'DateChat',
          style: Theme.of(context).textTheme.headline1,
        ),
      ),
    );
  }
}
