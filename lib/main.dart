import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/home_screen.dart';
import 'screens/register_screen.dart';
import 'screens/register_confirmation_screen.dart';
import 'screens/login_screen.dart';
import 'screens/forgot_password_screen.dart';
import 'screens/forgot_password_advice_screen.dart';
import 'screens/reset_password_screen.dart';
import 'screens/confirm_vote_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      //home: HomeScreen(),
      //home: RegisterScreen(),
      //home: RegisterConfirmationScreen(),
      //home: LoginScreen(),
      //home: ForgotPasswordScreen(),
      //home: ForgotPasswordAdviceScreen(),
      //home: ResetPasswordScreen(),
      //home: ConfirmVoteScreen(),
    );
  }
}
