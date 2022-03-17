import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    required this.child,
    required this.color,
    this.borderRadius = 2.0,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  final Widget child;
  final Color color;
  final double borderRadius;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: child,
      style: ElevatedButton.styleFrom(
        primary: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(borderRadius),
          ),
        ),
      ),
    );
  }
}
