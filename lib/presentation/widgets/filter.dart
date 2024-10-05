import 'package:carline/presentation/pages/home/filter_page.dart';
import 'package:flutter/material.dart';

class Filter extends StatelessWidget {
  final String text;
  final Image? image;

  const Filter({super.key, required this.text, this.image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return FilterPage();
                    }));
      },
      child: Card(
        child: SizedBox(
          
          // Set a fixed width if needed
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Display the image if provided, otherwise show a default icon
              image ??
                  Icon(
                    Icons.filter_list,
                  ), // Use the image parameter if it's not null
              Text(text),
              SizedBox(
                width: 10,
              ) // Use the text parameter here
            ],
          ),
        ),
      ),
    );
  }
}
