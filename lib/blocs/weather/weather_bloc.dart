import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:lesson1/models/network/responses/location_point/location_point.dart';
import 'package:lesson1/services/geolocation_service.dart';
import 'package:meta/meta.dart';

part 'weather_event.dart';

part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc(this.geolocationService) : super(WeatherState.initial()) {
    on<GetGeolocationWeatherEvent>(_onGetGeolocation);
  }

  final GeolocationService geolocationService;

  FutureOr<void> _onGetGeolocation(
    GetGeolocationWeatherEvent event,
    Emitter<WeatherState> emit,
  ) async {
    try {
      final point = await geolocationService.getLocationPoint();

      emit(state.copyWith(
        locationPoint: point,
        showDialog: true,
        title: 'Success!',
        text: 'Geolocation received',
      ));
    } catch (error) {
      emit(state.copyWith(
        showDialog: true,
        title: 'Oops!',
        text: error.toString(),
      ));
    }
  }
}
