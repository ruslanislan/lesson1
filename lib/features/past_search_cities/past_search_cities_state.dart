library past_search_cities_state;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'past_search_cities_state.g.dart';

abstract class PastSearchCitiesState
    implements Built<PastSearchCitiesState, PastSearchCitiesStateBuilder> {
  factory PastSearchCitiesState(
          [void Function(PastSearchCitiesStateBuilder b) updates]) =
      _$PastSearchCitiesState;

  PastSearchCitiesState._();

  BuiltList<String> get pastSearchCities;

  static PastSearchCitiesState initial() => PastSearchCitiesState(
        (b) => b..pastSearchCities = ListBuilder(),
      );
}
