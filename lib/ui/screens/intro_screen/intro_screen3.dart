import 'package:datingapp/core/constants/string.dart';
import 'package:datingapp/core/constants/text_style.dart';
import 'package:datingapp/core/widget/custom_buttton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IntroScreen3 extends StatelessWidget {
  const IntroScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("$staticAssets/intro3_bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Login", style: style45),
            10.verticalSpace,
            Text(
              "Please enter your valid phone number.",
              style: style16.copyWith(
                color: Color(0xFF645290),
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              "We will send you a 4-digit code to verify",
              style: style16.copyWith(
                color: Color(0xFF645290),
                fontWeight: FontWeight.w500,
              ),
            ),
            40.verticalSpace,
            CustomButtton(
              title: "Submit",
              onTap: () {},
              width: 212.w,
              height: 65.h,
              borderRadius: 80,
            ),

            30.verticalSpace,
            Image.asset("$staticAssets/or.png", scale: 4),
            30.verticalSpace,
            Text(
              "Login using",
              style: style16.copyWith(
                fontWeight: FontWeight.w500,
                fontSize: 24,
              ),
            ),
            20.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("$staticAssets/fb.png", scale: 4),
                10.horizontalSpace,
                Image.asset("$staticAssets/gmail.png", scale: 4),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
