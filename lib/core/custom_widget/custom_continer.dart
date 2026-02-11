import 'package:datingapp/core/constants/colors.dart';
import 'package:datingapp/core/constants/string.dart';
import 'package:datingapp/core/constants/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomHomeCard extends StatelessWidget {
  final String title;

  const CustomHomeCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 400,
        width: 300,
        color: darkblueColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
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
                  Text('page indicator', style: style12),
                  Spacer(),
                  Image.asset("$iconsAssets/chaticon.png", scale: 4),
                ],
              ),
              10.verticalSpace,
            ],
          ),
        ),
      ),
    );
  }
}
