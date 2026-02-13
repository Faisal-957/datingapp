import 'package:datingapp/core/constants/string.dart';
import 'package:datingapp/core/custom_widget/custom_listtile.dart';
import 'package:datingapp/core/custom_widget/custom_usericon.dart';
import 'package:flutter/material.dart';

class ChatViewmodel extends ChangeNotifier {
  List<CustomUsericon> newmatch = [
    CustomUsericon(img: "$staticAssets/image2.png"),
    CustomUsericon(img: "$staticAssets/image3.png"),
    CustomUsericon(img: "$staticAssets/imag1.png"),
    CustomUsericon(img: "$staticAssets/image2.png"),
    CustomUsericon(img: "$staticAssets/image3.png"),
  ];
  List<CustomListtile> tilelist = [
    CustomListtile(
      title: "Belle Benson",
      date: "3:45 PM",
      subtitle: "Hi, How are you? Nice to meet you? Free now, You?",
    ),
    CustomListtile(
      title: "Myley Corbyn",
      date: "11.49 AM",
      subtitle: "It’s been 2 days so far.Will tell after a while abuot...",
    ),
    CustomListtile(
      title: "Sara Brown",
      date: "Yesterday",
      subtitle: "Hi Mathew, have you seen the new movie featuring Daniel...",
    ),
    CustomListtile(
      title: "Ruby Diaz",
      date: "Yesterday",
      subtitle: "Hey, whats up? Are you free?How are you? ",
    ),
  ];
}
