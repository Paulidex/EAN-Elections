import 'package:flutter/material.dart';

// Stateless widget representing a red rounded button with customizable text and action
class RedButton extends StatelessWidget {
  // Text to display inside the button
  final String text;
  // Callback function to execute when the button is pressed
  final VoidCallback onPressed;

  // Constructor requiring text and onPressed callback
  const RedButton({Key? key, required this.text, required this.onPressed})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed, // Assign the callback for button press
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFEB2D37), // Red background color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            30,
          ), // Rounded corners with radius 30
        ),
        minimumSize: const Size(
          300,
          40,
        ), // Minimum size of the button (width x height)
        padding: const EdgeInsets.symmetric(
          vertical: 6, // Vertical padding inside the button
          horizontal: 20, // Horizontal padding inside the button
        ), // Less vertical padding for a tighter button
        tapTargetSize:
            MaterialTapTargetSize.shrinkWrap, // Reduce extra tap target padding
      ),
      child: Text(
        text, // Display the text passed as parameter
        style: const TextStyle(
          fontSize: 18, // Slightly smaller font size
          fontWeight: FontWeight.bold, // Bold text
          color: Colors.white, // White text color
          height: 1, // Adjusted line height to reduce vertical space
        ),
      ),
    );
  }
}
