import 'package:datingapp/core/constants/colors.dart';
import 'package:datingapp/core/constants/string.dart';
import 'package:datingapp/core/constants/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomUsericon extends StatelessWidget {
  final String img;
  const CustomUsericon({super.key, required this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      width: 60.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,

        border: BoxBorder.all(color: whiteColor, width: 3),
        image: DecorationImage(image: AssetImage(img)),
      ),
    );
  }
}

//////////////////// user grid/////////////////////////////
class Customgrid extends StatelessWidget {
  final String title;
  final String subtitle;
  const Customgrid({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [darkblueColor, blackColor],

          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        border: Border.all(color: Colors.grey, width: 2),
        borderRadius: BorderRadius.circular(20),
      ),

      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Align(
              alignment: AlignmentGeometry.topRight,
              child: Image.asset("$iconsAssets/onlineicon.png", scale: 4),
            ),
            Spacer(),
            Text(title, style: style16.copyWith(color: whiteColor)),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(subtitle, style: style12.copyWith(color: whiteColor)),
                Spacer(),
                Icon(Icons.camera_alt_rounded, color: whiteColor),
                20.verticalSpace,
              ],
            ),
          ],
        ),
      ),
    );
  }
}
