import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget{
 const  ProfileHeader({super.key});

  @override
  Widget build(context){
    return Column(children: [
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
          'Israel',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),

        SizedBox(height: 8),

        Text(
          'Flutter Mobile Engineer',
          // textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16, color: Colors.black87),
        ),
      ]);
  }
}