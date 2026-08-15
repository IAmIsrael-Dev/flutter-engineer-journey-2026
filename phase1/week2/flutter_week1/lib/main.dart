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
      title: 'My Flutter Journey',
      home: Scaffold(
        backgroundColor: const Color(0xFFF7FAFC),
        appBar: AppBar(
          title: const Text('My Flutter Journey'),
          centerTitle: true,
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white24,
        ),
        body: Center(
          child: Container(
            width: 340,
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Color(0xFFEAF3FF),
              borderRadius: BorderRadius.circular(40),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 16,
                  offset: Offset(0, 8),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
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
                  'Israel',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),

                SizedBox(height: 8),

                Text(
                  'Banker ➜ Flutter Engineer',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12, color: Colors.black87),
                ),
                SizedBox(height: 24),

                Divider(color: Colors.blueGrey),

                SizedBox(height: 16),
                Text(
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                    height: 1.5,
                    color: Colors.black87,
                  ),
                  'Passionate about building finance-focused mobile apps with Flutter. Currently transitioning from banking into professional mobile engineering.',
                ),

                SizedBox(height: 24),

                Row(
                  children: const [
                    Icon(Icons.email, color: Colors.blue),
                    SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        'israel@gmail.com',
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 14),

                Row(
                  children: const [
                    Icon(Icons.phone, color: Colors.blue),
                    SizedBox(width: 12),
                    Text('+234 800 000 0000'),
                  ],
                ),

                SizedBox(height: 14),

                Row(
                  children: const [
                    Icon(Icons.location_on, color: Colors.blue),
                    SizedBox(width: 12),
                    Text('Lagos, Nigeria'),
                  ],
                ),

                SizedBox(height: 14),

                Row(
                  children: const [
                    Icon(Icons.code, color: Colors.blue),
                    SizedBox(width: 12),
                    Expanded(
                      child: Text(
                        'github.com/israel-dev',
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 14),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Portfolio feature coming soon!'),
                        ),
                      );
                    },

                    child: const Text(
                      'View Portfolio',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
