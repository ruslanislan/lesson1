import 'dart:async';

import 'package:flutter/services.dart';
import 'package:lesson1/app/app_state.dart';
import 'package:lesson1/app/base_action.dart';

const platform = MethodChannel('samples.flutter.dev/battery');

class GetBatteryLevel extends BaseAction {
  @override
  Future<AppState?> reduce() async {
    String batteryLevel;
    try {
      final int result = await platform.invokeMethod('getBatteryLevel');
      batteryLevel = 'Battery level at $result % .';
    } on PlatformException catch (e) {
      batteryLevel = "Failed to get battery level: '${e.message}'.";
    }
    return state.rebuild((b) => b..battery.batteryLevel = batteryLevel);
  }
}
