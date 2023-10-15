import 'package:flutter/material.dart';
import 'package:flutter_3d/router/page_name.dart';
import 'package:flutter_3d/ui/component/base_page.dart';
import 'package:three_dart/three_dart.dart' as three;

class TutorialPage extends StatefulWidget {
  const TutorialPage({super.key});

  @override
  State<TutorialPage> createState() => _TutorialPageState();
}

class _TutorialPageState extends State<TutorialPage> {
  late double width;
  late double height;
  late three.Scene scene;
  late three.Camera camera;
  late three.Mesh mesh;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      width = MediaQuery.of(context).size.width;
      height = MediaQuery.of(context).size.height;
      scene = three.Scene();
      camera = three.PerspectiveCamera(75, width / height, 0.1, 1000);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const BasePage(title: tutorialPage);
  }
}
