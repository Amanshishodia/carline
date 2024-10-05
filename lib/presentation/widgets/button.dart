import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Button extends StatelessWidget {
  final String name;
  final VoidCallback dothis;
  final Color color;
  final Color textColor;
 

  const Button({
    super.key,
    required this.name,
    required this.dothis,
    required this.color,
    required this.textColor,

  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: GestureDetector(
        onTap: dothis,
        child: Container(
          decoration: BoxDecoration(
            
            color: color,
            borderRadius: BorderRadius.circular(15),
          ),
          width: MediaQuery.of(context).size.width,
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            
            children: [
             
              Expanded(
                child: Center(
                  child: Text(
                    name,
                    style: GoogleFonts.urbanist(
                      color: textColor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
