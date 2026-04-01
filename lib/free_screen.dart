import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black54),
          onPressed: () {},
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Notifications',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF2D2D52),
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Check notifications, respond & keep dating',
                  style: TextStyle(fontSize: 16, color: Colors.black54),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView(
              children: const [
                NotificationItem(
                  title: 'Myley Corbyn liked you',
                  subtitle:
                      'Hi Mathew, Myley here. Would you like to chat? waiting..',
                  time: '03:42 PM | 30.04.2021',
                  avatarColor: Colors.deepPurpleAccent,
                ),
                NotificationItem(
                  title: 'Big Discount, Hurry!',
                  subtitle:
                      "Season's discount, only for you, put yourself in spotlight, enjoy dating.",
                  time: '09:32 AM | 30.04.2021',
                  avatarColor: Colors.red,
                  isDiscount: true,
                ),
                NotificationItem(
                  title: 'Sara Christin liked you back',
                  subtitle:
                      'Hi Mathew, Thanks for your interest. Would love to hear you back..',
                  time: '11:13 AM | 29.04.2021',
                  avatarColor: Colors.deepPurpleAccent,
                ),
                NotificationItem(
                  title: 'You liked Ruby',
                  subtitle:
                      "You liked Ruby, check out what's her response, keep dating..",
                  time: '09:57 AM | 29.04.2021',
                  avatarColor: Colors.deepPurpleAccent,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NotificationItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String time;
  final Color avatarColor;
  final bool isDiscount;

  const NotificationItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.time,
    required this.avatarColor,
    this.isDiscount = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.black12, width: 0.5)),
      ),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Avatar Circle
          CircleAvatar(
            radius: 28,
            backgroundColor: avatarColor,
            child: isDiscount
                ? const Icon(Icons.favorite, color: Colors.white, size: 30)
                : null,
          ),
          const SizedBox(width: 16),
          // Content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.black54,
                    height: 1.3,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  time,
                  style: const TextStyle(fontSize: 12, color: Colors.black38),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
