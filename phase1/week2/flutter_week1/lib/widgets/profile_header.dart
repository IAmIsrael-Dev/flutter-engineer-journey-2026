import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  final String name;
  final String bio;

  const ProfileHeader({super.key, required this.name, required this.bio});

  @override
  Widget build(context) {
    return Column(
      children: [
        const CircleAvatar(
          backgroundColor: Colors.indigo,
          radius: 52,
          child: Text(
            'AI',
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        SizedBox(height: 24),

        Text(
          name.isNotEmpty ? name : 'Your name will appear here',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),

        SizedBox(height: 8),

        Text(
          bio.isNotEmpty ? bio : 'Your bio developer path will appear here',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16, color: Colors.black87),
        ),
      ],
    );
  }
}
