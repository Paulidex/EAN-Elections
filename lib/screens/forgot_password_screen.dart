import 'package:flutter/material.dart';
import '../widgets/second_background.dart';
import '../widgets/text_field.dart';
import '../widgets/red_button.dart';
import '../widgets/icon.dart';

// Stateless widget representing the "Forgot Password" screen
class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const SecondBackground(), // Background with glowing circles and gradient

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
                  const SizedBox(height: 60), // Spacer at top
                  // Display popcorn image
                  const Pet(),

                  const SizedBox(height: 30), // Spacer below image
                  // Title text "Don't Worry!"
                  const Text(
                    "Don’t Worry!",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 8), // Small spacer
                  // Instructional subtitle explaining the form
                  const Text(
                    "We understand that forgetting credentials is common. Please complete the information below.",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto',
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 40), // Spacer before form fields
                  // Custom text field for email input
                  const CustomTextField(labelText: 'Email Address'),

                  const SizedBox(height: 25), // Spacer between fields
                  // Custom text field for new password input
                  const CustomTextField(labelText: 'Confirm Email'),

                  const SizedBox(height: 10), // Small spacer
                ],
              ),
            ),
          ),

          // Positioned red button at bottom with horizontal padding of 35 and 50px from bottom
          Positioned(
            bottom: 50,
            left: 35,
            right: 35,
            child: RedButton(
              text: 'Send Reset Password Link',
              onPressed: () {
                Navigator.pushNamed(context, '/forgot_password_advice');// Action triggered when the red button is pressed
              },
            ),
          ),
        ],
      ),
    );
  }
}
