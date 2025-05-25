import 'package:flutter/material.dart';
import 'background.dart';
import 'circle.dart'; // Make sure the import path is correct

// Stateless widget that overlays multiple glowing circles on top of the Background widget
class SecondBackground extends StatelessWidget {
  const SecondBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Background(), // Base background widget
        // Positioned glowing circle partially offscreen top-left
        const Positioned(top: -130, left: -130, child: CircleGlow()),
        // Positioned glowing circle partially offscreen top-right
        const Positioned(top: -130, right: -130, child: CircleGlow()),
        // Positioned glowing circle partially offscreen bottom-left
        const Positioned(bottom: -130, left: -130, child: CircleGlow()),
        // Positioned glowing circle partially offscreen bottom-right
        const Positioned(bottom: -130, right: -130, child: CircleGlow()),
      ],
    );
  }
}
