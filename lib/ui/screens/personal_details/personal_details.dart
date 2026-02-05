// ignore_for_file: deprecated_member_use, file_names

import 'package:datingapp/core/constants/auth_decoration.dart';
import 'package:datingapp/core/constants/string.dart';
import 'package:datingapp/core/constants/text_style.dart';
import 'package:datingapp/core/custom_widget/custom_buttton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class Personaldetails extends StatefulWidget {
  const Personaldetails({super.key});

  @override
  State<Personaldetails> createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<Personaldetails> {
  // ✅ Controller should be in State class
  TextEditingController dobController = TextEditingController();
  String? selectedGender;

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
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            // ✅ Optional: prevent overflow
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                50.verticalSpace,
                Center(
                  child: Text(
                    "Personal Details",
                    style: style45.copyWith(fontSize: 36),
                  ),
                ),
                Center(
                  child: Text(
                    "Fill up the following details,",
                    style: style16.copyWith(
                      color: Color(0xFF645290),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),

                30.verticalSpace,
                Center(
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        width: 150.w,
                        height: 150.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.shade300,
                          border: Border.all(color: Colors.white, width: 4),
                        ),
                      ),
                      Positioned(
                        top: 100.h,
                        left: 110.w,
                        child: Image.asset("$iconsAssets/Camera.png", scale: 5),
                      ),
                    ],
                  ),
                ),
                20.verticalSpace,
                Text(
                  "First Name",
                  style: style16.copyWith(fontWeight: FontWeight.w100),
                ),
                10.verticalSpace,
                TextFormField(
                  decoration: authdecoration.copyWith(hintText: "First Name"),
                ),

                20.verticalSpace,
                Text(
                  "Last Name",
                  style: style16.copyWith(fontWeight: FontWeight.w100),
                ),
                10.verticalSpace,
                TextFormField(
                  decoration: authdecoration.copyWith(hintText: "Last Name"),
                ),

                20.verticalSpace,
                Text(
                  "DOB",
                  style: style16.copyWith(fontWeight: FontWeight.w100),
                ),
                10.verticalSpace,
                TextFormField(
                  controller: dobController,
                  readOnly: true,
                  decoration: authdecoration.copyWith(
                    hintText: "DOB",

                    suffixIcon: Image.asset(
                      "$iconsAssets/Calendar.png",
                      scale: 1,
                    ),
                    border: OutlineInputBorder(),
                  ),
                  onTap: () async {
                    // ✅ Fixed BottomSheet + Height
                    DateTime? date = await showModalBottomSheet<DateTime>(
                      context: context,
                      builder: (_) {
                        return SizedBox(
                          height: 350, // important to prevent full-screen cover
                          child: SfDateRangePicker(
                            selectionMode: DateRangePickerSelectionMode.single,
                            view: DateRangePickerView.decade,
                            maxDate: DateTime.now(),
                            showActionButtons: true,
                            onSubmit: (value) {
                              Navigator.pop(context, value);
                            },
                            onCancel: () {
                              Navigator.pop(context);
                            },
                          ),
                        );
                      },
                    );

                    if (date != null) {
                      dobController.text =
                          "${date.day}/${date.month}/${date.year}";
                    }
                  },
                ),

                20.verticalSpace,
                Text(
                  "Select Gender",
                  style: style16.copyWith(fontWeight: FontWeight.w100),
                ),
                10.verticalSpace,
                DropdownMenu<String>(
                  inputDecorationTheme: InputDecorationTheme(
                    filled: true,
                    fillColor: Colors.white,
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(60),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        width: 2,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(60),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        width: 2,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(60),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                        width: 2,
                      ),
                    ),
                  ),
                  width: MediaQuery.of(context).size.width - 32, // side margin
                  menuStyle: MenuStyle(
                    side: MaterialStateProperty.all(
                      BorderSide(
                        color: const Color.fromARGB(255, 77, 6, 6),
                        width: 2,
                      ),
                    ),
                    padding: MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 16),
                    ),
                  ),
                  dropdownMenuEntries: [
                    "Male",
                    "Female",
                    "Other",
                  ].map((e) => DropdownMenuEntry(value: e, label: e)).toList(),
                  hintText: 'Select Gender',
                  trailingIcon: Icon(Icons.keyboard_arrow_down),
                  onSelected: (value) {
                    setState(() {
                      selectedGender = value; // update value
                    });
                  },
                ),

                40.verticalSpace,
                Center(
                  child: CustomButtton(
                    title: "Continue",
                    onTap: () {},
                    width: 212.w,
                    height: 65.h,
                    borderRadius: 80,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
