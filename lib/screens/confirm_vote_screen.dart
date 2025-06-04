import 'package:flutter/material.dart';
import 'package:ean_elections/widgets/second_background.dart';
import '../widgets/ticket_and_button.dart';
import '../widgets/back_button.dart';

class ConfirmVoteScreen extends StatelessWidget {
  const ConfirmVoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          const SecondBackground(),

          SafeArea(
            top: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: BackButtonCustom(
                      onPressed: () {
                        Navigator.pushNamed(context, '/voting_page');//logic button
                      },
                    ),
                  ),

                  const Text(
                    "Confirm your vote!",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 8),

                  const Text(
                    'Please verify your selection before submission for preventing accidental choices and ensuring intentional voting',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 15),

                  Expanded(
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: SizedBox(
                        width: screenWidth * 0.8,
                        height: screenHeight * 0.72,
                        child: TicketAndButton(
                          width: screenWidth * 0.8,
                          height: screenHeight * 0.72,
                          buttonText: 'Submit', // Texto personalizable
                          onPressed: () {
                            Navigator.pushNamed(context, '/thank_you_vote');
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
