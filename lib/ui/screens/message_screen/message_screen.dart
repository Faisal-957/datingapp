import 'package:datingapp/core/constants/colors.dart';
import 'package:datingapp/core/constants/string.dart';
import 'package:datingapp/core/custom_widget/custom_chat_bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("$staticAssets/message.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    SizedBox(width: 20),
                    Icon(Icons.arrow_back, color: Colors.white),
                    Spacer(),

                    Icon(Icons.more_vert, color: Colors.black),
                  ],
                ),
              ),
              SizedBox(width: 20),

              Container(
                height: 100.h,
                width: 100.w,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: Color(0xFFE0E0E0), width: 4),
                ),
                child: Icon(Icons.person, size: 50, color: Colors.black),
              ),
              SizedBox(height: 10),
              Text(
                "Belle Benson",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: darkblueColor,
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("$iconsAssets/chat.png", scale: 3),
                  SizedBox(width: 10),
                  Image.asset("$iconsAssets/videoicon.png", scale: 3),
                ],
              ),
              SizedBox(height: 20),
              Expanded(
                child: ShaderMask(
                  shaderCallback: (Rect rects) {
                    return LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.black,
                        Colors.black,
                        Colors.transparent,
                      ],
                      stops: [0.0, 0.5, 0.95, 1.0],
                    ).createShader(rects);
                  },
                  blendMode: BlendMode.dstIn,
                  child: ListView(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    shrinkWrap: true,
                    children: [
                      CustomChatBubble(
                        message: "Hey, how are you doing?",
                        isSentByMe: false,
                        time: "10:30 AM",
                        senderName: "Belle",
                      ),
                      CustomChatBubble(
                        message: "I'm good, thanks! How about you?",
                        isSentByMe: true,
                        time: "10:32 AM",
                      ),
                      CustomChatBubble(
                        message: "I'm doing great! Just wanted to check in.",
                        isSentByMe: false,
                        time: "10:35 AM",
                        senderName: "Belle",
                      ),
                      CustomChatBubble(
                        message: "Hey, how are you doing?",
                        isSentByMe: false,
                        time: "10:30 AM",
                        senderName: "Belle",
                      ),
                      CustomChatBubble(
                        message: "I'm good, thanks! How about you?",
                        isSentByMe: true,
                        time: "10:32 AM",
                      ),
                      CustomChatBubble(
                        message: "I'm doing great! Just wanted to check in.",
                        isSentByMe: false,
                        time: "10:35 AM",
                        senderName: "Belle",
                      ),
                    ],
                  ),
                ),
              ),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 5)],
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Type Message",
                          hintStyle: TextStyle(
                            color: darkblueColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    Image.asset("$iconsAssets/msgicon.png", scale: 3),

                    SizedBox(width: 10),

                    Image.asset("$iconsAssets/emojiicon.png", scale: 3),
                    SizedBox(width: 10),

                    Image.asset("$iconsAssets/attachicon.png", scale: 3),

                    SizedBox(width: 10),

                    Image.asset("$iconsAssets/recordicon.png", scale: 3),

                    SizedBox(width: 10),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
