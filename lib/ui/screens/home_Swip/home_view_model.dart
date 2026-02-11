import 'package:datingapp/core/custom_widget/custom_continer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeViewModel extends ChangeNotifier {
  List<CustomHomeCard> cards = [
    CustomHomeCard(title: "yaseen kumarrrrrrrr"),
    CustomHomeCard(title: " faisal khan akundi"),
    CustomHomeCard(title: "sanan"),
  ];

  void colorChange() {}
}
