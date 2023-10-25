import 'package:flutter/material.dart';
import 'package:flutter_3d/router/page_name.dart';
import 'package:flutter_3d/ui/component/base_page.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';

class ThreeDModelPage extends StatelessWidget {
  const ThreeDModelPage({super.key});

  @override
  Widget build(BuildContext context) {
    String js = '''
  const modelViewer = document.querySelector('#change-speed-demo');
  const speeds = [1, 2, 0.5, -1];

  let i = 0;
  const play = () => {
    modelViewer.timeScale = speeds[i++%speeds.length];
    modelViewer.play({repetitions: 1});
  };
  modelViewer.addEventListener('load', play);
  modelViewer.addEventListener('finished', play);
''';
    return BasePage(
      title: threeDModelPage,
      body: ModelViewer(
        id: 'change-speed-demo',
        backgroundColor: Colors.black,
        src: 'assets/free_fps-hands.glb',
        alt: 'A 3D model of an astronaut',
        disableZoom: true,
        relatedJs: js,
      ),
    );
  }
}
