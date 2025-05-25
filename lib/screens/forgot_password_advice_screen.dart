import 'package:flutter/material.dart';
import '../widgets/background.dart';
import '../widgets/logo.dart';

// Stateless widget representing the screen that advises the user to check their email after requesting a password reset
class ForgotPasswordAdviceScreen extends StatelessWidget {
  const ForgotPasswordAdviceScreen({super.key});

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
                  // Space between logo and text
                  const SizedBox(height: 100),

                  // Title text advising user to check their inbox
                  const Text(
                    "Check your box!",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 8), // Small spacer
                  // Instructional text explaining that the password reset link was sent
                  const Text(
                    "We have sent you a password reset link to your email. Click on it and follow the instructions to update your password.",
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
        ],
      ),
    );
  }
}
