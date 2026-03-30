import 'package:datingapp/core/custom_widget/custom_usericon.dart';
import 'package:datingapp/free_screen.dart';
import 'package:datingapp/ui/screens/bottombar_screen/bottombar.dart';
import 'package:datingapp/ui/screens/chat_screen/chat_screen.dart';
import 'package:datingapp/ui/screens/filterscreen/filter_screen.dart';
import 'package:datingapp/ui/screens/match_screen/match_screen.dart';
import 'package:datingapp/ui/screens/match_screen/un_match_screen.dart';
import 'package:datingapp/ui/screens/message_screen/message_screen.dart';
import 'package:datingapp/ui/screens/profile_screen/profile_screen.dart';
import 'package:datingapp/ui/screens/user_screen/user_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          home: FilterScreen(),
        );
      },
    );
  }
}
