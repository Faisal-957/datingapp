import 'package:datingapp/core/custom_widget/custom_continer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeViewModel extends ChangeNotifier {
  List<CustomHomeCard> cards = [
    CustomHomeCard(title: "yaseen kumar", color: Colors.pink),
    CustomHomeCard(
      title: " faisal khan akundi",
      color: Colors.deepPurpleAccent,
    ),
    CustomHomeCard(title: "sanan jameel ", color: Colors.cyan),
    CustomHomeCard(title: "yaseen kumar", color: Colors.pink),
    CustomHomeCard(
      title: " faisal khan akundi",
      color: Colors.deepPurpleAccent,
    ),
    CustomHomeCard(title: "sanan jameel ", color: Colors.cyan),
  ];
}
