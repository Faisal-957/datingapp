import 'package:datingapp/core/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomChatBubble extends StatelessWidget {
  final String message;
  final bool isSentByMe;
  final String time;
  final String senderName;

  const CustomChatBubble({
    super.key,
    required this.message,
    required this.isSentByMe,
    required this.time,
    this.senderName = "you",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      decoration: BoxDecoration(
        color: isSentByMe ? Colors.white : Color(0xFFF1EFE2),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(isSentByMe ? 35 : 0),
          topRight: Radius.circular(isSentByMe ? 0 : 35),
          bottomLeft: Radius.circular(35),
          bottomRight: Radius.circular(35),
        ),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(0, 3)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Text(
                senderName,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: isSentByMe ? darkblueColor : Color(0xFFC43F8E),
                ),
              ),
              Spacer(),
              Text(
                time,
                style: TextStyle(fontSize: 18, color: Colors.grey.shade600),
              ),
            ],
          ),

          Text(message, style: TextStyle(fontSize: 16, color: Colors.black87)),
          SizedBox(height: 4),
        ],
      ),
    );
  }
}
