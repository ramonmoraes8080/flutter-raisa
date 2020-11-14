import 'package:flutter/material.dart';
import 'package:raisa/routes.dart';
import 'package:raisa/splash.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Raisa',
      initialRoute: SplashWidget.route,
      routes: getRoutes(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    );
  }
}