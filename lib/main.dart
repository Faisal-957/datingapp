import 'package:datingapp/ui/screens/intro_screen/intro2_screen.dart';
import 'package:datingapp/ui/screens/intro_screen/intro_screen.dart';
import 'package:datingapp/ui/screens/intro_screen/intro_screen3.dart';
import 'package:flutter/material.dart';
import 'package:datingapp/ui/screens/splash_screen/splash_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: IntroScreen3(),
        );
      },
    );
  }
}
