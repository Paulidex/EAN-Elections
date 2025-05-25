import 'package:flutter/material.dart';

// Stateless widget representing a white rounded button with customizable text and action
class WhiteButton extends StatelessWidget {
  // Text displayed inside the button
  final String text;
  // Callback function triggered when the button is pressed
  final VoidCallback onPressed;

  // Constructor requiring text and onPressed callback
  const WhiteButton({Key? key, required this.text, required this.onPressed})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed, // Assign the press event callback
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white, // White background color for the button
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            30,
          ), // Rounded corners with radius 30
        ),
        minimumSize: const Size(
          300,
          40,
        ), // Minimum button size (width x height)
        padding: const EdgeInsets.symmetric(
          vertical:
              6, // Vertical padding inside the button (less vertical space)
          horizontal: 20, // Horizontal padding inside the button
        ),
        tapTargetSize: MaterialTapTargetSize
            .shrinkWrap, // Shrinks tap target to fit button size
      ),
      child: Text(
        text, // Button label text
        style: const TextStyle(
          fontSize: 18, // Smaller font size
          fontWeight: FontWeight.bold, // Bold font weight
          color: Color(0xFFEB2D37), // Text color (red tone)
          height: 1, // Adjusted line height for tighter vertical spacing
        ),
      ),
    );
  }
}
