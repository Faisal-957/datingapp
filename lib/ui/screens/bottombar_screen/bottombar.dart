import 'package:datingapp/core/constants/colors.dart';
import 'package:datingapp/core/constants/string.dart';
import 'package:datingapp/ui/screens/home_Swip/home_swip.dart';
import 'package:datingapp/ui/screens/intro_screen/intro_screen3.dart';
import 'package:datingapp/ui/screens/location_screen/location.dart';
import 'package:datingapp/ui/screens/personal_details/Personal_details.dart';
import 'package:datingapp/ui/screens/select_intrest/select_intrest.dart';
import 'package:datingapp/ui/screens/user_screen/user_screen.dart';
import 'package:flutter/material.dart';

class Bottombar extends StatefulWidget {
  const Bottombar({super.key});

  @override
  State<Bottombar> createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  int currentIndex = 0;
  final List<Widget> screens = [
    HomeSwip(),
    UserScreen(),
    Personaldetails(),
    IntroScreen3(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 28,

        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },

        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              "$iconsAssets/swipe1.png",
              scale: 3,
              color: currentIndex == 0 ? darkblueColor : null,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "$iconsAssets/dots.png",
              scale: 3,
              color: currentIndex == 1 ? darkblueColor : null,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "$iconsAssets/chats.png",
              scale: 3,
              color: currentIndex == 2 ? darkblueColor : null,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              "$iconsAssets/user.png",
              scale: 3,
              color: currentIndex == 3 ? darkblueColor : null,
            ),
            label: "",
          ),
        ],
      ),
    );
  }
}
