// GENERATED CODE - DO NOT MODIFY BY HAND

part of past_search_cities_state;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$PastSearchCitiesState extends PastSearchCitiesState {
  @override
  final BuiltList<String> pastSearchCities;

  factory _$PastSearchCitiesState(
          [void Function(PastSearchCitiesStateBuilder)? updates]) =>
      (new PastSearchCitiesStateBuilder()..update(updates))._build();

  _$PastSearchCitiesState._({required this.pastSearchCities}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        pastSearchCities, r'PastSearchCitiesState', 'pastSearchCities');
  }

  @override
  PastSearchCitiesState rebuild(
          void Function(PastSearchCitiesStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PastSearchCitiesStateBuilder toBuilder() =>
      new PastSearchCitiesStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PastSearchCitiesState &&
        pastSearchCities == other.pastSearchCities;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, pastSearchCities.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PastSearchCitiesState')
          ..add('pastSearchCities', pastSearchCities))
        .toString();
  }
}

class PastSearchCitiesStateBuilder
    implements Builder<PastSearchCitiesState, PastSearchCitiesStateBuilder> {
  _$PastSearchCitiesState? _$v;

  ListBuilder<String>? _pastSearchCities;
  ListBuilder<String> get pastSearchCities =>
      _$this._pastSearchCities ??= new ListBuilder<String>();
  set pastSearchCities(ListBuilder<String>? pastSearchCities) =>
      _$this._pastSearchCities = pastSearchCities;

  PastSearchCitiesStateBuilder();

  PastSearchCitiesStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _pastSearchCities = $v.pastSearchCities.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PastSearchCitiesState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PastSearchCitiesState;
  }

  @override
  void update(void Function(PastSearchCitiesStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PastSearchCitiesState build() => _build();

  _$PastSearchCitiesState _build() {
    _$PastSearchCitiesState _$result;
    try {
      _$result = _$v ??
          new _$PastSearchCitiesState._(
              pastSearchCities: pastSearchCities.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'pastSearchCities';
        pastSearchCities.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PastSearchCitiesState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
