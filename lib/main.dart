import 'package:flutter/material.dart' show BuildContext, MaterialApp, StatelessWidget, Widget, runApp;
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/home_screen.dart';
import 'screens/register_screen.dart';
import 'screens/register_confirmation_screen.dart';
import 'screens/login_screen.dart';
import 'screens/forgot_password_screen.dart';
import 'screens/forgot_password_advice_screen.dart';
import 'screens/reset_password_screen.dart';
import 'screens/thank_you_vote_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/edit_profile_screen.dart';
import 'screens/voting_page.dart';
import 'screens/confirm_vote_screen.dart';
import 'screens/vote_status_screen.dart';
import 'services/navigation_service.dart';


void main() {
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'firebase_options.dart';
import 'screens/pelis_screen.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: NavigationService.navigatorKey,
      debugShowCheckedModeBanner: false,
      //home: SplashScreen(),
      //home: HomeScreen(),
      //home: RegisterScreen(),
      //home: RegisterConfirmationScreen(),
      //home: LoginScreen(),
      //home: ForgotPasswordScreen(),
      //home: ForgotPasswordAdviceScreen(),
      //home: ResetPasswordScreen(),
      //home: ThankYouVoteScreen(),
      //home: ProfileScreen(),
      //home: EditProfileScreen(),
      //home: VotingPage(),
      //home: ConfirmVoteScreen(),
      home: VoteStatusScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/home': (context) => const HomeScreen(),
        '/register': (context) => const RegisterScreen(),
        '/register_confirmation': (context) => const RegisterConfirmationScreen(),
        '/login': (context) => const LoginScreen(),
        '/forgot_password': (context) => const ForgotPasswordScreen(),
        '/forgot_password_advice': (context) => const ForgotPasswordAdviceScreen(),
        '/reset_password': (context) => const ResetPasswordScreen(),
        '/confirm_vote': (context) => const ConfirmVoteScreen(),
      },
      home: PeliculasScreen()
    );
  }
}

