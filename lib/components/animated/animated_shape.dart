import 'package:flutter/material.dart';
import '../animated/top_shape.dart';

class AnimatedShape extends StatefulWidget {
  final Color color;
  final bool show;
  final String text;
  const AnimatedShape(
      {super.key, required this.color, required this.show, required this.text});

  @override
  State<AnimatedShape> createState() => _AnimatedShapeState();
}

class _AnimatedShapeState extends State<AnimatedShape>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 800))
      ..forward();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: AnimatedBuilder(
          animation: _animationController,
          builder: (_, __) => TopShape.draw(
                widget.color,
                widget.text,
                _animationController,
              )),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _animationController.dispose();
  }
}
