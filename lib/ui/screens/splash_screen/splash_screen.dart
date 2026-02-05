import 'dart:async';

import 'package:datingapp/core/constants/colors.dart';
import 'package:datingapp/core/constants/string.dart';

import 'package:datingapp/ui/screens/intro_screen/otp.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      // if (!mounted) return;

      Navigator.of(
        // ignore: use_build_context_synchronously
        context,
      ).pushReplacement(MaterialPageRoute(builder: (context) => const Otp()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [primaryColor, secondaryColor],
          ),
        ),
        child: Center(
          child: Image.asset("$staticAssets/logo.png", height: 120),
        ),
      ),
    );
  }
}
