import 'package:flutter/material.dart';

class TopShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
