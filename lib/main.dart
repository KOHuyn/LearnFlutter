import 'package:e_commerce/constants.dart';
import 'package:e_commerce/routs.dart';
import 'package:e_commerce/screen/profile/profile_screen.dart';
import 'package:e_commerce/screen/splash/splash_screen.dart';
import 'package:e_commerce/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme:theme(),
      // home: SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
