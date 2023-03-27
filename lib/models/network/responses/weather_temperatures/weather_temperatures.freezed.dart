// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_temperatures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WeatherTemperatures _$WeatherTemperaturesFromJson(Map<String, dynamic> json) {
  return _WeatherTemperatures.fromJson(json);
}

/// @nodoc
mixin _$WeatherTemperatures {
  double get day => throw _privateConstructorUsedError;
  double get min => throw _privateConstructorUsedError;
  double get max => throw _privateConstructorUsedError;
  double get night => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherTemperaturesCopyWith<WeatherTemperatures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherTemperaturesCopyWith<$Res> {
  factory $WeatherTemperaturesCopyWith(
          WeatherTemperatures value, $Res Function(WeatherTemperatures) then) =
      _$WeatherTemperaturesCopyWithImpl<$Res, WeatherTemperatures>;
  @useResult
  $Res call({double day, double min, double max, double night});
}

/// @nodoc
class _$WeatherTemperaturesCopyWithImpl<$Res, $Val extends WeatherTemperatures>
    implements $WeatherTemperaturesCopyWith<$Res> {
  _$WeatherTemperaturesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? min = null,
    Object? max = null,
    Object? night = null,
  }) {
    return _then(_value.copyWith(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as double,
      min: null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as double,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as double,
      night: null == night
          ? _value.night
          : night // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeatherTemperaturesCopyWith<$Res>
    implements $WeatherTemperaturesCopyWith<$Res> {
  factory _$$_WeatherTemperaturesCopyWith(_$_WeatherTemperatures value,
          $Res Function(_$_WeatherTemperatures) then) =
      __$$_WeatherTemperaturesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double day, double min, double max, double night});
}

/// @nodoc
class __$$_WeatherTemperaturesCopyWithImpl<$Res>
    extends _$WeatherTemperaturesCopyWithImpl<$Res, _$_WeatherTemperatures>
    implements _$$_WeatherTemperaturesCopyWith<$Res> {
  __$$_WeatherTemperaturesCopyWithImpl(_$_WeatherTemperatures _value,
      $Res Function(_$_WeatherTemperatures) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? min = null,
    Object? max = null,
    Object? night = null,
  }) {
    return _then(_$_WeatherTemperatures(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as double,
      min: null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as double,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as double,
      night: null == night
          ? _value.night
          : night // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WeatherTemperatures implements _WeatherTemperatures {
  _$_WeatherTemperatures(
      {required this.day,
      required this.min,
      required this.max,
      required this.night});

  factory _$_WeatherTemperatures.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherTemperaturesFromJson(json);

  @override
  final double day;
  @override
  final double min;
  @override
  final double max;
  @override
  final double night;

  @override
  String toString() {
    return 'WeatherTemperatures(day: $day, min: $min, max: $max, night: $night)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherTemperatures &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.min, min) || other.min == min) &&
            (identical(other.max, max) || other.max == max) &&
            (identical(other.night, night) || other.night == night));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, day, min, max, night);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherTemperaturesCopyWith<_$_WeatherTemperatures> get copyWith =>
      __$$_WeatherTemperaturesCopyWithImpl<_$_WeatherTemperatures>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherTemperaturesToJson(
      this,
    );
  }
}

abstract class _WeatherTemperatures implements WeatherTemperatures {
  factory _WeatherTemperatures(
      {required final double day,
      required final double min,
      required final double max,
      required final double night}) = _$_WeatherTemperatures;

  factory _WeatherTemperatures.fromJson(Map<String, dynamic> json) =
      _$_WeatherTemperatures.fromJson;

  @override
  double get day;
  @override
  double get min;
  @override
  double get max;
  @override
  double get night;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherTemperaturesCopyWith<_$_WeatherTemperatures> get copyWith =>
      throw _privateConstructorUsedError;
}
