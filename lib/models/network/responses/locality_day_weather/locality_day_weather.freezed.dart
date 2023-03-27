// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'locality_day_weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocalityDayWeather _$LocalityDayWeatherFromJson(Map<String, dynamic> json) {
  return _LocalityDayWeather.fromJson(json);
}

/// @nodoc
mixin _$LocalityDayWeather {
  @JsonKey(name: 'dt')
  int get dateTime => throw _privateConstructorUsedError;
  @JsonKey(name: 'weather')
  List<WeatherDescription> get descriptions =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'temp')
  WeatherTemperatures get temperatures => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocalityDayWeatherCopyWith<LocalityDayWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalityDayWeatherCopyWith<$Res> {
  factory $LocalityDayWeatherCopyWith(
          LocalityDayWeather value, $Res Function(LocalityDayWeather) then) =
      _$LocalityDayWeatherCopyWithImpl<$Res, LocalityDayWeather>;
  @useResult
  $Res call(
      {@JsonKey(name: 'dt') int dateTime,
      @JsonKey(name: 'weather') List<WeatherDescription> descriptions,
      @JsonKey(name: 'temp') WeatherTemperatures temperatures});

  $WeatherTemperaturesCopyWith<$Res> get temperatures;
}

/// @nodoc
class _$LocalityDayWeatherCopyWithImpl<$Res, $Val extends LocalityDayWeather>
    implements $LocalityDayWeatherCopyWith<$Res> {
  _$LocalityDayWeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
    Object? descriptions = null,
    Object? temperatures = null,
  }) {
    return _then(_value.copyWith(
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as int,
      descriptions: null == descriptions
          ? _value.descriptions
          : descriptions // ignore: cast_nullable_to_non_nullable
              as List<WeatherDescription>,
      temperatures: null == temperatures
          ? _value.temperatures
          : temperatures // ignore: cast_nullable_to_non_nullable
              as WeatherTemperatures,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WeatherTemperaturesCopyWith<$Res> get temperatures {
    return $WeatherTemperaturesCopyWith<$Res>(_value.temperatures, (value) {
      return _then(_value.copyWith(temperatures: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LocalityDayWeatherCopyWith<$Res>
    implements $LocalityDayWeatherCopyWith<$Res> {
  factory _$$_LocalityDayWeatherCopyWith(_$_LocalityDayWeather value,
          $Res Function(_$_LocalityDayWeather) then) =
      __$$_LocalityDayWeatherCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'dt') int dateTime,
      @JsonKey(name: 'weather') List<WeatherDescription> descriptions,
      @JsonKey(name: 'temp') WeatherTemperatures temperatures});

  @override
  $WeatherTemperaturesCopyWith<$Res> get temperatures;
}

/// @nodoc
class __$$_LocalityDayWeatherCopyWithImpl<$Res>
    extends _$LocalityDayWeatherCopyWithImpl<$Res, _$_LocalityDayWeather>
    implements _$$_LocalityDayWeatherCopyWith<$Res> {
  __$$_LocalityDayWeatherCopyWithImpl(
      _$_LocalityDayWeather _value, $Res Function(_$_LocalityDayWeather) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTime = null,
    Object? descriptions = null,
    Object? temperatures = null,
  }) {
    return _then(_$_LocalityDayWeather(
      dateTime: null == dateTime
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as int,
      descriptions: null == descriptions
          ? _value._descriptions
          : descriptions // ignore: cast_nullable_to_non_nullable
              as List<WeatherDescription>,
      temperatures: null == temperatures
          ? _value.temperatures
          : temperatures // ignore: cast_nullable_to_non_nullable
              as WeatherTemperatures,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocalityDayWeather extends _LocalityDayWeather {
  _$_LocalityDayWeather(
      {@JsonKey(name: 'dt')
          required this.dateTime,
      @JsonKey(name: 'weather')
          required final List<WeatherDescription> descriptions,
      @JsonKey(name: 'temp')
          required this.temperatures})
      : _descriptions = descriptions,
        super._();

  factory _$_LocalityDayWeather.fromJson(Map<String, dynamic> json) =>
      _$$_LocalityDayWeatherFromJson(json);

  @override
  @JsonKey(name: 'dt')
  final int dateTime;
  final List<WeatherDescription> _descriptions;
  @override
  @JsonKey(name: 'weather')
  List<WeatherDescription> get descriptions {
    if (_descriptions is EqualUnmodifiableListView) return _descriptions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_descriptions);
  }

  @override
  @JsonKey(name: 'temp')
  final WeatherTemperatures temperatures;

  @override
  String toString() {
    return 'LocalityDayWeather(dateTime: $dateTime, descriptions: $descriptions, temperatures: $temperatures)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocalityDayWeather &&
            (identical(other.dateTime, dateTime) ||
                other.dateTime == dateTime) &&
            const DeepCollectionEquality()
                .equals(other._descriptions, _descriptions) &&
            (identical(other.temperatures, temperatures) ||
                other.temperatures == temperatures));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, dateTime,
      const DeepCollectionEquality().hash(_descriptions), temperatures);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocalityDayWeatherCopyWith<_$_LocalityDayWeather> get copyWith =>
      __$$_LocalityDayWeatherCopyWithImpl<_$_LocalityDayWeather>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocalityDayWeatherToJson(
      this,
    );
  }
}

abstract class _LocalityDayWeather extends LocalityDayWeather {
  factory _LocalityDayWeather(
          {@JsonKey(name: 'dt')
              required final int dateTime,
          @JsonKey(name: 'weather')
              required final List<WeatherDescription> descriptions,
          @JsonKey(name: 'temp')
              required final WeatherTemperatures temperatures}) =
      _$_LocalityDayWeather;
  _LocalityDayWeather._() : super._();

  factory _LocalityDayWeather.fromJson(Map<String, dynamic> json) =
      _$_LocalityDayWeather.fromJson;

  @override
  @JsonKey(name: 'dt')
  int get dateTime;
  @override
  @JsonKey(name: 'weather')
  List<WeatherDescription> get descriptions;
  @override
  @JsonKey(name: 'temp')
  WeatherTemperatures get temperatures;
  @override
  @JsonKey(ignore: true)
  _$$_LocalityDayWeatherCopyWith<_$_LocalityDayWeather> get copyWith =>
      throw _privateConstructorUsedError;
}
