part of 'weather_bloc.dart';

@immutable
class WeatherState {

  const WeatherState({
    this.locationPoint,
    this.title,
    this.text,
    this.showDialog = false,
  });

  factory WeatherState.initial() => const WeatherState();

  final LocationPoint? locationPoint;
  final String? title;
  final String? text;
  final bool showDialog;

  WeatherState copyWith({
    LocationPoint? locationPoint,
    String? title,
    String? text,
    bool? showDialog,
  }) {
    return WeatherState(
      locationPoint: locationPoint ?? this.locationPoint,
      title: title ?? this.title,
      text: text ?? this.text,
      showDialog: showDialog ?? false,
    );
  }
}