import 'package:flutter/material.dart';
import 'package:leof/Screens/Login_Screen.dart';
import 'package:leof/Screens/Signup_Screen.dart';
import 'package:leof/Screens/Splash_Screen.dart';
import 'package:leof/Screens/boarding_screen.dart';
import 'package:leof/Screens/bottomScreens/Home_Screen.dart';
import 'package:leof/Screens/navigation_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'leof',
      theme: ThemeData(
        primaryColor: Colors.blueGrey,
      ),
      home: SplashScreen(),
    );
  }
}
