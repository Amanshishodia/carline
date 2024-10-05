import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardItem extends StatelessWidget {
  final Image image;
  final String carname;
  final String rating;
  final String price;

  const CardItem({
    super.key,
    required this.carname,
    required this.image,
    required this.price,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0), // Add margin for spacing
      padding: const EdgeInsets.all(8.0), // Add padding inside the container
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 40,
                width: 120,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: Center(
                  child: Text(
                    'Free Test Drive',
                    style: GoogleFonts.urbanist(color: Colors.white),
                  ),
                ),
              ),
              Icon(
                Icons.favorite,
                color: Colors.grey,
              ),
            ],
          ),
          SizedBox(height: 8.0), // Space between elements
          image,
          SizedBox(height: 8.0), // Space between elements
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                carname,
                style: GoogleFonts.urbanist(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellowAccent,
                  ),
                  Text(rating),
                ],
              ),
            ],
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset('asset/icons/engine.png'),
                  SizedBox(width: 5),
                  Text(
                    '540 hp',
                    style: GoogleFonts.urbanist(color: Colors.grey, fontSize: 14),
                  ),
                  SizedBox(width: 10),
                  Image.asset(
                    'asset/icons/gear.png',
                    height: 25,
                    width: 25,
                    color: Colors.grey,
                  ),
                  SizedBox(width: 10),
                 Text(
                    'Automatic',
                    style: GoogleFonts.urbanist(color: Colors.grey, fontSize: 14),
                  ),
                ],
              ),
              Text(
                price,
                style: GoogleFonts.urbanist(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 19,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
