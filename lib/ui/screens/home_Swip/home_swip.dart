import 'package:datingapp/core/constants/colors.dart';
import 'package:datingapp/core/constants/string.dart';
import 'package:datingapp/core/constants/text_style.dart';
import 'package:datingapp/core/custom_widget/custom_continer.dart';
import 'package:datingapp/ui/screens/home_Swip/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class HomeSwip extends StatelessWidget {
  HomeSwip({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeViewModel(),
      child: Consumer<HomeViewModel>(
        builder: (context, model, child) => Scaffold(
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
                      Image.asset("$iconsAssets/add1.png", scale: 3),
                      Text(
                        "Add Story",
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
                  Flexible(
                    child: CardSwiper(
                      cardsCount: model.cards.length,
                      cardBuilder:
                          (
                            context,
                            index,
                            percentThresholdX,
                            percentThresholdY,
                          ) => model.cards[index],
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
