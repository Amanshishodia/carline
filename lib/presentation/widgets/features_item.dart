import 'package:flutter/material.dart';

class FeaturesItem extends StatelessWidget {
  final String text;

  const FeaturesItem({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(width: 1, color: Colors.grey), // Customize the border color
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 16.0, // Adjust the text size
              fontWeight: FontWeight.w500, // Adjust the font weight
            ),
          ),
        ),
      ),
    );
  }
}
