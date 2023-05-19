import 'package:flutter/material.dart';

class TopShape extends CustomClipper<Path> {
  final AnimationController _controller;
  TopShape(this._controller);
  static Widget draw(Color color, String text, AnimationController controller) {
    return ClipPath(
      clipper: TopShape(controller),
      child: ColoredBox(
        color: color,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 16,
            ),
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Path getClip(Size size) {
    debugPrint("value of x: ${0 / 360}");
    debugPrint("value of y: ${115 / 160}");
    final path = Path();

    // first point
    path.lineTo(0, size.height * 0.71875);

    // seven point
    path.lineTo(size.width, 0);

    // last point
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
