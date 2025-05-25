import 'package:flutter/material.dart';

// Stateless widget that displays popcorn image
class Pet extends StatelessWidget {
  const Pet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/popcorn.png', // Path to the image asset
      width: 150, // Width of the image
      height: 150, // Height of the image
      fit: BoxFit
          .contain, // Scales the image to fit within given dimensions without cropping
    );
  }
}
