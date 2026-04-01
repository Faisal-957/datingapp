import 'package:datingapp/core/constants/colors.dart';
import 'package:datingapp/core/constants/string.dart';
import 'package:datingapp/core/constants/text_style.dart';
import 'package:datingapp/ui/screens/profile_screen/profile_viewmodel.dart';
import 'package:datingapp/ui/screens/setting_screen/seetingscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProfileViewmodel(),
      child: Consumer<ProfileViewmodel>(
        builder: (context, model, child) => Scaffold(
          body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("$staticAssets/profile1.png"),
                fit: BoxFit.cover,
              ),
            ),
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
                            Get.to(Seetingscreen());
                          },
                          child: Icon(Icons.settings, color: whiteColor),
                        ),
                      ],
                    ),

                    220.verticalSpace,
                    Text(
                      "Mathew Bennett",
                      style: style45.copyWith(fontSize: 32),
                    ),
                    10.verticalSpace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.phone, color: lightpuerpl),
                        Text(
                          "+01 331 623 8413",
                          style: style16.copyWith(color: lightpuerpl),
                        ),
                        10.horizontalSpace,
                        Image.asset("$iconsAssets/favorites.png", scale: 5),
                        10.horizontalSpace,
                        Image.asset("$iconsAssets/likes.png", scale: 5),
                        10.horizontalSpace,
                        Image.asset("$iconsAssets/chats1.png", scale: 5),
                        10.horizontalSpace,
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.email, color: lightpuerpl),
                        10.horizontalSpace,
                        Text(
                          "mathew.b@gmail.com",
                          style: style18.copyWith(color: lightpuerpl),
                        ),
                      ],
                    ),
                    10.verticalSpace,
                    Text(
                      "Short Bio",
                      style: style18.copyWith(
                        fontSize: 20,
                        color: darkblueColor,
                      ),
                    ),
                    Text(
                      "Love music, cooking, swimming, going out, travellig etc. Wanna be friends??",
                      style: style18.copyWith(color: lightpuerpl),
                    ),

                    DefaultTabController(
                      length: 4,
                      child: Column(
                        children: [
                          TabBar(
                            indicatorSize: TabBarIndicatorSize.tab,
                            dividerColor: Colors.transparent,
                            indicatorColor: darkblueColor,
                            labelColor: primaryColor,
                            unselectedLabelColor: Color(0xff4635E2),
                            tabs: [
                              Tab(text: "Pictures"),
                              Tab(text: "Videos"),
                              Tab(text: "My Bio"),
                              Tab(text: "More"),
                            ],
                          ),
                          20.verticalSpace,
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 100.h,

                      child: ListView.builder(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return GalleryImages();
                        },
                      ),
                    ),
                    10.verticalSpace,
                    Text(
                      "Interests",
                      style: style18.copyWith(
                        fontSize: 20,
                        color: darkblueColor,
                      ),
                    ),
                    10.verticalSpace,
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          _Hobbyitem(
                            icon: "$iconsAssets/music.png",
                            title: "Music",
                          ),
                          20.horizontalSpace,
                          _Hobbyitem(
                            icon: "$iconsAssets/cooking.png",
                            title: "Cooking",
                          ),
                          20.horizontalSpace,
                          _Hobbyitem(
                            icon: "$iconsAssets/swiming.png",
                            title: "Swimming",
                          ),
                          20.horizontalSpace,
                          _Hobbyitem(
                            icon: "$iconsAssets/shopping.png",
                            title: "Shopping",
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _Hobbyitem extends StatelessWidget {
  String icon;
  String title;
  _Hobbyitem({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(icon, scale: 4),
        10.horizontalSpace,
        Text(title, style: style18.copyWith(color: lightpuerpl)),
      ],
    );
  }
}

class GalleryImages extends StatelessWidget {
  const GalleryImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      margin: EdgeInsets.only(left: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.blue,
        border: Border.all(color: Colors.grey.shade300, width: 3),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(1, 2)),
        ],
      ),
    );
  }
}
