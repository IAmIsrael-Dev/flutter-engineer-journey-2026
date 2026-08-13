import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Israel Flutter Journey',
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter week 1'), centerTitle: true),
        body: Center(
          child: const Text(
            'Hello Israel',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
