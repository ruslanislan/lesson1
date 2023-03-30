// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'days_weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DaysWeather _$DaysWeatherFromJson(Map<String, dynamic> json) {
  return _DaysWeather.fromJson(json);
}

/// @nodoc
mixin _$DaysWeather {
  List<LocalityDayWeather> get daily => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DaysWeatherCopyWith<DaysWeather> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DaysWeatherCopyWith<$Res> {
  factory $DaysWeatherCopyWith(
          DaysWeather value, $Res Function(DaysWeather) then) =
      _$DaysWeatherCopyWithImpl<$Res, DaysWeather>;
  @useResult
  $Res call({List<LocalityDayWeather> daily});
}

/// @nodoc
class _$DaysWeatherCopyWithImpl<$Res, $Val extends DaysWeather>
    implements $DaysWeatherCopyWith<$Res> {
  _$DaysWeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? daily = null,
  }) {
    return _then(_value.copyWith(
      daily: null == daily
          ? _value.daily
          : daily // ignore: cast_nullable_to_non_nullable
              as List<LocalityDayWeather>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DaysWeatherCopyWith<$Res>
    implements $DaysWeatherCopyWith<$Res> {
  factory _$$_DaysWeatherCopyWith(
          _$_DaysWeather value, $Res Function(_$_DaysWeather) then) =
      __$$_DaysWeatherCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<LocalityDayWeather> daily});
}

/// @nodoc
class __$$_DaysWeatherCopyWithImpl<$Res>
    extends _$DaysWeatherCopyWithImpl<$Res, _$_DaysWeather>
    implements _$$_DaysWeatherCopyWith<$Res> {
  __$$_DaysWeatherCopyWithImpl(
      _$_DaysWeather _value, $Res Function(_$_DaysWeather) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? daily = null,
  }) {
    return _then(_$_DaysWeather(
      daily: null == daily
          ? _value._daily
          : daily // ignore: cast_nullable_to_non_nullable
              as List<LocalityDayWeather>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DaysWeather extends _DaysWeather {
  _$_DaysWeather({required final List<LocalityDayWeather> daily})
      : _daily = daily,
        super._();

  factory _$_DaysWeather.fromJson(Map<String, dynamic> json) =>
      _$$_DaysWeatherFromJson(json);

  final List<LocalityDayWeather> _daily;
  @override
  List<LocalityDayWeather> get daily {
    if (_daily is EqualUnmodifiableListView) return _daily;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_daily);
  }

  @override
  String toString() {
    return 'DaysWeather(daily: $daily)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DaysWeather &&
            const DeepCollectionEquality().equals(other._daily, _daily));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_daily));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DaysWeatherCopyWith<_$_DaysWeather> get copyWith =>
      __$$_DaysWeatherCopyWithImpl<_$_DaysWeather>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DaysWeatherToJson(
      this,
    );
  }
}

abstract class _DaysWeather extends DaysWeather {
  factory _DaysWeather({required final List<LocalityDayWeather> daily}) =
      _$_DaysWeather;
  _DaysWeather._() : super._();

  factory _DaysWeather.fromJson(Map<String, dynamic> json) =
      _$_DaysWeather.fromJson;

  @override
  List<LocalityDayWeather> get daily;
  @override
  @JsonKey(ignore: true)
  _$$_DaysWeatherCopyWith<_$_DaysWeather> get copyWith =>
      throw _privateConstructorUsedError;
}
