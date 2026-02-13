import 'package:datingapp/core/constants/colors.dart';
import 'package:datingapp/core/constants/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListtile extends StatelessWidget {
  final String title;
  final String date;
  final String subtitle;
  const CustomListtile({
    super.key,
    required this.title,
    required this.date,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 0, horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 5, offset: Offset(0, 3)),
        ],
      ),
      child: ListTile(
        leading: Container(
          padding: EdgeInsets.zero,
          height: double.infinity,
          width: 60.w,
          decoration: BoxDecoration(
            color: darkblueColor,
            borderRadius: BorderRadius.circular(10),
          ),
        ),

        title: Row(
          children: [
            Text(title, style: style16.copyWith()),
            Spacer(),
            Text(date),
          ],
        ),
        subtitle: Text(subtitle, style: TextStyle(color: Colors.grey)),
      ),
    );
  }
}
