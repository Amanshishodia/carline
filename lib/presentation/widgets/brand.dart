import 'package:flutter/material.dart';

class Brand extends StatelessWidget {
  final String imagePath; // Path to the image asset
  final String name;

  const Brand({super.key, required this.imagePath, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 1,color: Colors.grey),
        borderRadius: BorderRadius.circular(10)
      ),
      height: 200,
      width: 90,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // Center the content vertically
        crossAxisAlignment: CrossAxisAlignment.center, // Center the content horizontally
        children: [
          Image.asset(
            imagePath,
            height: 40, // Adjust the image height as needed
            width: 70,   // Adjust the image width to match the container
            fit: BoxFit.contain, // Fit the image within its container
          ),
          SizedBox(height: 8), // Spacing between the image and text
          Text(
            name,
            style: TextStyle(
              fontSize: 10, // Adjust font size as needed
              fontWeight: FontWeight.bold, // Optional: makes text bold
            ),
            textAlign: TextAlign.center, // Center the text
          ),
        ],
      ),
    );
  }
}
