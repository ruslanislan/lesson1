import 'package:freezed_annotation/freezed_annotation.dart';
import '../response_model/response_model.dart';
import '../location_point/location_point.dart';

part 'city_item.freezed.dart';

part 'city_item.g.dart';

@freezed
class CityItem extends ResponseModel with _$CityItem {
  factory CityItem({
    required int id,
    required String name,
    required String country,
    required LocationPoint coord,
  }) = _CityItem;

  factory CityItem.fromJson(Map<String, dynamic> json) =>
      _$CityItemFromJson(json);
}