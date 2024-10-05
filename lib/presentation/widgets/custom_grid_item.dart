import 'package:flutter/material.dart';

class CustomGridItem extends StatelessWidget {
  final Image image;
  final String text;
  final Color backgroundColor;

  const CustomGridItem({
    Key? key,
    required this.image,
    required this.text,
    this.backgroundColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 190,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: backgroundColor, // Set the background color

      ),
      
      child: Card(
        
        color: Colors.white,
        child: Column(
          children: [
            Expanded(child: image), // Display the image
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(text),
            ),
          ],
        ),
      ),
    );
  }
}