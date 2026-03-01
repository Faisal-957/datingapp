import 'package:flutter/material.dart';

class Chatbox extends StatelessWidget {
  const Chatbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      body: SafeArea(
        child: Column(
          children: [
            /// HEADER
            Container(
              height: 140,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xffFD297B), Color(0xff9424F0)],
                ),
              ),
              child: SafeArea(
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    Icon(Icons.arrow_back, color: Colors.white),
                    Spacer(),
                    Icon(Icons.more_vert, color: Colors.white),
                    SizedBox(width: 10),
                  ],
                ),
              ),
            ),

            /// PROFILE
            Transform.translate(
              offset: Offset(0, -40),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.grey.shade300,
                    child: Icon(Icons.person, size: 40),
                  ),

                  SizedBox(height: 8),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Belle Benson",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 5),
                      CircleAvatar(radius: 4, backgroundColor: Colors.green),
                    ],
                  ),
                ],
              ),
            ),

            /// CHAT LIST
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 16),
                children: [
                  leftBubble("Hi, Good Morning", "8:19 AM"),

                  rightBubble("Good Morning, any plan for today?", "09:37 AM"),

                  leftBubble("Nothing much, W@H, Yours?", "9:49 AM"),
                ],
              ),
            ),

            /// INPUT BOX
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
                        border: InputBorder.none,
                      ),
                    ),
                  ),

                  Icon(Icons.send, color: Colors.deepPurple),

                  SizedBox(width: 10),

                  Icon(Icons.emoji_emotions_outlined, color: Colors.pink),

                  SizedBox(width: 10),

                  Icon(Icons.attach_file, color: Colors.deepPurple),

                  SizedBox(width: 10),

                  Icon(Icons.mic, color: Colors.pink),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// LEFT MESSAGE
  Widget leftBubble(String text, String time) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(text),
            SizedBox(height: 5),
            Text(time, style: TextStyle(fontSize: 10, color: Colors.grey)),
          ],
        ),
      ),
    );
  }

  /// RIGHT MESSAGE
  Widget rightBubble(String text, String time) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Color(0xffE8E3FF),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(text),
            SizedBox(height: 5),
            Text(time, style: TextStyle(fontSize: 10, color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
