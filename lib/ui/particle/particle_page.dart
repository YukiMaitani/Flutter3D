import 'dart:ui';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_3d/router/page_name.dart';
import 'package:flutter_3d/ui/component/base_page.dart';
import 'package:flutter_3d/ui/particle/shader_painter.dart';

class ParticlePage extends StatefulWidget {
  const ParticlePage({super.key});

  @override
  State<ParticlePage> createState() => _ParticlePageState();
}

class _ParticlePageState extends State<ParticlePage> {
  FragmentShader? shader;
  ui.Image? image;

  void loadShader() async {
    final imageData = await rootBundle.load('assets/flutter_icon.png');
    image = await decodeImageFromList(imageData.buffer.asUint8List());

    var program = await FragmentProgram.fromAsset('shaders/particle.frag');
    shader = program.fragmentShader();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    loadShader();
  }

  @override
  Widget build(BuildContext context) {
    return BasePage(title: particlePage, body: _buildBody());
  }

  Widget _buildBody() {
    if (shader != null) {
      return Center(
        child: CustomPaint(
            painter: ShaderPainter(shader!, image!),
            child: AspectRatio(aspectRatio: 1, child: Container())),
      );
    } else {
      return const Center(child: CircularProgressIndicator());
    }
  }
}
