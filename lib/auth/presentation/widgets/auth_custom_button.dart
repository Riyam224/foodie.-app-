import 'package:flutter/material.dart';

class AuthCustomButton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback? onPressed;
  final Color? textColor;
  final double width;
  final double height;
  final double borderRadius;

  const AuthCustomButton({
    Key? key,
    required this.text,
    required this.color,
    this.onPressed,
    this.textColor,
    this.width = 207,
    this.height = 45,
    this.borderRadius = 8.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 4,
              offset: const Offset(2, 2), // Shadow for effect
            ),
          ],
        ),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
            textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          onPressed: onPressed,
          child: Text(text, style: TextStyle(color: textColor ?? Colors.white)),
        ),
      ),
    );
  }
}
