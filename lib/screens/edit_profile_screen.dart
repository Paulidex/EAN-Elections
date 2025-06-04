import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import '../widgets/second_background.dart';
import '../widgets/text_field.dart';
import '../widgets/red_button.dart';
import '../widgets/white_button.dart';
import '../widgets/back_button.dart';

// Stateful widget representing the registration screen
class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  File? _selectedImage;
  final ImagePicker _picker = ImagePicker();

  // fuction to add an image
  Future<void> _pickImage() async {
    try {
      final XFile? image = await _picker.pickImage(
        source: ImageSource.gallery,
        maxWidth: 300,
        maxHeight: 300,
        imageQuality: 80,
      );

      if (image != null) {
        setState(() {
          _selectedImage = File(image.path);
        });
      }
    } catch (e) {
      // Attend issues if it is necessary
      print('Error picking image: $e');
    }
  }

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
                  const SizedBox(height: 30),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: BackButtonCustom(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/profile');//logic button
                      },
                    ),
                  ),
                  // Circle to display the photo
                  GestureDetector(
                    onTap: _pickImage,
                    child: Container(
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
                        child: _selectedImage != null
                            ? Image.file(
                                _selectedImage!,
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
                  ),

                  const SizedBox(height: 30), // Spacer below image
                  // Welcome message title
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
                  // Instructional subtitle or spacing
                  const SizedBox(
                    height: 40,
                  ), // Fixed space between image and form (adjustable)
                  // Form input fields
                  const CustomTextField(labelText: 'Full Name'),
                  const SizedBox(height: 25),
                  const CustomTextField(labelText: 'Email Address'),
                  const SizedBox(height: 25),
                  const CustomTextField(labelText: 'Change Password'),
                  const SizedBox(height: 25),

                  // Aquí iba el SizedBox de 40 que estaba fuera de lugar
                  const SizedBox(height: 40),

                  WhiteButton(
                    text: 'Upload Photo', // White button labeled 'Upload Photo'
                    onPressed:
                        _pickImage, // Ahora llama a la función de seleccionar imagen
                  ),
                ],
              ),
            ),
          ),

          // Fixed position Save button 50 px from bottom with horizontal padding of 35
          Positioned(
            bottom: 50,
            left: 35,
            right: 35,
            child: RedButton(
              text: 'Save',
              onPressed: () {
                // Action triggered when the Save button is pressed
              },
            ),
          ),
        ],
      ),
    );
  }
}
