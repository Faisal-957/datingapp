import 'package:datingapp/core/constants/string.dart';
import 'package:datingapp/core/custom_widget/custom_usericon.dart';
import 'package:flutter/material.dart';

class UserViewmodel extends ChangeNotifier {
  List<CustomUsericon> usericon = [
    CustomUsericon(img: "$staticAssets/Addicon.png"),
    CustomUsericon(img: "$staticAssets/image2.png"),
    CustomUsericon(img: "$staticAssets/image3.png"),
    CustomUsericon(img: "$staticAssets/imag1.png"),
    CustomUsericon(img: "$staticAssets/image2.png"),
    CustomUsericon(img: "$staticAssets/image3.png"),
  ];
  List<Customgrid> grid = [
    Customgrid(title: "Myley Corbyn, 23", subtitle: "1.5 km away"),
    Customgrid(title: "Tony Z, 25", subtitle: "1.5 km away"),
    Customgrid(title: "Myley Corbyn, 23", subtitle: "1.5 km away"),
    Customgrid(title: "Ruby Diaz, 33", subtitle: "1.5 km away"),
    Customgrid(title: "Myley Corbyn, 23", subtitle: "1.5 km away"),
    Customgrid(title: "Ruby Diaz, 33", subtitle: "1.5 km away"),
    Customgrid(title: "Myley Corbyn, 23", subtitle: "1.5 km away"),
    Customgrid(title: "Tony Z, 25", subtitle: "1.5 km away"),
    Customgrid(title: "Myley Corbyn, 23", subtitle: "1.5 km away"),
    Customgrid(title: "Ruby Diaz, 33", subtitle: "1.5 km away"),
    Customgrid(title: "Myley Corbyn, 23", subtitle: "1.5 km away"),
    Customgrid(title: "Ruby Diaz, 33", subtitle: "1.5 km away"),
  ];
  ////////////////////// grid view /////////////////
}
