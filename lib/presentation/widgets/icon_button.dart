import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomIconButton extends StatelessWidget {
  final String name;
  final VoidCallback dothis;
  final Color textcolor;
  final Color backGroundColor;
  final Image image;

  const CustomIconButton({
    super.key,
    required this.textcolor,
    required this.backGroundColor,
    required this.dothis,
    required this.image,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Center( // Centering for testing visibility
      child: Padding(
        padding: const EdgeInsets.all(7.0),
        child: GestureDetector(
          onTap: dothis,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              color: backGroundColor, // Ensure this is a contrasting color
              borderRadius: BorderRadius.circular(15),
            ),
            width: MediaQuery.of(context).size.width , // Testing with smaller width
            height: 60,
            child: Row(
              children: [
                SizedBox(width: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: image, // Ensure the image is properly loaded
                ),
                SizedBox(width: 25,),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      name,
                      style: GoogleFonts.urbanist(
                        color: textcolor,
                        fontWeight: FontWeight.w600,
                      ),
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
