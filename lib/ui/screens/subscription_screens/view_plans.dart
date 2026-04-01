import 'package:datingapp/core/constants/colors.dart';
import 'package:datingapp/core/constants/string.dart';
import 'package:datingapp/core/constants/text_style.dart';
import 'package:datingapp/core/custom_widget/bg_container.dart';
import 'package:datingapp/core/custom_widget/custom_buttton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ViewPlans extends StatelessWidget {
  const ViewPlans({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BgContainer(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Image.asset("$iconsAssets/arrowback.png", scale: 3),
                20.verticalSpace,
                Text(
                  "For Best Access",
                  style: style45.copyWith(fontSize: 36, color: darkblueColor),
                ),
                10.verticalSpace,
                Text(
                  "Subscribe a plan",
                  style: style18.copyWith(color: primaryColor),
                ),
                30.verticalSpace,
                Text(
                  "Top feautures you will get",
                  style: style18.copyWith(fontSize: 24, color: darkblueColor),
                ),
                20.verticalSpace,
                Text(
                  "Find out who’s following you ",
                  style: style16.copyWith(color: lightblueColor),
                ),
                Text(
                  "Conatct popular and new users",
                  style: style16.copyWith(color: lightblueColor),
                ),
                Text(
                  "Browse profile invisibly ",
                  style: style16.copyWith(color: lightblueColor),
                ),
                20.verticalSpace,
                Text(
                  "Select your Plan",
                  style: style18.copyWith(fontSize: 24, color: darkblueColor),
                ),

                Container(
                  height: 88.h,
                  width: 336.w,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(60),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [Image.asset("$iconsAssets/star.png", scale: 3)],
                  ),
                ),
                20.verticalSpace,
                CustomButtton(
                  title: "Continue",
                  onTap: () {},
                  width: 212,
                  height: 65,
                  borderRadius: 80,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
