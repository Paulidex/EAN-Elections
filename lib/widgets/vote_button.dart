import 'package:flutter/material.dart';

class VoteButton extends StatelessWidget {
  final VoidCallback? onTap;
  final double width;
  final double height;
  final double fontSize;
  final String text;

  const VoteButton({
    super.key,
    this.onTap,
    this.width = 120,
    this.height = 40,
    this.fontSize = 16,
    this.text = 'Vote',
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CustomPaint(
        painter: _VoteButtonPainter(),
        child: SizedBox(
          width: width,
          height: height,
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _VoteButtonPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final borderPaint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    final whitePaint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    final double cornerRadius = size.height * 0.25;

    Path basePath = Path()
      ..addRect(Rect.fromLTWH(0, 0, size.width, size.height));

    Path cutCorners = Path()
      ..addOval(Rect.fromCircle(center: Offset(0, 0), radius: cornerRadius))
      ..addOval(
        Rect.fromCircle(center: Offset(size.width, 0), radius: cornerRadius),
      )
      ..addOval(
        Rect.fromCircle(center: Offset(0, size.height), radius: cornerRadius),
      )
      ..addOval(
        Rect.fromCircle(
          center: Offset(size.width, size.height),
          radius: cornerRadius,
        ),
      );

    Path shape = Path.combine(PathOperation.difference, basePath, cutCorners);

    canvas.drawPath(shape, whitePaint);
    canvas.drawPath(shape, borderPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
