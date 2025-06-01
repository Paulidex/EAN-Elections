import 'package:ean_elections/widgets/icon.dart';
import 'package:flutter/material.dart';
import '../widgets/second_background.dart';
import '../widgets/text_field.dart';
import '../widgets/red_button.dart';

// Stateless widget representing the registration screen
class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
                    CrossAxisAlignment.center, // Center horizontally
                children: [
                  const SizedBox(height: 60), // Spacer at top
                  // Popcorn image widget
                  Pet(),

                  const SizedBox(height: 30), // Spacer below image
                  // Welcome message title
                  const Text(
                    "Welcome!",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 8), // Small spacer
                  // Instructional subtitle
                  const Text(
                    "Complete the information below and create your account.",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto',
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(
                    height: 40,
                  ), // Fixed space between image and form (adjustable)
                  // Form input fields
                  const CustomTextField(labelText: 'Full Name'),
                  const SizedBox(height: 25),
                  const CustomTextField(labelText: 'Email Address'),
                  const SizedBox(height: 25),
                  const CustomTextField(labelText: 'Password'),
                  const SizedBox(height: 25),
                  const CustomTextField(labelText: 'Confirm Password'),
                ],
              ),
            ),
          ),

          // Fixed position register button 50 px from bottom with horizontal padding of 35
          Positioned(
            bottom: 50,
            left: 35,
            right: 35,
            child: RedButton(
              text: 'Register',
              onPressed: () {
                // Action triggered when the register button is pressed
              },
            ),
          ),
        ],
      ),
    );
  }
}
