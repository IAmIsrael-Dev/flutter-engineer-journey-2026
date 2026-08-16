import 'package:flutter/material.dart';

class ProfileBio extends StatelessWidget {
  final String bio;

  const ProfileBio({super.key, required this.bio});

  @override
  Widget build(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'About Me',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),

        const SizedBox(height: 8),

        Text(bio, style: const TextStyle(fontSize: 15, height:1.5))
      ],
    );
  }
}
