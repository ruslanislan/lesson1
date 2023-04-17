library battery_state;

import 'package:built_value/built_value.dart';
import 'package:lesson1/resources/strings.dart';

part 'battery_state.g.dart';

abstract class BatteryState
    implements Built<BatteryState, BatteryStateBuilder> {
  factory BatteryState([void Function(BatteryStateBuilder b) updates]) =
      _$BatteryState;

  BatteryState._();

  String get batteryLevel;

  static BatteryState initial() => BatteryState(
        (b) => b..batteryLevel = Strings.unknownBattery,
      );
}
