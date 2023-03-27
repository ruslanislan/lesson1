// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'city_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CityItem _$CityItemFromJson(Map<String, dynamic> json) {
  return _CityItem.fromJson(json);
}

/// @nodoc
mixin _$CityItem {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  LocationPoint get coord => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CityItemCopyWith<CityItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CityItemCopyWith<$Res> {
  factory $CityItemCopyWith(CityItem value, $Res Function(CityItem) then) =
      _$CityItemCopyWithImpl<$Res, CityItem>;
  @useResult
  $Res call({int id, String name, String country, LocationPoint coord});

  $LocationPointCopyWith<$Res> get coord;
}

/// @nodoc
class _$CityItemCopyWithImpl<$Res, $Val extends CityItem>
    implements $CityItemCopyWith<$Res> {
  _$CityItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? country = null,
    Object? coord = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      coord: null == coord
          ? _value.coord
          : coord // ignore: cast_nullable_to_non_nullable
              as LocationPoint,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationPointCopyWith<$Res> get coord {
    return $LocationPointCopyWith<$Res>(_value.coord, (value) {
      return _then(_value.copyWith(coord: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CityItemCopyWith<$Res> implements $CityItemCopyWith<$Res> {
  factory _$$_CityItemCopyWith(
          _$_CityItem value, $Res Function(_$_CityItem) then) =
      __$$_CityItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String country, LocationPoint coord});

  @override
  $LocationPointCopyWith<$Res> get coord;
}

/// @nodoc
class __$$_CityItemCopyWithImpl<$Res>
    extends _$CityItemCopyWithImpl<$Res, _$_CityItem>
    implements _$$_CityItemCopyWith<$Res> {
  __$$_CityItemCopyWithImpl(
      _$_CityItem _value, $Res Function(_$_CityItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? country = null,
    Object? coord = null,
  }) {
    return _then(_$_CityItem(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      coord: null == coord
          ? _value.coord
          : coord // ignore: cast_nullable_to_non_nullable
              as LocationPoint,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CityItem implements _CityItem {
  _$_CityItem(
      {required this.id,
      required this.name,
      required this.country,
      required this.coord});

  factory _$_CityItem.fromJson(Map<String, dynamic> json) =>
      _$$_CityItemFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String country;
  @override
  final LocationPoint coord;

  @override
  String toString() {
    return 'CityItem(id: $id, name: $name, country: $country, coord: $coord)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CityItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.coord, coord) || other.coord == coord));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, country, coord);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CityItemCopyWith<_$_CityItem> get copyWith =>
      __$$_CityItemCopyWithImpl<_$_CityItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CityItemToJson(
      this,
    );
  }
}

abstract class _CityItem implements CityItem {
  factory _CityItem(
      {required final int id,
      required final String name,
      required final String country,
      required final LocationPoint coord}) = _$_CityItem;

  factory _CityItem.fromJson(Map<String, dynamic> json) = _$_CityItem.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get country;
  @override
  LocationPoint get coord;
  @override
  @JsonKey(ignore: true)
  _$$_CityItemCopyWith<_$_CityItem> get copyWith =>
      throw _privateConstructorUsedError;
}
