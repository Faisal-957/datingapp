import 'package:datingapp/core/constants/auth_decoration.dart';
import 'package:datingapp/core/constants/colors.dart';
import 'package:datingapp/core/constants/string.dart';
import 'package:datingapp/core/constants/text_style.dart';
import 'package:datingapp/ui/screens/chat_screen/chat_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ChatViewmodel(),
      child: Consumer<ChatViewmodel>(
        builder: (context, value, chlid) => Scaffold(
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
                  Row(
                    children: [
                      Image.asset("$staticAssets/Ellipse.png", scale: 3),

                      Text(
                        "Add New Message",
                        style: style18.copyWith(color: darkblueColor),
                      ),
                      Spacer(),
                      Image.asset("$staticAssets/Vector.png", scale: 3),
                      30.verticalSpace,
                    ],
                  ),
                  TextFormField(
                    decoration: authdecoration.copyWith(
                      hintText: "Search Message, Match",
                    ),
                  ),
                  30.verticalSpace,
                  Text(
                    "New Match",
                    style: style18.copyWith(fontSize: 24, color: darkblueColor),
                  ),

                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: value.newmatch.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.symmetric(horizontal: 5),
                          child: value.newmatch[index],
                        );
                      },
                    ),
                  ),
                  Text(
                    "All Masseges",
                    style: style16.copyWith(color: darkblueColor, fontSize: 24),
                  ),
                  20.verticalSpace,
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: value.tilelist.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(top: 15),
                          child: value.tilelist[index],
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
