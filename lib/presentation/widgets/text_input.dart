import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final String hint;
  final Icon? icon;
  final Icon? lastIcon;
  final bool obscureText;

  const TextInput({
    super.key,
    required this.hint,
    this.icon,
    this.lastIcon,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      
      obscureText: obscureText,
      decoration: InputDecoration(
        
        prefixIconColor: Colors.grey,
        suffixIconColor: Colors.grey,
        hintText: hint,
        prefixIcon: icon,
        suffixIcon: lastIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: const BorderSide(
            color: Colors.grey, // Define the border color
            width: 1.0, // Define the border width
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: const BorderSide(
            color: Colors.grey, // Color for the border when not focused
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: const BorderSide(
            color: Colors.blue, // Color for the border when focused
            width: 2.0,
          ),
        ),
      ),
    );
  }
}
