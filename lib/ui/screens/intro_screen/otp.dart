import 'package:datingapp/core/constants/string.dart';
import 'package:datingapp/core/constants/text_style.dart';
import 'package:datingapp/core/custom_widget/custom_buttton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

class Otp extends StatelessWidget {
  const Otp({super.key});

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
            Text("Verify", style: style45),
            Text(
              textAlign: TextAlign.center,
              "Please enter the 4-digit code \nsent to your number.",
              style: style16.copyWith(
                color: Color(0xFF645290),
                fontWeight: FontWeight.w500,
              ),
            ),
            20.verticalSpace,
            Pinput(
              length: 4,
              defaultPinTheme: PinTheme(
                width: 60,
                height: 60,
                textStyle: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(color: Colors.grey.shade300),
                ),
              ),
            ),
            40.verticalSpace,
            CustomButtton(
              title: "Submit",
              onTap: () {},
              height: 65.h,
              width: 212.w,
              borderRadius: 80,
            ),
            20.verticalSpace,

            ShaderMask(
              shaderCallback: (bounds) => LinearGradient(
                colors: [Color(0xff7B49FF), Color(0xffFA457E)],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
              child: Text(
                "Resend Code",
                style: style18.copyWith(
                  color: Colors.white,
                ), // color will be replaced by shader
              ),
            ),
          ],
        ),
      ),
    );
  }
}
