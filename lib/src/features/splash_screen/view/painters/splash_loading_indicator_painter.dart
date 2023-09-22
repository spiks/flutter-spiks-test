// import 'package:flutter/material.dart';
//
// class SplashLoadingIndicatorPainter extends CustomPainter {
//   final double progress;
//
//   SplashLoadingIndicatorPainter({required this.progress});
//
//   @override
//   void paint(Canvas canvas, Size size) {
//     final center = Offset(size.width / 2, size.height / 2);
//     final leftSide = Offset(center.dx - (center.dx * progress), center.dy);
//     final rightSide = Offset(center.dx + (center.dx * progress), center.dy);
//
//
//     final Paint paint = Paint()
//       ..shader = const LinearGradient(
//         colors: [
//           Colors.blue,
//           Colors.cyanAccent,
//         ],
//       ).createShader(Rect.fromPoints(leftSide, rightSide))
//       ..strokeWidth = size.height
//       ..strokeCap = StrokeCap.round;
//
//     canvas.drawLine(leftSide, rightSide, paint);
//   }
//
//   @override
//   bool shouldRepaint(covariant SplashLoadingIndicatorPainter oldDelegate) {
//     return progress != oldDelegate.progress;
//   }
// }
