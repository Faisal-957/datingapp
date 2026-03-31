import 'package:datingapp/core/constants/text_style.dart';
import 'package:flutter/material.dart';

class MessageMenupopup extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;
  MessageMenupopup({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(
        title,
        style: style18.copyWith(
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
      ),

      onTap: onTap,
    );
  }
}
