import 'package:flutter/material.dart';

class SocialLinkRow extends StatelessWidget {
  final IconData icon;
  final String platform;
  final String username;

  const SocialLinkRow({
    super.key,
    required this.icon,
    required this.platform,
    required this.username,
  });

  @override
  Widget build(context) {
    return Row(
      children: [
        Icon(icon, color: Colors.blue),
        SizedBox(width: 8),
        Text(
          platform,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
        ),
        SizedBox(width: 12),
        Text(username, style: TextStyle(fontSize: 12)),
      ],
    );
  }
}
