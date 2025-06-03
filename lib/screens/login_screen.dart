import 'package:flutter/material.dart';
import '../widgets/second_background.dart';
import '../widgets/text_field.dart';
import '../widgets/red_button.dart';
import '../widgets/icon.dart';

// Stateless widget representing the login screen
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const SecondBackground(), // Background with glowing circles and gradient
          SafeArea(
            top: false, // Do not apply safe area padding at the top
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

                  const SizedBox(height: 30), // Spacer below the image
                  // Welcome message title
                  const Text(
                    "Welcome Back!",
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
                    "Enter your credentials and login to your account",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Roboto',
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 40), // Spacer before text fields
                  // Custom text field for email input
                  const CustomTextField(labelText: 'Email Address'),

                  const SizedBox(height: 25), // Spacer between text fields
                  // Custom text field for password input
                  const CustomTextField(labelText: 'Password'),

                  const SizedBox(height: 10), // Small spacer
                  // "Forget password?" text aligned to the right with tap detection
                  Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, '/forgot_password');// Action triggered when "Forget password?" is tapped
                      },
                      child: const Text(
                        "Forget password?",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Roboto',
                          color: Color(0xFFDD4049), // Red color text
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Positioned red login button at the bottom with horizontal margins
          Positioned(
            bottom: 50,
            left: 35,
            right: 35,
            child: RedButton(
              text: 'Log in',
              onPressed: () {
                Navigator.pushNamed(context, '/voting_page');// Action triggered when login button is pressed
              },
            ),
          ),
        ],
      ),
    );
  }
}
