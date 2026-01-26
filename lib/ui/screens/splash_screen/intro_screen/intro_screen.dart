import 'package:datingapp/core/constants/string.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Image.asset("$staticAssets/graphics.png"),

            Positioned(
              top: 220,
              left: 110,
              child: Image.asset("$staticAssets/logo2.png", scale: 3.5),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 30.0),
        child: Text(
          textAlign: TextAlign.center,
          "Get Started",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
