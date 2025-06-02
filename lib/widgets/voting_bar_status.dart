import 'package:flutter/material.dart';

class VotingBarStatus extends StatelessWidget {
  final double percentage; // value between 0.0 and 1.0
  final Color fillColor;
  final Alignment alignment; // vertical fill position (top or bottom)

  const VotingBarStatus({
    super.key,
    this.percentage = 0.5,
    this.fillColor = Colors.red,
    this.alignment = Alignment.bottomCenter,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -1.5708, // -90 grados
      child: LayoutBuilder(
        builder: (context, constraints) {
          final width = constraints.maxWidth;
          final height = constraints.maxHeight;

          return Stack(
            alignment: alignment,
            children: [
              CustomPaint(
                size: Size(width, height),
                painter: _VotingBarPainter(),
              ),
              FractionallySizedBox(
                heightFactor: percentage.clamp(0.0, 1.0),
                child: Container(
                  width: width,
                  decoration: BoxDecoration(
                    color: fillColor.withAlpha(
                      (((fillColor.a * 255.0).round() & 0xff) * 0.7).toInt(),
                    ),
                    borderRadius: BorderRadius.circular(height * 0.25),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _VotingBarPainter extends CustomPainter {
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
