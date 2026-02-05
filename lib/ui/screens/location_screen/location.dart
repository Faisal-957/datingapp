import 'package:datingapp/core/constants/auth_decoration.dart';
import 'package:datingapp/core/constants/colors.dart';
import 'package:datingapp/core/constants/string.dart';
import 'package:datingapp/core/constants/text_style.dart';
import 'package:datingapp/core/custom_widget/custom_buttton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Location extends StatelessWidget {
  const Location({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("$iconsAssets/backicon.png", scale: 3),

              200.verticalSpace,
              Center(child: Text("Location", style: style45)),
              Center(
                child: Text(
                  textAlign: TextAlign.center,

                  "Let the app locate you to provide best \nsearched results around you",
                  style: style12
                      .copyWith(color: lightpuerpl)
                      .copyWith(fontSize: 16),
                ),
              ),
              20.verticalSpace,
              Text("Current Location", style: style16),
              10.verticalSpace,
              TextFormField(
                decoration: authdecoration.copyWith(
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 20,
                  ),
                  hintText: "Kenwood Place, Florida, US..",
                  suffixIcon: Icon(
                    Icons.location_searching,
                    color: Colors.grey,
                  ),
                ),
              ),
              20.verticalSpace,
              TextFormField(
                decoration: authdecoration.copyWith(
                  contentPadding: EdgeInsets.all(20),
                  hintText: "Search New Location",
                  suffixIcon: Icon(Icons.search, color: Colors.grey),
                ),
              ),
              30.verticalSpace,
              Center(
                child: CustomButtton(
                  title: "Continue",
                  onTap: () {},
                  borderRadius: 60,
                  height: 65.h,
                  width: 212.w,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
