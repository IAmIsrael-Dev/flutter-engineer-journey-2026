import 'package:flutter/material.dart';

class PortfolioButton extends StatelessWidget {
  final VoidCallback onPressed;

  const PortfolioButton({super.key, required this.onPressed});

  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28),
          ),
        ),
        onPressed: onPressed,
        child: const Text('View Profile')
      ),
    );
  }
}
