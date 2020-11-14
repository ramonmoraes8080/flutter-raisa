import 'dart:async';
import 'package:flutter/material.dart';
import 'package:raisa/home.dart';

class SplashWidget extends StatelessWidget {

  static String route = "/splash" ;

  getDecorationImage() {
    return DecorationImage(
      image: AssetImage("build/assets/icon.png"),
      fit: BoxFit.cover
    );
  }

  @override
  Widget build(BuildContext context) {
    // Replace this with an actual call for external service
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, HomePageWidget.route);
    });

    return Scaffold(
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          // decoration: BoxDecoration(
          //   image: getDecorationImage(),
          // ),
          child: CircularProgressIndicator()
        ),
      )
    );
  }

}