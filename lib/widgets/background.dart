import 'package:flutter/material.dart';

// Stateless widget that draws a background with vertical stripes
class Background extends StatelessWidget {
  // Number of stripes to draw
  final int stripeCount;

  // Constructor with optional stripeCount parameter, default is 16
  const Background({super.key, this.stripeCount = 16});

  @override
  Widget build(BuildContext context) {
    return Container(
      // Background color: dark blue
      color: const Color(0xFF05181F),
      child: LayoutBuilder(
        builder: (context, constraints) {
          // Get the total available width
          double totalWidth = constraints.maxWidth;
          // Calculate spacing between stripes based on total width and number of stripes
          double spacing = totalWidth / stripeCount;

          return CustomPaint(
            // Custom painter draws the stripes
            painter: _StripesPainter(
              stripeCount: stripeCount,
              stripeColor: Colors.black, // Stripe color is black
              stripeWidth: 3.0, // Width of each stripe line
              spacing: spacing, // Calculated spacing between stripes
            ),
            // Empty container as child just to occupy space
            child: Container(),
          );
        },
      ),
    );
  }
}

// CustomPainter class responsible for drawing vertical stripes
class _StripesPainter extends CustomPainter {
  final int stripeCount; // Number of stripes
  final Color stripeColor; // Color of stripes
  final double stripeWidth; // Width of each stripe
  final double spacing; // Spacing between stripes

  // Constructor requiring all properties
  _StripesPainter({
    required this.stripeCount,
    required this.stripeColor,
    required this.stripeWidth,
    required this.spacing,
  });

  @override
  void paint(Canvas canvas, Size size) {
    // Setup paint object with color and stroke width
    final paint = Paint()
      ..color = stripeColor
      ..strokeWidth = stripeWidth;

    // Draw vertical lines for each stripe at calculated intervals
    for (int i = 0; i <= stripeCount; i++) {
      double x = i * spacing;
      canvas.drawLine(Offset(x, 0), Offset(x, size.height), paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
  // Returning false because the painting is static and does not need to repaint
}
