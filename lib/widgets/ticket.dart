import 'package:flutter/material.dart';

class Ticket extends StatelessWidget {
  final double width;
  final double height;
  final Widget? child;
  final bool cutBottomShort; // new parameter to control bottom cut

  const Ticket({
    Key? key,
    this.width = 300,
    this.height = 600,
    this.child,
    this.cutBottomShort = false, // By default, does not cut short the bottom
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomPaint(
          size: Size(width, height),
          painter: _TicketPainter(cutBottomShort: cutBottomShort),
        ),
        if (child != null) child!,
      ],
    );
  }
}

class _TicketPainter extends CustomPainter {
  final bool cutBottomShort;

  _TicketPainter({required this.cutBottomShort});

  @override
  void paint(Canvas canvas, Size size) {
    final paintWhite = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    final double cornerRadius = size.width * 0.13;
    final double sideCutRadius = size.width * 0.07;
    final centerY = size.height * 0.65;
    final bottomLimit = cutBottomShort ? size.height - 40 : size.height;

    Path rectPath = Path()
      ..addRect(Rect.fromLTWH(0, 0, size.width, bottomLimit));

    Path cutCircles = Path()
      ..addOval(Rect.fromCircle(center: Offset(0, 0), radius: cornerRadius))
      ..addOval(
        Rect.fromCircle(center: Offset(size.width, 0), radius: cornerRadius),
      )
      ..addOval(
        Rect.fromCircle(center: Offset(0, bottomLimit), radius: cornerRadius),
      )
      ..addOval(
        Rect.fromCircle(
          center: Offset(size.width, bottomLimit),
          radius: cornerRadius,
        ),
      )
      ..addOval(
        Rect.fromCircle(center: Offset(0, centerY), radius: sideCutRadius),
      )
      ..addOval(
        Rect.fromCircle(
          center: Offset(size.width, centerY),
          radius: sideCutRadius,
        ),
      );

    Path ticketPath = Path.combine(
      PathOperation.difference,
      rectPath,
      cutCircles,
    );

    canvas.drawPath(ticketPath, paintWhite);

    final dashWidth = size.width * 0.07;
    final dashSpace = size.width * 0.07;
    final dashPaint = Paint()
      ..color = Colors.black
      ..strokeWidth = size.width * 0.015
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    double startX = cornerRadius;
    while (startX < size.width - cornerRadius) {
      canvas.drawLine(
        Offset(startX, centerY),
        Offset(startX + dashWidth, centerY),
        dashPaint,
      );
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
