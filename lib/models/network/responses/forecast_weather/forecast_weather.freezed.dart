// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forecast_weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ForecastWeather _$ForecastWeatherFromJson(Map<String, dynamic> json) {
  return _ForecastWeather.fromJson(json);
}

/// @nodoc
mixin _$ForecastWeather {
  CityItem get city => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ForecastWeatherCopyWith<ForecastWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastWeatherCopyWith<$Res> {
  factory $ForecastWeatherCopyWith(
          ForecastWeather value, $Res Function(ForecastWeather) then) =
      _$ForecastWeatherCopyWithImpl<$Res, ForecastWeather>;
  @useResult
  $Res call({CityItem city});

  $CityItemCopyWith<$Res> get city;
}

/// @nodoc
class _$ForecastWeatherCopyWithImpl<$Res, $Val extends ForecastWeather>
    implements $ForecastWeatherCopyWith<$Res> {
  _$ForecastWeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = null,
  }) {
    return _then(_value.copyWith(
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as CityItem,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CityItemCopyWith<$Res> get city {
    return $CityItemCopyWith<$Res>(_value.city, (value) {
      return _then(_value.copyWith(city: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ForecastWeatherCopyWith<$Res>
    implements $ForecastWeatherCopyWith<$Res> {
  factory _$$_ForecastWeatherCopyWith(
          _$_ForecastWeather value, $Res Function(_$_ForecastWeather) then) =
      __$$_ForecastWeatherCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CityItem city});

  @override
  $CityItemCopyWith<$Res> get city;
}

/// @nodoc
class __$$_ForecastWeatherCopyWithImpl<$Res>
    extends _$ForecastWeatherCopyWithImpl<$Res, _$_ForecastWeather>
    implements _$$_ForecastWeatherCopyWith<$Res> {
  __$$_ForecastWeatherCopyWithImpl(
      _$_ForecastWeather _value, $Res Function(_$_ForecastWeather) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = null,
  }) {
    return _then(_$_ForecastWeather(
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as CityItem,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ForecastWeather extends _ForecastWeather {
  _$_ForecastWeather({required this.city}) : super._();

  factory _$_ForecastWeather.fromJson(Map<String, dynamic> json) =>
      _$$_ForecastWeatherFromJson(json);

  @override
  final CityItem city;

  @override
  String toString() {
    return 'ForecastWeather(city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ForecastWeather &&
            (identical(other.city, city) || other.city == city));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, city);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ForecastWeatherCopyWith<_$_ForecastWeather> get copyWith =>
      __$$_ForecastWeatherCopyWithImpl<_$_ForecastWeather>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ForecastWeatherToJson(
      this,
    );
  }
}

abstract class _ForecastWeather extends ForecastWeather {
  factory _ForecastWeather({required final CityItem city}) = _$_ForecastWeather;
  _ForecastWeather._() : super._();

  factory _ForecastWeather.fromJson(Map<String, dynamic> json) =
      _$_ForecastWeather.fromJson;

  @override
  CityItem get city;
  @override
  @JsonKey(ignore: true)
  _$$_ForecastWeatherCopyWith<_$_ForecastWeather> get copyWith =>
      throw _privateConstructorUsedError;
}
