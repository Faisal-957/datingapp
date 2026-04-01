import 'package:datingapp/core/constants/string.dart';
import 'package:flutter/material.dart';

class BgContainer extends StatelessWidget {
  Widget? child;
  BgContainer({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("$staticAssets/intro3_bg.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: child,
    );
  }
}
