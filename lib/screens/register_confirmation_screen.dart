import 'package:flutter/material.dart';
import '../widgets/background.dart';
import '../widgets/logo.dart';
import '../widgets/red_button.dart';

// Stateless widget representing the registration confirmation screen
class RegisterConfirmationScreen extends StatelessWidget {
  const RegisterConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Background(), // Background with gradient and stripes

          SafeArea(
            top: false, // Disable safe area padding at the top
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 35,
              ), // Horizontal padding
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.center, // Center content horizontally
                children: [
                  const SizedBox(height: 60), // Spacer from top

                  const Logo(), // Logo with glow effect
                  // Space between logo and congratulatory text
                  const SizedBox(height: 200),

                  // Congratulatory headline text
                  const Text(
                    "Congratulations!",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 8), // Small spacer
                  // Confirmation message text
                  const Text(
                    "Your account has been successfully created.",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto',
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),

          // Positioned button fixed 50px from bottom with horizontal padding 35
          Positioned(
            bottom: 50,
            left: 35,
            right: 35,
            child: RedButton(
              text: 'Start Voting',
              onPressed: () {
                Navigator.pushNamed(context, '/voting_page'); // Action when the button is pressed
              },
            ),
          ),
        ],
      ),
    );
  }
}
