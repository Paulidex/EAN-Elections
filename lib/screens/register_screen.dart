import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ean_elections/screens/register_confirmation_screen.dart';
import 'package:ean_elections/widgets/icon.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../widgets/second_background.dart';
import '../widgets/text_field.dart';
import '../widgets/red_button.dart';
import '../asd/auth.dart'; // Google SignIn
import '../asd/register.dart'; // Nueva lógica

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final AuthService _authService = AuthService();

  final TextEditingController _nameCtrl = TextEditingController();
  final TextEditingController _emailCtrl = TextEditingController();
  final TextEditingController _passCtrl = TextEditingController();
  final TextEditingController _confirmPassCtrl = TextEditingController();

  String _errorMessage = '';

  void _register() async {
    final email = _emailCtrl.text.trim();
    final pass = _passCtrl.text.trim();
    final confirm = _confirmPassCtrl.text.trim();

    if (pass != confirm) {
      setState(() => _errorMessage = 'Las contraseñas no coinciden');
      return;
    }

    final error = await _authService.registerUser(email, pass);
    if (error != null) {
      setState(() => _errorMessage = error);
    } else {
      setState(() => _errorMessage = '');

      final user = FirebaseAuth.instance.currentUser;
      if (user != null) {
        final uid = user.uid;
        final name = _nameCtrl.text.trim();

        // Guardar en Firestore
        final userDoc = FirebaseFirestore.instance.collection('users').doc(uid);
        await userDoc.set({
          'userId': uid,
          'name': name,
          'email': email,
          'createdAt': FieldValue.serverTimestamp(),
        }, SetOptions(merge: true));
      }

      // Mostrar el SnackBar de confirmación
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("¡Registro exitoso!"),
          duration: Duration(seconds: 2),
        ),
      );

      // Redirigir
      Future.delayed(const Duration(seconds: 2), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const RegisterConfirmationScreen()),
        );
      });
    }
  }
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
                  const SizedBox(height: 60),
                  const Pet(),
                  const SizedBox(height: 30),
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
                  const SizedBox(height: 8),
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
                  const SizedBox(height: 40),
                  CustomTextField(labelText: 'Full Name', controller: _nameCtrl),
                  const SizedBox(height: 25),
                  CustomTextField(labelText: 'Email Address', controller: _emailCtrl),
                  const SizedBox(height: 25),
                  CustomTextField(labelText: 'Password', controller: _passCtrl, obscureText: true),
                  const SizedBox(height: 25),
                  CustomTextField(labelText: 'Confirm Password', controller: _confirmPassCtrl, obscureText: true),
                  if (_errorMessage.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: Text(
                        _errorMessage,
                        style: const TextStyle(color: Colors.redAccent),
                      ),
                    ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 50,
            left: 35,
            right: 35,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                RedButton(
                  text: 'Register',
                  onPressed: _register,
                ),
                const SizedBox(height: 15),
                ElevatedButton.icon(
                  icon: const Icon(Icons.login),
                  label: const Text('Ingresar con Google'),
                  onPressed: () async {
                    try {
                      await signInWithGoogle(); 
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("¡Inicio de sesión con Google exitoso!"),
                          duration: Duration(seconds: 2),
                        ),
                      );
                      // Redirigir después de 2 segundos
                      Future.delayed(const Duration(seconds: 2), () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => const RegisterConfirmationScreen()),
                        );
                      });
                    } catch (e) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Error al ingresar con Google: ${e.toString()}")),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _nameCtrl.dispose();
    _emailCtrl.dispose();
    _passCtrl.dispose();
    _confirmPassCtrl.dispose();
    super.dispose();
  }
}
