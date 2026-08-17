import 'package:flutter/material.dart';

class StateDemoScreen extends StatefulWidget {
  const StateDemoScreen({super.key});

  @override
  State<StateDemoScreen> createState() => _StateDemoScreenState();
}

class _StateDemoScreenState extends State<StateDemoScreen> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Start demo')),
      body: Center(
        child: Text(
          count.toString(),
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                'Count in progress',
                style: TextStyle(fontSize: 24),
              ),
              duration: Duration(seconds: 1),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
