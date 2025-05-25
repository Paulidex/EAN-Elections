import 'package:flutter/material.dart';
import 'circle.dart'; // Importing the CircleGlow widget

// Stateless widget that displays a logo consisting of a glowing circle with an image on top
class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150, // Width of the logo container
      height: 150, // Height of the logo container
      child: Stack(
        alignment: Alignment.center, // Center children on top of each other
        children: [
          const CircleGlow(), // The glowing circular background
          Image.asset(
            'assets/images/popcorn.png', // Image displayed above the glowing circle
            width: 150,
            height: 150,
            fit: BoxFit
                .contain, // Scale image to fit within the box without cropping
          ),
        ],
      ),
    );
  }
}
