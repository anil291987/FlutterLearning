
import 'package:flutter/material.dart';
import 'dart:math' as Math;

void main() {
  runApp(
    MaterialApp(
      home: PathExample(),
    ),
  );
}
class PathExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: PathPainter(),
    );
  }
}

class PathPainter extends CustomPainter {
    @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
    ..color = Colors.red
    ..style = PaintingStyle.stroke
    ..strokeWidth = 8.0;
    
    // // Method to convert degree to radians
    // num degToRad(num deg) => deg * (Math.pi / 180.0);

    Path path = Path();
    // Draws a line from left top corner to right bottom
    // path.lineTo(size.width, size.height);    
    // path.moveTo(0, size.height / 2);
    // path.quadraticBezierTo(size.width / 2, size.height, size.width, size.height / 2);
    // path.moveTo(0, 0);
    // path.cubicTo(size.width / 4, 3 * size.height / 4, 3 * size.width / 4, size.height / 4, size.width, size.height);
        
    // path.moveTo(0, 0);
    // path.conicTo(size.width / 4, 3 * size.height / 4, size.width, size.height, 20);

    // path.arcTo(Rect.fromLTWH(size.width / 2, size.height / 2, size.width / 4, size.height / 4), degToRad(0), degToRad(90), true);

    // path.addRect(Rect.fromLTWH(size.width / 2, size.height / 2, size.width / 4, size.height / 4));

    // path.addOval(Rect.fromLTWH(size.width / 2, size.height / 2, size.width / 4, size.height / 4));

    // path.addArc(Rect.fromLTWH(0, 0, size.width, size.height), degToRad(180), degToRad(90));

    // path.addPolygon([
    //       Offset.zero,
    //       Offset(size.width / 4, size.height / 4),
    //       Offset(size.width / 2, size.height)
    //     ], true);
    // path.addRRect(
    //   RRect.fromRectAndRadius(Rect.fromLTWH(size.width / 2, size.height / 2, size.width / 4, size.height / 4), Radius.circular(16))
    // );

    // path.addRRect(
    //     RRect.fromRectAndRadius(Rect.fromLTWH(size.width / 2, size.height / 2, size.width / 4, size.height / 4), Radius.circular(16))
    // );
    // Path secondPath = Path();
    // secondPath.lineTo(size.width / 2, size.height / 2);
    // path.addPath(secondPath, Offset(16, 16));

    path.moveTo(size.width / 4, size.height / 4);
    path.relativeLineTo(size.width / 2, size.height / 2);
    canvas.drawPath(path, paint);

  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}