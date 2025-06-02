import 'package:flutter/material.dart';
import 'ticket.dart';
import 'vote_button.dart';

class TicketAndButton extends StatelessWidget {
  final double width;
  final double height;
  final VoidCallback? onPressed;
  final String buttonText;

  const TicketAndButton({
    super.key,
    this.width = 300,
    this.height = 600,
    this.onPressed,
    this.buttonText = 'Vote',
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Ticket(
        width: width,
        height: height,
        child: LayoutBuilder(
          builder: (context, constraints) {
            final double buttonWidth = constraints.maxWidth * 0.5;
            final double buttonHeight = constraints.maxHeight * 0.09;
            final double fontSize = buttonHeight * 0.4;

            return Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: constraints.maxHeight * 0.04),
                child: VoteButton(
                  onTap: onPressed,
                  width: buttonWidth,
                  height: buttonHeight,
                  fontSize: fontSize,
                  text: buttonText,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
