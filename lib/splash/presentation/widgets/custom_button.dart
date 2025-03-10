import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback? onPressed;
  final Color? textColor;

  // ignore: use_super_parameters
  const CustomButton({
    Key? key,
    required this.text,
    required this.color,
    this.onPressed,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color, // Background color
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
        textStyle: TextStyle(fontSize: 18), // Button text style
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(color: Colors.white), // Text color
      ),
    );
  }
}
