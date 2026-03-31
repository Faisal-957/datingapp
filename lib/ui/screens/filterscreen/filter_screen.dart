import 'package:datingapp/core/constants/auth_decoration.dart';
import 'package:datingapp/core/constants/colors.dart';
import 'package:datingapp/core/constants/string.dart';
import 'package:datingapp/core/constants/text_style.dart';
import 'package:datingapp/core/custom_widget/custom_buttton.dart';
import 'package:datingapp/ui/screens/filterscreen/filter_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => FilterViewmodel(),
      child: Consumer<FilterViewmodel>(
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
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Row(
                      children: [
                        Image.asset("$iconsAssets/backicon.png", scale: 3),
                        Spacer(),
                        Image.asset("$iconsAssets/refresh.png", scale: 3),
                      ],
                    ),
                    20.verticalSpace,
                    Text(
                      "Filter Options",
                      style: style45.copyWith(fontSize: 32),
                    ),
                    10.verticalSpace,
                    Text(
                      'Manage and set your preferences to find the best matches for you, keep enjoying!',
                      style: style16.copyWith(color: lightpuerpl),
                    ),
                    20.verticalSpace,
                    Text("Want to Meet"),
                    DropdownField(
                      hint: "Gender",
                      items: ["Male", "Female", "Other"],
                      onChanged: (value) {},
                    ),
                    Text("Preferred Age Range"),
                    DropdownField(
                      hint: "Age",
                      items: ["18-25", "26-35", "36-45"],
                      onChanged: (value) {},
                    ),
                    Text("Preferred Language(s)"),
                    DropdownField(
                      hint: "Language",
                      items: ["English", "French", "Spanish"],
                      onChanged: (value) {},
                    ),
                    Text("Preferred Location", textAlign: TextAlign.start),

                    DropdownField(
                      hint: "Location",
                      items: ["New York", "Los Angeles", "Chicago"],
                      onChanged: (value) {},
                    ),
                    10.verticalSpace,
                    Center(
                      child: Text(
                        "Advance Filter Options",
                        style: style45.copyWith(
                          fontSize: 22,
                          color: darkblueColor,
                        ),
                      ),
                    ),
                    20.verticalSpace,
                    Center(
                      child: CustomButtton(
                        title: "Apply Filters",
                        onTap: () {},
                        height: 50.h,
                        width: 200.w,
                        borderRadius: 25.h,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DropdownField extends StatelessWidget {
  final String hint;
  final List<String> items;
  final String? value;
  final Function(String?) onChanged;

  const DropdownField({
    super.key,
    required this.hint,
    required this.items,
    required this.onChanged,
    this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: 350.w,
          child: DropdownButtonFormField<String>(
            borderRadius: BorderRadius.circular(10),

            value: value,
            alignment: AlignmentDirectional.centerStart,
            icon: Icon(Icons.keyboard_arrow_down),

            decoration: authdecoration.copyWith(hintText: hint),
            items: items.map((item) {
              return DropdownMenuItem<String>(
                alignment: Alignment.center,
                value: item,
                child: Text(item),
              );
            }).toList(),
            onChanged: onChanged,
          ),
        ),
      ),
    );
  }
}
