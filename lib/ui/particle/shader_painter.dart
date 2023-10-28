import 'dart:ui';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class ShaderPainter extends CustomPainter {
  final FragmentShader shader;
  final ui.Image image;

  ShaderPainter(FragmentShader fragmentShader, this.image)
      : shader = fragmentShader;

  @override
  void paint(Canvas canvas, Size size) {
    shader.setImageSampler(0, image);
    shader.setFloat(0, size.width);
    shader.setFloat(1, size.height);

    final paint = Paint();

    paint.shader = shader;
    canvas.drawRect(Offset.zero & size, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
