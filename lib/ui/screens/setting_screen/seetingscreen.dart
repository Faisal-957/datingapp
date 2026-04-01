import 'package:datingapp/core/constants/colors.dart';
import 'package:datingapp/core/constants/string.dart';
import 'package:datingapp/core/constants/text_style.dart';
import 'package:datingapp/core/custom_widget/bg_container.dart';
import 'package:datingapp/ui/screens/auth_screen/intro_screen/login_screen.dart';
import 'package:datingapp/ui/screens/profile_screen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class Seetingscreen extends StatelessWidget {
  final List<SettingItem> settingsOptions = [
    SettingItem(icon: Icons.account_circle, title: "Account"),
    SettingItem(icon: Icons.thumb_up, title: "Likes & Liked"),
    SettingItem(icon: Icons.notifications, title: "Notifications"),
    SettingItem(icon: Icons.money, title: "Manage Subscriptions"),
    SettingItem(icon: Icons.payment, title: "Payment"),
    SettingItem(icon: Icons.privacy_tip, title: "Privacy"),
    SettingItem(icon: Icons.help, title: "Help & Support"),
    SettingItem(icon: Icons.info, title: "About Us"),
    SettingItem(icon: Icons.message, title: "Message Options"),
    SettingItem(icon: Icons.favorite, title: "Manage Matches"),
    SettingItem(icon: Icons.lock, title: "Privacy Options"),
    SettingItem(icon: Icons.delete, title: "Delete Account"),
  ];
  Seetingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BgContainer(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Image.asset(
                        "$iconsAssets/arrowback.png",
                        scale: 3,
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        Get.to(const IntroScreen3());
                      },
                      child: Image.asset("$iconsAssets/Logout.png", scale: 3),
                    ),
                  ],
                ),
                30.verticalSpace,

                Text("Settings Screen", style: style45.copyWith(fontSize: 36)),
                20.verticalSpace,
                Text(
                  "Manage your settings for best app user experience",
                  style: style16.copyWith(color: lightpuerpl),
                ),

                ListView(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  children: settingsOptions.map((option) {
                    return ListTile(
                      leading: Icon(option.icon, color: darkblueColor),
                      title: Text(option.title, style: style18),

                      onTap: () {
                        // Handle navigation to respective settings screens
                      },
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SettingItem {
  final IconData icon;
  final String title;

  SettingItem({required this.icon, required this.title});
}
