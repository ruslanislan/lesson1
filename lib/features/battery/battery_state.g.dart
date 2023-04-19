// GENERATED CODE - DO NOT MODIFY BY HAND

part of battery_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$BatteryState extends BatteryState {
  @override
  final String batteryLevel;

  factory _$BatteryState([void Function(BatteryStateBuilder)? updates]) =>
      (new BatteryStateBuilder()..update(updates))._build();

  _$BatteryState._({required this.batteryLevel}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        batteryLevel, r'BatteryState', 'batteryLevel');
  }

  @override
  BatteryState rebuild(void Function(BatteryStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BatteryStateBuilder toBuilder() => new BatteryStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BatteryState && batteryLevel == other.batteryLevel;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, batteryLevel.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'BatteryState')
          ..add('batteryLevel', batteryLevel))
        .toString();
  }
}

class BatteryStateBuilder
    implements Builder<BatteryState, BatteryStateBuilder> {
  _$BatteryState? _$v;

  String? _batteryLevel;
  String? get batteryLevel => _$this._batteryLevel;
  set batteryLevel(String? batteryLevel) => _$this._batteryLevel = batteryLevel;

  BatteryStateBuilder();

  BatteryStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _batteryLevel = $v.batteryLevel;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BatteryState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BatteryState;
  }

  @override
  void update(void Function(BatteryStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  BatteryState build() => _build();

  _$BatteryState _build() {
    final _$result = _$v ??
        new _$BatteryState._(
            batteryLevel: BuiltValueNullFieldError.checkNotNull(
                batteryLevel, r'BatteryState', 'batteryLevel'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
