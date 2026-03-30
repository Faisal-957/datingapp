import 'package:datingapp/core/constants/colors.dart';
import 'package:datingapp/core/constants/string.dart';
import 'package:datingapp/core/constants/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MatchScreen extends StatelessWidget {
  const MatchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
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
              Text("Congrats! ", style: style45),
              Text(
                "Its A Match!",
                style: style16.copyWith(color: lightpuerpl),
                textAlign: TextAlign.center,
              ),
              Text(
                'Belle & You both liked each other',
                style: style16.copyWith(color: lightpuerpl),
                textAlign: TextAlign.center,
              ),
              20.verticalSpace,

              Icon(Icons.comment_sharp, size: 50, color: blackColor),
              Text(
                "Start Conversation",
                style: style18.copyWith(color: primaryColor),
              ),
              Text(
                'Keep Dating ',
                style: style18.copyWith(
                  color: primaryColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
