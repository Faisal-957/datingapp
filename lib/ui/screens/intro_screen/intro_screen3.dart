import 'package:datingapp/core/constants/colors.dart';
import 'package:datingapp/core/constants/string.dart';
import 'package:datingapp/core/constants/text_style.dart';
import 'package:datingapp/core/custom_widget/custom_buttton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class IntroScreen3 extends StatelessWidget {
  const IntroScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("$staticAssets/intro3_bg.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Login", style: style45),
              10.verticalSpace,
              Text(
                "Please enter your valid phone number.",
                style: style16.copyWith(
                  color: Color(0xFF645290),
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "We will send you a 4-digit code to verify",
                style: style16.copyWith(
                  color: Color(0xFF645290),
                  fontWeight: FontWeight.w500,
                ),
              ),
              40.verticalSpace,
              SizedBox(
                height: 60.h,
                width: 350.w,
                child: IntlPhoneField(
                  keyboardType: TextInputType.phone,
                  showCursor: true,
                  dropdownIcon: Icon(
                    Icons.keyboard_arrow_down,
                    color: blackColor,
                  ),
                  decoration: InputDecoration(
                    hintText: '331 623 8413',

                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: secondaryColor),
                      borderRadius: BorderRadius.circular(60),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: secondaryColor),
                      borderRadius: BorderRadius.circular(60),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: secondaryColor),
                      borderRadius: BorderRadius.circular(60),
                    ),
                  ),
                  initialCountryCode: 'US',
                  onChanged: (phone) {
                    // +13316238413
                  },
                ),
              ),

              CustomButtton(
                title: "Submit",
                onTap: () {},
                width: 212.w,
                height: 65.h,
                borderRadius: 80,
              ),

              30.verticalSpace,
              Image.asset("$staticAssets/or.png", scale: 4),
              30.verticalSpace,
              Text(
                "Login using",
                style: style16.copyWith(
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                ),
              ),
              20.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("$staticAssets/fb.png", scale: 4),
                  10.horizontalSpace,
                  Image.asset("$staticAssets/gmail.png", scale: 4),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
