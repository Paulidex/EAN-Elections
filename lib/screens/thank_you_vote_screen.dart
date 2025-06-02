import 'package:flutter/material.dart';
import '../widgets/background.dart';
import '../widgets/logo.dart';

// Stateless widget representing the vote confirmation screen
class ThankYouVoteScreen extends StatelessWidget {
  const ThankYouVoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Background(), // Background with gradient and stripes

          SafeArea(
            top: false, // Disable top safe area padding
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 35,
              ), // Horizontal padding
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.center, // Center content horizontally
                children: [
                  const SizedBox(height: 230), // Spacer from top

                  const Logo(), // Logo with glow effect
                  // Space between logo and confirmation text
                  const SizedBox(height: 100),

                  // Thank you message after voting
                  const Text(
                    "Thank you for your Vote!",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 8), // Small spacer
                  // Clickable text showing the user's selected vote
                  Align(
                    child: GestureDetector(
                      onTap: () {
                        // Action to show the movie that the customer voted for
                      },
                      child: const Text(
                        "Your vote was for XXX",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Roboto',
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
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
