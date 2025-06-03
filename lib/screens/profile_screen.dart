import 'package:flutter/material.dart';
import '../widgets/second_background.dart';
import '../widgets/white_button.dart';
import '../widgets/red_button.dart';
import '../widgets/back_button.dart';
import '../util/profile_image_holder.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const SecondBackground(),

          SafeArea(
            top: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 30),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: BackButtonCustom(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/vote_status');
                      },
                    ),
                  ),

                  // Put image by default
                  Container(
                    width: 230,
                    height: 230,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[300],
                      border: Border.all(color: Colors.white, width: 3),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: ClipOval(
                      child: ProfileImageHolder.imageFile != null
                          ? Image.file(
                              ProfileImageHolder.imageFile!,
                              fit: BoxFit.cover,
                              width: 120,
                              height: 120,
                            )
                          : Icon(
                              Icons.person,
                              size: 60,
                              color: Colors.grey[600],
                            ),
                    ),
                  ),

                  const SizedBox(height: 30),

                  const Text(
                    "Username",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 80),

                  WhiteButton(
                    text: 'Edit Profile',
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/edit_profile');//logic button
                    },
                  ),

                  const SizedBox(height: 40),

                  WhiteButton(
                    text: 'Back Home',
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/voting_page');//logic button
                    },
                  ),

                  const SizedBox(height: 40),

                  RedButton(
                    text: 'Log out',
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, '/home');//logic button
                    },
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
