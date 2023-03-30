import 'package:freezed_annotation/freezed_annotation.dart';
import '../response_model/response_model.dart';

part 'weather_description.freezed.dart';

part 'weather_description.g.dart';

@freezed
class WeatherDescription extends ResponseModel with _$WeatherDescription {
  factory WeatherDescription({
    required int id,
    required String main,
    required String description,
    required String icon,
  }) = _WeatherDescription;

  factory WeatherDescription.fromJson(Map<String, dynamic> json) =>
      _$WeatherDescriptionFromJson(json);
}