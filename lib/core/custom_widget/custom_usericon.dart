import 'package:datingapp/core/constants/colors.dart';
import 'package:datingapp/core/constants/string.dart';
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
