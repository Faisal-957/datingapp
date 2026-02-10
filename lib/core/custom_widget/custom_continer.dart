import 'dart:math';

import 'package:datingapp/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Homecontiner extends StatelessWidget {
  // final String title;
  // final String subtitle;
  // final Color color;
  // final IconData icon;

  const Homecontiner({
    super.key,
    // required this.title,
    // required this.subtitle,
    // required this.color,
    // required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 400,
        width: 300,
        decoration: BoxDecoration(color: darkblueColor),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Stack(
              children: [
                Container(
                  height: 85,
                  width: 85,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(60),
                    border: Border.all(color: whiteColor, width: 2),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
