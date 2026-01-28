import 'package:datingapp/core/constants/string.dart';
import 'package:datingapp/core/constants/text_style.dart';
import 'package:datingapp/core/widget/custom_buttton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Intro2Screen extends StatelessWidget {
  const Intro2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Online Dating App",
              style: style16.copyWith(fontWeight: FontWeight.bold),
            ),

            Text("Find your", style: style45),
            Text("Best match", style: style45),
            Text("Wanna know how the app works?", style: style18),
            Text(
              "Play the Video ",
              style: style18.copyWith(color: Colors.redAccent),
            ),

            Image.asset("$staticAssets/intro2.png", scale: 3),
            CustomButtton(
              title: "Start Dating",
              onTap: () {},
              width: 200.w,
              height: 50.h,
              borderRadius: 30,
            ),
          ],
        ),
      ),
    );
  }
}
