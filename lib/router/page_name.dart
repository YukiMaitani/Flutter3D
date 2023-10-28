const tutorialPage = 'Tutorial';
const threeDModelPage = 'ThreeDModel';
const particlePage = 'Particle';

extension PathExt on String {
  String get path => '/${toLowerCase()}';
}
