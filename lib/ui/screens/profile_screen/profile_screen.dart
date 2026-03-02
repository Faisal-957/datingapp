import 'package:datingapp/core/constants/colors.dart';
import 'package:datingapp/core/constants/string.dart';
import 'package:datingapp/core/constants/text_style.dart';
import 'package:datingapp/ui/screens/profile_screen/profile_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});
  List<String> selectedInterests = [];
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
                image: AssetImage("$staticAssets/Profile22.png"),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.arrow_back, color: Colors.white),
                      Spacer(),
                      Icon(Icons.settings, color: darkblueColor),
                    ],
                  ),
                  30.verticalSpace,
                  Image.asset("$staticAssets/Profileinput.png", scale: 4),
                  20.verticalSpace,
                  Text("Mathew Bennett", style: style45.copyWith(fontSize: 32)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "+01 331 623 8413",
                        style: style18.copyWith(color: lightpuerpl),
                      ),
                      Text(
                        "mathew.b@gmail.com",
                        style: style18.copyWith(color: lightpuerpl),
                      ),
                    ],
                  ),
                  30.verticalSpace,
                  Text(
                    "Short Bio",
                    style: style18.copyWith(fontSize: 20, color: darkblueColor),
                  ),
                  Text(
                    "Love music, cooking, swimming, going out, travellig etc. Wanna be friends??",
                    style: style18.copyWith(color: Colors.grey),
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
                      padding: const EdgeInsets.only(left: 15),
                      scrollDirection: Axis.horizontal,

                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: continerp(),
                        );
                      },
                    ),
                  ),
                  20.verticalSpace,
                  Text(
                    "Interests",
                    style: style18.copyWith(fontSize: 20, color: darkblueColor),
                  ),
                  10.verticalSpace,
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        _hobbyitem(
                          icon: "$iconsAssets/music.png",
                          title: "Music",
                        ),
                        20.horizontalSpace,
                        _hobbyitem(
                          icon: "$iconsAssets/cooking.png",
                          title: "Cooking",
                        ),
                        20.horizontalSpace,
                        _hobbyitem(
                          icon: "$iconsAssets/swiming.png",
                          title: "Swimming",
                        ),
                        20.horizontalSpace,
                        _hobbyitem(
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
    );
  }
}

class _hobbyitem extends StatelessWidget {
  String icon;
  String title;
  _hobbyitem({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(icon, scale: 3),
        10.horizontalSpace,
        Text(title, style: style18.copyWith(color: lightpuerpl)),
      ],
    );
  }
}

class continerp extends StatelessWidget {
  const continerp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: 100.w,

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
