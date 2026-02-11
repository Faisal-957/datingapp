import 'package:datingapp/core/constants/colors.dart';
import 'package:datingapp/core/constants/string.dart';
import 'package:datingapp/core/constants/text_style.dart';
import 'package:datingapp/ui/screens/user_screen/user_viewmodel.dart';
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
              padding: const EdgeInsets.all(8.0),
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
                      Image.asset("$iconsAssets/Serach.png", scale: 3),
                      15.horizontalSpace,
                      Image.asset("$iconsAssets/bellicon.png", scale: 3),
                      15.horizontalSpace,
                      Image.asset("$iconsAssets/Filter.png", scale: 3),
                    ],
                  ),

                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: value.usericon.length,
                      itemBuilder: (context, index) {
                        return value.usericon[index];
                      },
                    ),
                  ),

                  Expanded(
                    child: DefaultTabController(
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

                          Expanded(
                            child: TabBarView(
                              children: [
                                Center(child: Text("Home Content")),
                                Center(child: Text("Profile Content")),
                                Center(child: Text("Settings Content")),
                              ],
                            ),
                          ),
                        ],
                      ),
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
