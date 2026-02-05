import 'package:datingapp/core/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButtton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final Color? color;
  final Color? textColor;
  final double? width;
  final double? height;
  final double? borderRadius;
  const CustomButtton({
    super.key,
    required this.title,
    required this.onTap,
    this.color,
    this.textColor,
    this.width,
    this.height,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width ?? double.infinity,
        height: height ?? 50,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xffFA457E), Color(0xff7B49FF)],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
          borderRadius: BorderRadius.circular(borderRadius ?? 8),
        ),
        alignment: Alignment.center,
        child: Text(
          title,
          style: TextStyle(
            color: textColor ?? Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

//////////////////////////Select Intrest Button////////////////////////////////////////////////////////////////////////////
class Intrestbutton extends StatelessWidget {
  final String title;
  final String iconPath;
  final bool isSelected;

  const Intrestbutton({
    super.key,
    required this.title,
    required this.iconPath,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            // ignore: deprecated_member_use
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 5,
            spreadRadius: 2,
            offset: Offset(0, 3),
          ),
        ],
        color: whiteColor,
        borderRadius: BorderRadius.circular(60),
        border: Border.all(color: isSelected ? secondaryColor : Colors.white),
      ),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            iconPath,
            scale: 3,
            color: isSelected ? primaryColor : darkblueColor,
          ),
          8.horizontalSpace,
          Text(
            title,
            style: TextStyle(
              color: isSelected ? darkblueColor : Color(0xff745594),
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
