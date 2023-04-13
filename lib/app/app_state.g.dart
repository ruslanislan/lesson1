// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AppState extends AppState {
  @override
  final GeolocationState geolocation;
  @override
  final WeatherState weather;
  @override
  final PastSearchCitiesState pastSearchCities;
  @override
  final BuiltMap<Object, OperationState> operationsState;

  factory _$AppState([void Function(AppStateBuilder)? updates]) =>
      (new AppStateBuilder()..update(updates))._build();

  _$AppState._(
      {required this.geolocation,
      required this.weather,
      required this.pastSearchCities,
      required this.operationsState})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        geolocation, r'AppState', 'geolocation');
    BuiltValueNullFieldError.checkNotNull(weather, r'AppState', 'weather');
    BuiltValueNullFieldError.checkNotNull(
        pastSearchCities, r'AppState', 'pastSearchCities');
    BuiltValueNullFieldError.checkNotNull(
        operationsState, r'AppState', 'operationsState');
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        geolocation == other.geolocation &&
        weather == other.weather &&
        pastSearchCities == other.pastSearchCities &&
        operationsState == other.operationsState;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, geolocation.hashCode);
    _$hash = $jc(_$hash, weather.hashCode);
    _$hash = $jc(_$hash, pastSearchCities.hashCode);
    _$hash = $jc(_$hash, operationsState.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AppState')
          ..add('geolocation', geolocation)
          ..add('weather', weather)
          ..add('pastSearchCities', pastSearchCities)
          ..add('operationsState', operationsState))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState? _$v;

  GeolocationStateBuilder? _geolocation;
  GeolocationStateBuilder get geolocation =>
      _$this._geolocation ??= new GeolocationStateBuilder();
  set geolocation(GeolocationStateBuilder? geolocation) =>
      _$this._geolocation = geolocation;

  WeatherStateBuilder? _weather;
  WeatherStateBuilder get weather =>
      _$this._weather ??= new WeatherStateBuilder();
  set weather(WeatherStateBuilder? weather) => _$this._weather = weather;

  PastSearchCitiesStateBuilder? _pastSearchCities;
  PastSearchCitiesStateBuilder get pastSearchCities =>
      _$this._pastSearchCities ??= new PastSearchCitiesStateBuilder();
  set pastSearchCities(PastSearchCitiesStateBuilder? pastSearchCities) =>
      _$this._pastSearchCities = pastSearchCities;

  MapBuilder<Object, OperationState>? _operationsState;
  MapBuilder<Object, OperationState> get operationsState =>
      _$this._operationsState ??= new MapBuilder<Object, OperationState>();
  set operationsState(MapBuilder<Object, OperationState>? operationsState) =>
      _$this._operationsState = operationsState;

  AppStateBuilder();

  AppStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _geolocation = $v.geolocation.toBuilder();
      _weather = $v.weather.toBuilder();
      _pastSearchCities = $v.pastSearchCities.toBuilder();
      _operationsState = $v.operationsState.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AppState build() => _build();

  _$AppState _build() {
    _$AppState _$result;
    try {
      _$result = _$v ??
          new _$AppState._(
              geolocation: geolocation.build(),
              weather: weather.build(),
              pastSearchCities: pastSearchCities.build(),
              operationsState: operationsState.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'geolocation';
        geolocation.build();
        _$failedField = 'weather';
        weather.build();
        _$failedField = 'pastSearchCities';
        pastSearchCities.build();
        _$failedField = 'operationsState';
        operationsState.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'AppState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
