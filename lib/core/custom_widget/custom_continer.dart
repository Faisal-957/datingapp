import 'package:datingapp/core/constants/colors.dart';
import 'package:datingapp/core/constants/string.dart';
import 'package:datingapp/core/constants/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomHomeCard extends StatelessWidget {
  final String title;
  final Color? color;

  const CustomHomeCard({super.key, required this.title, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color ?? Colors.amberAccent,

        borderRadius: BorderRadius.circular(28),
      ),

      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset("$iconsAssets/reprt.png", scale: 4),
            Spacer(),
            Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: Colors.grey, width: 2),
                  ),
                ),
                10.horizontalSpace,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      title,
                      style: style16.copyWith(color: whiteColor),
                    ),

                    Text(
                      'distence',
                      style: style16.copyWith(color: whiteColor),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Spacer(),
                Image.asset("$iconsAssets/chaticon.png", scale: 4),
              ],
            ),
            10.verticalSpace,
          ],
        ),
      ),
    );
  }
}
