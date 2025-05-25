import 'package:flutter/material.dart';

// Stateless widget that displays a glowing red circle
class CircleGlow extends StatelessWidget {
  const CircleGlow({super.key});

  @override
  Widget build(BuildContext context) {
    // Exact red color used for the glow and circle
    const redGlow = Color(0xFFEB2D37);

    return Center(
      child: Container(
        width: 150, // Width of the circle
        height: 150, // Height of the circle
        decoration: BoxDecoration(
          shape: BoxShape.circle, // Makes the container circular
          color: redGlow, // Fill color of the circle
          boxShadow: [
            BoxShadow(
              color: redGlow.withAlpha(
                230,
              ), // Glow effect color with some opacity
              blurRadius: 90, // Amount of blur for the glow
              spreadRadius: 70, // How much the glow spreads outward
              offset: Offset(0, 0), // No offset, glow centered on circle
            ),
          ],
        ),
      ),
    );
  }
}
