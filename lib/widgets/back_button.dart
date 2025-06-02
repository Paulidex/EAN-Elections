import 'package:flutter/material.dart';

class BackButtonCustom extends StatelessWidget {
  final VoidCallback? onPressed;

  const BackButtonCustom({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed ?? () => Navigator.of(context).pop(),
      child: Container(
        width: 40,
        height: 40,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
        ),
        child: const Center(
          child: Icon(
            Icons.arrow_back_ios_new,
            size: 20,
            color: Color(0xFFEB2D37),
          ),
        ),
      ),
    );
  }
}
