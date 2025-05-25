import 'package:flutter/material.dart';
import '../widgets/background.dart';
import '../widgets/logo.dart';
import '../widgets/white_button.dart';
import '../widgets/red_button.dart';

// Stateless widget representing the home screen of the app
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Background(), // Background widget with gradient and stripes
          Center(
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      const SizedBox(height: 60), // Spacer from top

                      const Logo(), // App logo with glow effect

                      const SizedBox(height: 120), // Spacer below logo

                      const Text(
                        "Voting App", // Main title text
                        style: TextStyle(
                          fontSize: 50, // Large font size
                          fontWeight: FontWeight.bold, // Bold font weight
                          fontFamily: 'Roboto', // Font family
                          color: Colors.white, // White color text
                        ),
                        textAlign: TextAlign.center, // Center aligned text
                      ),

                      const SizedBox(height: 130), // Spacer below title

                      RedButton(
                        text: 'Login', // Red button labeled 'Login'
                        onPressed: () {
                          // Placeholder for login action
                        },
                      ),

                      const SizedBox(height: 40), // Spacer between buttons

                      WhiteButton(
                        text: 'Register', // White button labeled 'Register'
                        onPressed: () {
                          // Placeholder for register action
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
