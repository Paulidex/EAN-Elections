import 'package:flutter/material.dart';
import '../widgets/background.dart';
import '../widgets/logo.dart';

// Stateless widget representing the splash screen of the app
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Background(), // Background widget with red gradient and stripes
          Center(
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      // Adds vertical space of 230 pixels at the top
                      const SizedBox(height: 230),

                      // Displays the logo with glow effect
                      const Logo(),

                      // Adds vertical space of 100 pixels below the logo
                      const SizedBox(height: 100),

                      // Title text displayed centered below the logo
                      const Text(
                        "Voting App",
                        style: TextStyle(
                          fontSize: 50, // Large font size for title
                          fontWeight: FontWeight.bold, // Bold text
                          fontFamily: 'Roboto', // Font family used
                          color: Colors.white, // White text color
                        ),
                        textAlign: TextAlign.center, // Center align the text
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
