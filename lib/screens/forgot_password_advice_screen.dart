import 'dart:async';
import 'package:flutter/material.dart';
import '../widgets/background.dart';
import '../widgets/logo.dart';

class ForgotPasswordAdviceScreen extends StatefulWidget {
  const ForgotPasswordAdviceScreen({super.key});

  @override
  State<ForgotPasswordAdviceScreen> createState() => _ForgotPasswordAdviceScreenState();
}

class _ForgotPasswordAdviceScreenState extends State<ForgotPasswordAdviceScreen> {
  @override
  void initState() {
    super.initState();

    //reset_password
    Timer(const Duration(seconds: 2), () {
      if (mounted) {
        Navigator.pushReplacementNamed(context, '/reset_password');
      }
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
                children: const [
                  SizedBox(height: 230),
                  Logo(),
                  SizedBox(height: 100),
                  Text(
                    "Check your box!",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 8),
                  Text(
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
