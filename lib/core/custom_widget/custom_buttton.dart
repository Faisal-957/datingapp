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
        color: isSelected ? Color(0xff7B49FF) : Colors.white,
        borderRadius: BorderRadius.circular(60),
        border: Border.all(color: isSelected ? Color(0xff7B49FF) : Colors.grey),
      ),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            iconPath,
            scale: 3,
            color: isSelected ? Colors.white : null,
          ),
          8.horizontalSpace,
          Text(
            title,
            style: TextStyle(
              color: isSelected ? Colors.white : Color(0xff33196B),
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
