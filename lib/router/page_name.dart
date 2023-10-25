const tutorialPage = 'Tutorial';
const threeDModelPage = 'ThreeDModel';

extension PathExt on String {
  String get path => '/${toLowerCase()}';
}
