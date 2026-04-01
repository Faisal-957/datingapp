import 'package:datingapp/core/constants/colors.dart';
import 'package:datingapp/core/constants/string.dart';
import 'package:datingapp/core/constants/text_style.dart';
import 'package:datingapp/ui/screens/notifications/notification_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart' show Get;
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:provider/provider.dart';

class Notificationscreen extends StatelessWidget {
  const Notificationscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NotificationViewmodel(),
      child: Consumer<NotificationViewmodel>(
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
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Image.asset("$iconsAssets/arrowback.png", scale: 3),
                  ),
                  20.verticalSpace,
                  Text(
                    "Notifications",
                    style: style45.copyWith(
                      fontSize: 36,
                      color: darkblueColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "Check notifications, respond & keep dating",
                    style: style16.copyWith(color: lightpuerpl),
                  ),
                  20.verticalSpace,

                  Expanded(
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: model.notifications.length,
                      itemBuilder: (context, index) {
                        final item = model.notifications[index];

                        return Notificationitem(
                          title: item.title,
                          subtitle: item.subtitle,
                          time: item.time,
                          avatarColor: item.avatarColor,
                        );
                      },
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

class Notificationitem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String time;
  final Color avatarColor;
  const Notificationitem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.time,
    required this.avatarColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.black12, width: 0.5)),
      ),
      child: Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(radius: 40, backgroundColor: avatarColor),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        overflow: TextOverflow.ellipsis,
                        title,
                        style: style16.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: darkblueColor,
                        ),
                      ),
                      5.verticalSpace,
                      SizedBox(
                        width: MediaQuery.sizeOf(context).width * 0.6,
                        child: Text(
                          subtitle,
                          style: style16.copyWith(
                            fontSize: 14,
                            color: lightblueColor,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      5.verticalSpace,
                      Text(
                        overflow: TextOverflow.ellipsis,

                        time,
                        style: style12.copyWith(color: secondaryColor),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
