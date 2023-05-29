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
    // debugPrint('value of x3 ${883 / 1080}');
    // debugPrint('value of y3 ${157 / 192}');
    final path = Path();

    // first point
    // path.lineTo(0, size.height * 0.5906432748538012);
    path.lineTo(0, size.height * 0.7655502392344498);

    // //second point
    path.cubicTo(
      size.width * 0.03333333333333333,
      size.height * 0.6842105263157895,
      size.width * 0.1282051282051282,
      size.height * 0.5598086124401914,
      size.width * 0.22564102564102564,
      size.height * 0.6650717703349283,
    );
    // // third point
    path.cubicTo(
      size.width * 0.34358974359,
      size.height * 0.7942583732,
      size.width * 0.3923076923,
      size.height * 0.81818181818,
      size.width * 0.45128205128,
      size.height * 0.74641148325,
    );
    // //forth point
    path.cubicTo(
      size.width * 0.5128205128205128,
      size.height * 0.6746411483253588,
      size.width * 0.5692307692307692,
      size.height * 0.41626794258373206,
      size.width * 0.6423076923076924,
      size.height * 0.5933014354066986,
    );
    //forth point
    // path.cubicTo(
    //   size.width * 0.4361111111111111,
    //   size.height * 0.1189083820662768,
    //   size.width * 0.5425925925925926,
    //   size.height * 0.25925925925925924,
    //   size.width * 0.6351851851851852,
    //   size.height * 0.4171539961013645,
    // );
    //fifth point
    path.cubicTo(
      size.width * 0.7694444444444445,
      size.height * 0.9785575048732943,
      size.width * 0.8175925925925925,
      size.height,
      // size.height * 0.9785575048732943,
      size.width * 0.8611111111111112,
      size.height,
      // size.height * 0.9785575048732943,
    );
    // //sixth point
    path.cubicTo(
      size.width * 0.8611111111111112,
      size.height,
      size.width * 0.9342592592592592,
      size.height * 0.41325536062378165,
      size.width,
      size.height * 0.5906432748538012,
    );

    // // seven point
    path.lineTo(size.width, 0);

    // // last point
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
