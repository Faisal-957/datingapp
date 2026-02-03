import 'package:datingapp/core/constants/colors.dart';
import 'package:datingapp/core/constants/string.dart';
import 'package:datingapp/core/constants/text_style.dart';
import 'package:datingapp/core/custom_widget/custom_buttton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SelectIntrest extends StatefulWidget {
  const SelectIntrest({super.key});

  @override
  State<SelectIntrest> createState() => _SelectIntrestState();
}

class _SelectIntrestState extends State<SelectIntrest> {
  final List<Map<String, String>> interests = [
    {"title": "Photography", "icon": "$iconsAssets/photo.png"},
    {"title": "Cooking", "icon": "$iconsAssets/cooking.png"},
    {"title": "Video Games", "icon": "$iconsAssets/game.png"},
    {"title": "Music", "icon": "$iconsAssets/music.png"},
    {"title": "Travelling", "icon": "$iconsAssets/travling.png"},
    {"title": "Shopping", "icon": "$iconsAssets/shopping.png"},
    {"title": "Speeches", "icon": "$iconsAssets/speaches.png"},
    {"title": "Art & Crafts", "icon": "$iconsAssets/art.png"},
    {"title": "Swimming", "icon": "$iconsAssets/swiming.png"},
    {"title": "Drinking", "icon": "$iconsAssets/drinking.png"},
    {"title": "Extreme Sports", "icon": "$iconsAssets/sport.png"},
    {"title": "Fitness", "icon": "$iconsAssets/fitness.png"},
  ];

  List<String> selectedInterests = [];

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
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("$iconsAssets/backicon.png", scale: 3),
                  Text(
                    "Skip",
                    style: style18.copyWith(color: Color(0xFFFB467F)),
                  ),
                ],
              ),
              SizedBox(height: 50.h),
              Text(
                "Likes, Interests",
                style: style45.copyWith(fontSize: 36, color: darkblueColor),
              ),
              SizedBox(height: 10.h),
              Text(
                "Share your likes & passion with others",
                style: style16.copyWith(color: Color(0xFF645290)),
              ),
              SizedBox(height: 40.h),

              Expanded(
                child: GridView.builder(
                  itemCount: interests.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                    childAspectRatio: 3.5,
                  ),
                  itemBuilder: (context, index) {
                    final title = interests[index]["title"]!;
                    final icon = interests[index]["icon"]!;
                    final isSelected = selectedInterests.contains(title);

                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          if (isSelected) {
                            selectedInterests.remove(title);
                          } else {
                            selectedInterests.add(title);
                          }
                        });
                      },
                      child: Intrestbutton(
                        title: title,
                        iconPath: icon,
                        isSelected: isSelected,
                      ),
                    );
                  },
                ),
              ),

              SizedBox(height: 30.h),
              Center(
                child: CustomButtton(
                  title: "Continue",
                  width: 212.w,
                  height: 60.h,
                  borderRadius: 60,
                  onTap: () {},
                ),
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
