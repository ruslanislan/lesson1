// We use this package to make store immutable
import 'package:built_value/built_value.dart';
import 'package:dash_kit_core/dash_kit_core.dart';
import 'package:lesson1/features/weather/weather_state.dart';

import '../features/geolocation/geolocation_state.dart';

part 'app_state.g.dart';

// The main thing you should notice here is GlobalState;
abstract class AppState
    implements Built<AppState, AppStateBuilder>, GlobalState {
  factory AppState([void Function(AppStateBuilder) updates]) = _$AppState;

  AppState._();

  // You should make ProfileState immutable either
  GeolocationState get geolocation;

  WeatherState get weather;

  // // And implementation of GlobalState interface
  @override
  BuiltMap<Object, OperationState> get operationsState;

  // You should add an update of immutable state for operation inside this
  @override
  T updateOperation<T extends GlobalState>(
    Object? operationKey,
    OperationState operationState,
  ) {
    if (operationKey == null) {
      return this as T;
    }

    final GlobalState newState = rebuild(
      (s) => s.operationsState[operationKey] = operationState,
    );
    return newState as T;
  }

  @override
  OperationState getOperationState(Object operationKey) {
    return operationsState[operationKey] ?? OperationState.idle;
  }

  static AppState initial() {
    return AppState(
      (s) => s
        ..geolocation = GeolocationState.initial().toBuilder()
        ..weather = WeatherState.initial().toBuilder(),
    );
  }
}
