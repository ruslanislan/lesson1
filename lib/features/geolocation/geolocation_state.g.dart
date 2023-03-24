// GENERATED CODE - DO NOT MODIFY BY HAND

part of geolocation_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GeolocationState extends GeolocationState {
  @override
  final LocationPoint? point;

  factory _$GeolocationState(
          [void Function(GeolocationStateBuilder)? updates]) =>
      (new GeolocationStateBuilder()..update(updates))._build();

  _$GeolocationState._({this.point}) : super._();

  @override
  GeolocationState rebuild(void Function(GeolocationStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GeolocationStateBuilder toBuilder() =>
      new GeolocationStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GeolocationState && point == other.point;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, point.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GeolocationState')
          ..add('point', point))
        .toString();
  }
}

class GeolocationStateBuilder
    implements Builder<GeolocationState, GeolocationStateBuilder> {
  _$GeolocationState? _$v;

  LocationPoint? _point;
  LocationPoint? get point => _$this._point;
  set point(LocationPoint? point) => _$this._point = point;

  GeolocationStateBuilder();

  GeolocationStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _point = $v.point;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GeolocationState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GeolocationState;
  }

  @override
  void update(void Function(GeolocationStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GeolocationState build() => _build();

  _$GeolocationState _build() {
    final _$result = _$v ?? new _$GeolocationState._(point: point);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
