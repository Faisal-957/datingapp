import 'package:card_stack_swiper/card_stack_swiper.dart';
import 'package:datingapp/core/constants/colors.dart';
import 'package:datingapp/core/constants/string.dart';
import 'package:datingapp/core/constants/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeSwip extends StatefulWidget {
  const HomeSwip({super.key});

  @override
  State<HomeSwip> createState() => _HomeSwipState();
}

class _HomeSwipState extends State<HomeSwip> {
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
                  Image.asset("$iconsAssets/add1.png", scale: 3),
                  Text(
                    "Add Story",
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
              Container(
                height: 545.h,
                width: 353.w,
                decoration: BoxDecoration(color: darkblueColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
