import 'package:datingapp/core/constants/colors.dart';
import 'package:datingapp/core/constants/string.dart';
import 'package:datingapp/core/constants/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Add your Story",
                    style: style18.copyWith(
                      color: darkblueColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                  Image.asset("$iconsAssets/Serach.png", scale: 3),
                  15.horizontalSpace,
                  Image.asset("$iconsAssets/bellicon.png", scale: 3),
                  15.horizontalSpace,
                  Image.asset("$iconsAssets/Filter.png", scale: 3),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
