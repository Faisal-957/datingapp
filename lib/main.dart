import 'package:datingapp/ui/screens/splash_screen/intro_screen/intro2_screen.dart';
import 'package:datingapp/ui/screens/splash_screen/intro_screen/intro_screen.dart';
import 'package:flutter/material.dart';
import 'package:datingapp/ui/screens/splash_screen/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Intro2Screen());
  }
}
