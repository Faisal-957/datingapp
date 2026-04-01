import 'package:datingapp/core/constants/colors.dart';
import 'package:datingapp/core/constants/string.dart';
import 'package:datingapp/core/constants/text_style.dart';
import 'package:datingapp/core/custom_widget/custom_usericon.dart';
import 'package:datingapp/ui/screens/filterscreen/filter_screen.dart';
import 'package:datingapp/ui/screens/notifications/notification.dart';
import 'package:datingapp/ui/screens/user_screen/user_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => UserViewmodel(),
      child: Consumer<UserViewmodel>(
        builder: (context, value, child) => Scaffold(
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
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SafeArea(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Add your Story",
                          style: style18.copyWith(
                            color: darkblueColor,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Spacer(),
                        Image.asset("$iconsAssets/search.png", scale: 3),
                        15.horizontalSpace,
                        InkWell(
                          onTap: () {
                            Get.to(const Notificationscreen());
                          },
                          child: Image.asset(
                            "$iconsAssets/bellicon.png",
                            scale: 3,
                          ),
                        ),
                        15.horizontalSpace,
                        GestureDetector(
                          child: Image.asset(
                            "$iconsAssets/Filter.png",
                            scale: 3,
                          ),
                          onTap: () {
                            Get.to(const FilterScreen());
                          },
                        ),
                      ],
                    ),

                    SizedBox(
                      height: 100,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: value.usericon.length,

                        itemBuilder: (context, index) {
                          final item = value.usericon[index];
                          return CustomUsericon(img: item.img);
                        },
                      ),
                    ),

                    ///
                    ///  tabs
                    ///
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
                              Tab(text: "All"),
                              Tab(text: "Online"),
                              Tab(text: "New Daters"),
                              Tab(text: "Liked You"),
                            ],
                          ),
                        ],
                      ),
                    ),
                    20.verticalSpace,
                    Expanded(
                      child: GridView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: value.grid.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          childAspectRatio: 0.87,
                        ),
                        itemBuilder: (context, index) {
                          return value.grid[index];
                        },
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
