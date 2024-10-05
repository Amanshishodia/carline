import 'package:flutter/material.dart';

class Mytab extends StatelessWidget {
  final Image image;
  final String text;

  const Mytab({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Container(
        height: 100,
        padding: const EdgeInsets.symmetric(horizontal: 10), // Padding around the content
        decoration: BoxDecoration(
          border: Border.all(width: 0.5), // Border around the tab
          borderRadius: BorderRadius.circular(12), // Rounded corners
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center, // Center the content horizontally
          children: [
            // Display the image with optional size constraints
            SizedBox(
              height: 24, // Set height of the image
              width: 24,  // Set width of the image
              child: image,
            ),
            const SizedBox(width: 8), // Space between the image and text
            // Display the text with optional styling
            Text(
              text,
              style: TextStyle(
                fontSize: 16, // Font size for the text
                fontWeight: FontWeight.bold, // Make the text bold
              ),
            ),
          ],
        ),
      ),
    );
  }
}
