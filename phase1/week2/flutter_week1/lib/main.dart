import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
import 'widgets/profile_header.dart';
import 'widgets/profile_info_row.dart';
import 'widgets/profile_bio.dart';
import 'widgets/portfolio_button.dart';
import 'widgets/social_link_row.dart';
import 'screens/state_demo_screens.dart'; 
import 'screens/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.sizeOf(context).width;
    final screenHeght = MediaQuery.sizeOf(context).height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Flutter Journey',
      home: const ProfileScreen()
    );
  }
}
