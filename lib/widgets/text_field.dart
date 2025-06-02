import 'package:flutter/material.dart';

// Widget reutilizable para campos de texto estilizados
class CustomTextField extends StatelessWidget {
  final String labelText;
  final TextEditingController? controller;
  final bool obscureText;

  const CustomTextField({
    super.key,
    required this.labelText,
    this.controller,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      style: const TextStyle(
        color: Color(0xFFE05259),
        fontSize: 24,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w500,
      ),
      decoration: InputDecoration(
        isDense: true,
        filled: true,
        fillColor: Colors.white,
        labelText: labelText,
        labelStyle: const TextStyle(
          color: Color(0xFFE05259),
          fontSize: 16,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 3,
          horizontal: 20,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: Color(0xFFE05259),
            width: 2,
          ),
        ),
      ),
      maxLines: 1,
      keyboardType: TextInputType.text,
    );
  }
}
