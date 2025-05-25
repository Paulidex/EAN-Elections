import 'package:flutter/material.dart';
import '../widgets/second_background.dart';
import '../widgets/text_field.dart';
import '../widgets/red_button.dart';
import '../widgets/icon.dart';

// Stateless widget representing the Reset Password screen
class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const SecondBackground(), // Background with glowing circles and gradient

          SafeArea(
            top: false, // Disable safe area padding at the top
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 35,
              ), // Horizontal padding
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.center, // Center children horizontally
                children: [
                  const SizedBox(height: 60), // Spacer at the top
                  // Display the pet image (popcorn icon)
                  const Pet(),

                  const SizedBox(height: 30), // Spacer below image
                  // Title text indicating reset password section
                  const Text(
                    "Reset Password Section!",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 8), // Small spacer
                  // Instructional subtitle advising on password choice
                  const Text(
                    "We recommend choosing a password that you can easily remember.",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto',
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 40), // Spacer before input fields
                  // Custom text field for new password input
                  const CustomTextField(labelText: 'Password'),

                  const SizedBox(height: 25), // Spacer between fields
                  // Custom text field for confirming password input
                  const CustomTextField(labelText: 'Confirm Password'),

                  const SizedBox(height: 10), // Small spacer
                ],
              ),
            ),
          ),

          // Positioned red button at the bottom with horizontal padding
          Positioned(
            bottom: 50,
            left: 35,
            right: 35,
            child: RedButton(
              text: 'Start Voting',
              onPressed: () {
                // Action triggered when the red button is pressed
              },
            ),
          ),
        ],
      ),
    );
  }
}
