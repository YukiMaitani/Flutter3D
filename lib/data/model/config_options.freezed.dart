// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'config_options.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConfigOptions {
  bool get antialias => throw _privateConstructorUsedError;
  bool get alpha => throw _privateConstructorUsedError;
  num get width => throw _privateConstructorUsedError;
  num get height => throw _privateConstructorUsedError;
  double? get dpr => throw _privateConstructorUsedError;
  dynamic get canvas => throw _privateConstructorUsedError;
  dynamic get gl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConfigOptionsCopyWith<ConfigOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfigOptionsCopyWith<$Res> {
  factory $ConfigOptionsCopyWith(
          ConfigOptions value, $Res Function(ConfigOptions) then) =
      _$ConfigOptionsCopyWithImpl<$Res, ConfigOptions>;
  @useResult
  $Res call(
      {bool antialias,
      bool alpha,
      num width,
      num height,
      double? dpr,
      dynamic canvas,
      dynamic gl});
}

/// @nodoc
class _$ConfigOptionsCopyWithImpl<$Res, $Val extends ConfigOptions>
    implements $ConfigOptionsCopyWith<$Res> {
  _$ConfigOptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? antialias = null,
    Object? alpha = null,
    Object? width = null,
    Object? height = null,
    Object? dpr = freezed,
    Object? canvas = freezed,
    Object? gl = freezed,
  }) {
    return _then(_value.copyWith(
      antialias: null == antialias
          ? _value.antialias
          : antialias // ignore: cast_nullable_to_non_nullable
              as bool,
      alpha: null == alpha
          ? _value.alpha
          : alpha // ignore: cast_nullable_to_non_nullable
              as bool,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as num,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as num,
      dpr: freezed == dpr
          ? _value.dpr
          : dpr // ignore: cast_nullable_to_non_nullable
              as double?,
      canvas: freezed == canvas
          ? _value.canvas
          : canvas // ignore: cast_nullable_to_non_nullable
              as dynamic,
      gl: freezed == gl
          ? _value.gl
          : gl // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConfigOptionsImplCopyWith<$Res>
    implements $ConfigOptionsCopyWith<$Res> {
  factory _$$ConfigOptionsImplCopyWith(
          _$ConfigOptionsImpl value, $Res Function(_$ConfigOptionsImpl) then) =
      __$$ConfigOptionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool antialias,
      bool alpha,
      num width,
      num height,
      double? dpr,
      dynamic canvas,
      dynamic gl});
}

/// @nodoc
class __$$ConfigOptionsImplCopyWithImpl<$Res>
    extends _$ConfigOptionsCopyWithImpl<$Res, _$ConfigOptionsImpl>
    implements _$$ConfigOptionsImplCopyWith<$Res> {
  __$$ConfigOptionsImplCopyWithImpl(
      _$ConfigOptionsImpl _value, $Res Function(_$ConfigOptionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? antialias = null,
    Object? alpha = null,
    Object? width = null,
    Object? height = null,
    Object? dpr = freezed,
    Object? canvas = freezed,
    Object? gl = freezed,
  }) {
    return _then(_$ConfigOptionsImpl(
      antialias: null == antialias
          ? _value.antialias
          : antialias // ignore: cast_nullable_to_non_nullable
              as bool,
      alpha: null == alpha
          ? _value.alpha
          : alpha // ignore: cast_nullable_to_non_nullable
              as bool,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as num,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as num,
      dpr: freezed == dpr
          ? _value.dpr
          : dpr // ignore: cast_nullable_to_non_nullable
              as double?,
      canvas: freezed == canvas
          ? _value.canvas
          : canvas // ignore: cast_nullable_to_non_nullable
              as dynamic,
      gl: freezed == gl
          ? _value.gl
          : gl // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$ConfigOptionsImpl extends _ConfigOptions {
  const _$ConfigOptionsImpl(
      {required this.antialias,
      required this.alpha,
      required this.width,
      required this.height,
      this.dpr,
      this.canvas,
      this.gl})
      : super._();

  @override
  final bool antialias;
  @override
  final bool alpha;
  @override
  final num width;
  @override
  final num height;
  @override
  final double? dpr;
  @override
  final dynamic canvas;
  @override
  final dynamic gl;

  @override
  String toString() {
    return 'ConfigOptions(antialias: $antialias, alpha: $alpha, width: $width, height: $height, dpr: $dpr, canvas: $canvas, gl: $gl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConfigOptionsImpl &&
            (identical(other.antialias, antialias) ||
                other.antialias == antialias) &&
            (identical(other.alpha, alpha) || other.alpha == alpha) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.dpr, dpr) || other.dpr == dpr) &&
            const DeepCollectionEquality().equals(other.canvas, canvas) &&
            const DeepCollectionEquality().equals(other.gl, gl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      antialias,
      alpha,
      width,
      height,
      dpr,
      const DeepCollectionEquality().hash(canvas),
      const DeepCollectionEquality().hash(gl));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConfigOptionsImplCopyWith<_$ConfigOptionsImpl> get copyWith =>
      __$$ConfigOptionsImplCopyWithImpl<_$ConfigOptionsImpl>(this, _$identity);
}

abstract class _ConfigOptions extends ConfigOptions {
  const factory _ConfigOptions(
      {required final bool antialias,
      required final bool alpha,
      required final num width,
      required final num height,
      final double? dpr,
      final dynamic canvas,
      final dynamic gl}) = _$ConfigOptionsImpl;
  const _ConfigOptions._() : super._();

  @override
  bool get antialias;
  @override
  bool get alpha;
  @override
  num get width;
  @override
  num get height;
  @override
  double? get dpr;
  @override
  dynamic get canvas;
  @override
  dynamic get gl;
  @override
  @JsonKey(ignore: true)
  _$$ConfigOptionsImplCopyWith<_$ConfigOptionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
