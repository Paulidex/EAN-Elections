import 'dart:async';
import 'package:flutter/material.dart';
import '../widgets/background.dart';
import '../widgets/logo.dart';

class ThankYouVoteScreen extends StatefulWidget {
  const ThankYouVoteScreen({super.key});

  @override
  State<ThankYouVoteScreen> createState() => _ThankYouVoteScreenState();
}

class _ThankYouVoteScreenState extends State<ThankYouVoteScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, '/vote_status');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Background(),

          SafeArea(
            top: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 230),

                  const Logo(),

                  const SizedBox(height: 100),

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

                  const SizedBox(height: 8),

                  Align(
                    child: GestureDetector(
                      onTap: () {
                        // Acción si quieres que pase algo cuando el usuario toque el texto
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
