import 'package:flutter/material.dart';
import 'package:raisa/home.dart';
import 'package:raisa/splash.dart';

getRoutes () {
  return {
    HomePageWidget.route: (BuildContext context) => HomePageWidget(),
    SplashWidget.route: (BuildContext context) => SplashWidget(),
    // '/signin': (BuildContext context) => SignIn(),
  };
}
