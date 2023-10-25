import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_3d/router/page_name.dart';
import 'package:flutter_3d/ui/component/base_page.dart';
import 'package:flutter_gl/flutter_gl.dart';
import 'package:three_dart/three_dart.dart' as three;

import '../../data/model/config_options.dart';

class TutorialPage extends StatefulWidget {
  const TutorialPage({super.key});

  @override
  State<TutorialPage> createState() => _TutorialPageState();
}

class _TutorialPageState extends State<TutorialPage> {
  late double width;
  late double height;
  Size? screenSize;
  late three.Scene scene;
  late three.Camera camera;
  three.WebGLRenderer? renderer;
  late three.WebGLMultisampleRenderTarget renderTarget;
  late three.BoxGeometry geometry;
  late three.Mesh mesh;
  late FlutterGlPlugin three3dRender;
  double dpr = 1;
  dynamic sourceTexture;

  @override
  void initState() {
    super.initState();
  }

  void _initSize() {
    if (screenSize != null) {
      return;
    }

    final mediaQuery = MediaQuery.of(context);

    screenSize = mediaQuery.size;
    dpr = mediaQuery.devicePixelRatio;

    _initPlatformState();
  }

  Future<void> _initPlatformState() async {
    width = screenSize!.width;
    height = screenSize!.height;

    three3dRender = FlutterGlPlugin();

    final options = ConfigOptions(
      antialias: true,
      alpha: true,
      width: width.toInt(),
      height: height.toInt(),
      dpr: dpr,
    );

    await three3dRender.initialize(options: options.toMap());

    setState(() {});

    Future.delayed(const Duration(milliseconds: 100), () async {
      await three3dRender.prepareContext();

      await _initScene();
    });
  }

  Future<void> _initScene() async {
    await _initRenderer();
    scene = three.Scene();
    camera = three.PerspectiveCamera(75, width / height, 0.1, 1000);

    Map<String, dynamic> materialOptions = {
      "color": 0x00ff00,
    };
    three.Material material = three.MeshBasicMaterial(materialOptions);
    geometry = three.BoxGeometry(1, 1, 1);
    mesh = three.Mesh(geometry, material);
    scene.add(mesh);

    camera.position.z = 5;
    animate();
  }

  Future<void> _initRenderer() async {
    final options = ConfigOptions(
      antialias: true,
      alpha: true,
      width: width,
      height: height,
      gl: three3dRender.gl,
    );

    renderer = three.WebGLRenderer(
      options.toMap(),
    );
    renderer!.setPixelRatio(dpr);
    renderer!.setSize(width, height);
    renderer!.shadowMap.enabled = true;

    if (!kIsWeb) {
      final pars = three.WebGLRenderTargetOptions({'format': three.RGBAFormat});
      renderTarget = three.WebGLMultisampleRenderTarget(
        (width * dpr).toInt(),
        (height * dpr).toInt(),
        pars,
      );
      renderTarget.samples = 4;
      renderer!.setRenderTarget(renderTarget);
      sourceTexture = renderer!.getRenderTargetGLTexture(renderTarget);
    }
  }

  void animate() {
    mesh.rotation.x += 0.01;
    mesh.rotation.y += 0.01;
    renderer?.render(scene, camera);

    Future.delayed(const Duration(milliseconds: 40), () {
      animate();
    });
  }

  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: tutorialPage,
      body: Builder(builder: (context) {
        _initSize();
        if (three3dRender.isInitialized) {
          if (kIsWeb) {
            return HtmlElementView(
              viewType: three3dRender.textureId!.toString(),
            );
          }
          return Texture(
            textureId: three3dRender.textureId!,
          );
        }
        return Container();
      }),
    );
  }
}
