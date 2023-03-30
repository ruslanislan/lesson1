// GENERATED CODE - DO NOT MODIFY BY HAND

part of weather_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WeatherState extends WeatherState {
  @override
  final CityItem? currentCity;
  @override
  final WeatherDay today;
  @override
  final BuiltList<WeatherDay> nextDays;

  factory _$WeatherState([void Function(WeatherStateBuilder)? updates]) =>
      (new WeatherStateBuilder()..update(updates))._build();

  _$WeatherState._(
      {this.currentCity, required this.today, required this.nextDays})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(today, r'WeatherState', 'today');
    BuiltValueNullFieldError.checkNotNull(
        nextDays, r'WeatherState', 'nextDays');
  }

  @override
  WeatherState rebuild(void Function(WeatherStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeatherStateBuilder toBuilder() => new WeatherStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeatherState &&
        currentCity == other.currentCity &&
        today == other.today &&
        nextDays == other.nextDays;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, currentCity.hashCode);
    _$hash = $jc(_$hash, today.hashCode);
    _$hash = $jc(_$hash, nextDays.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WeatherState')
          ..add('currentCity', currentCity)
          ..add('today', today)
          ..add('nextDays', nextDays))
        .toString();
  }
}

class WeatherStateBuilder
    implements Builder<WeatherState, WeatherStateBuilder> {
  _$WeatherState? _$v;

  CityItem? _currentCity;
  CityItem? get currentCity => _$this._currentCity;
  set currentCity(CityItem? currentCity) => _$this._currentCity = currentCity;

  WeatherDay? _today;
  WeatherDay? get today => _$this._today;
  set today(WeatherDay? today) => _$this._today = today;

  ListBuilder<WeatherDay>? _nextDays;
  ListBuilder<WeatherDay> get nextDays =>
      _$this._nextDays ??= new ListBuilder<WeatherDay>();
  set nextDays(ListBuilder<WeatherDay>? nextDays) =>
      _$this._nextDays = nextDays;

  WeatherStateBuilder();

  WeatherStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _currentCity = $v.currentCity;
      _today = $v.today;
      _nextDays = $v.nextDays.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeatherState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WeatherState;
  }

  @override
  void update(void Function(WeatherStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WeatherState build() => _build();

  _$WeatherState _build() {
    _$WeatherState _$result;
    try {
      _$result = _$v ??
          new _$WeatherState._(
              currentCity: currentCity,
              today: BuiltValueNullFieldError.checkNotNull(
                  today, r'WeatherState', 'today'),
              nextDays: nextDays.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'nextDays';
        nextDays.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'WeatherState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
