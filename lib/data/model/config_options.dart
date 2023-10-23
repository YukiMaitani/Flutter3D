import 'package:freezed_annotation/freezed_annotation.dart';

part 'config_options.freezed.dart';

@freezed
class ConfigOptions with _$ConfigOptions {
  const factory ConfigOptions({
    required bool antialias,
    required bool alpha,
    required num width,
    required num height,
    double? dpr,
    dynamic canvas,
    dynamic gl,
  }) = _ConfigOptions;

  const ConfigOptions._();

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'antialias': antialias,
      'alpha': alpha,
      'width': width,
      'height': height,
      'dpr': dpr,
      'cavas': canvas,
      'gl': gl,
    };
  }
}
