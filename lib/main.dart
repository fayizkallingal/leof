import 'package:flutter/material.dart';
import 'package:leof/Screens/SplashScreen.dart';
import 'package:leof/Screens/bottomScreens/Home_Screen.dart';
import 'package:leof/Screens/bottomScreens/product_Screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'leof',
      theme: ThemeData(
        primaryColor: Colors.blueGrey,
      ),
      home: SplashScreen(),
    );
  }
}
