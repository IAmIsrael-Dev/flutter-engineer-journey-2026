import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
import 'screens/profile_screen.dart';
import 'screens/edit_profile_screen.dart';

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
      home: EditProfileScreen(),
    );
  }
}
