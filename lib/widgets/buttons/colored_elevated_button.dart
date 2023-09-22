import 'package:flutter/material.dart';

class ColoredElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Color buttonColor;
  final Widget child;

  const ColoredElevatedButton({
    super.key,
    required this.onPressed,
    required this.buttonColor,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(
            const EdgeInsets.symmetric(vertical: 24),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(buttonColor),
          elevation: MaterialStateProperty.all<double>(8),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
          ),
        ),
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
