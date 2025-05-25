import 'package:flutter/material.dart';

// Stateless widget that creates a customizable text input field with a label
class CustomTextField extends StatelessWidget {
  // Label text displayed above or inside the text field
  final String labelText;

  // Constructor requiring the label text
  const CustomTextField({super.key, required this.labelText});

  @override
  Widget build(BuildContext context) {
    return TextField(
      // Text style for the user input text
      style: const TextStyle(
        color: Color(0xFFE05259), // Text color (reddish tone)
        fontSize: 24, // Font size for input text
        fontFamily: 'Roboto', // Font family
        fontWeight: FontWeight.w500, // Medium font weight
      ),
      decoration: InputDecoration(
        isDense: true, // Reduces vertical padding for a more compact look
        filled: true, // Enables background fill color
        fillColor: Colors.white, // Background color of the text field
        labelText: labelText, // Label shown inside or above the field
        labelStyle: const TextStyle(
          color: Color(0xFFE05259), // Label color matching input text color
          fontSize: 16, // Label font size
          fontFamily: 'Roboto', // Label font family
          fontWeight: FontWeight.w500, // Medium font weight for label
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 3, // Minimal vertical padding for tight height
          horizontal: 20, // Horizontal padding inside the field
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            15,
          ), // Rounded corners with radius 15
          borderSide: BorderSide.none, // No visible border by default
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            15,
          ), // Rounded corners when enabled
          borderSide: BorderSide.none, // No border line when enabled
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            15,
          ), // Rounded corners when focused
          borderSide: const BorderSide(
            color: Color(0xFFE05259), // Border color on focus (reddish)
            width: 2, // Border thickness when focused
          ),
        ),
      ),
      maxLines: 1, // Restricts input to a single line
      keyboardType:
          TextInputType.text, // Keyboard type optimized for regular text input
    );
  }
}
