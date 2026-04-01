import 'package:datingapp/core/constants/string.dart';
import 'package:datingapp/core/constants/text_style.dart';
import 'package:datingapp/core/custom_widget/bg_container.dart';
import 'package:datingapp/core/custom_widget/custom_buttton.dart';
import 'package:datingapp/ui/screens/subscription_screens/view_plans.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BgContainer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("$staticAssets/Slogo.png", scale: 5),
            Text("Hello user", style: style45),
            Center(
              child: Text(
                "To continue with this option please choose a subscription plan that suits you & get the most out of the app",
                maxLines: 3,
                textAlign: TextAlign.center,

                style: style16.copyWith(
                  color: Color(0xFF645290),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            20.verticalSpace,
            CustomButtton(
              title: "view plans",
              onTap: () {
                Get.to(const ViewPlans());
              },
              width: 200,
              height: 65,
              borderRadius: 30,
            ),
          ],
        ),
      ),
    );
  }
}
