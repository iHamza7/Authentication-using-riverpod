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
    debugPrint("value of width: ${0 / 360}");
    debugPrint("value of height y: ${144 / 195}");
    final path = Path();

    // first point
    path.lineTo(0, size.height * 0.5433403805496829);

    //second point
    path.cubicTo(
      size.width * 0.07222222222222222,
      size.height * 0.4375,
      size.width * 0.17222222222222222,
      size.height * 0.3375,
      size.width * 0.22777777777777777,
      size.height * 0.60625,
    );

    // seven point
    path.lineTo(size.width, 0);

    // last point
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
