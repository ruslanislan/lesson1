import 'dart:async';

import 'package:get_it/get_it.dart';
import 'package:lesson1/app/app_state.dart';
import 'package:lesson1/app/base_action.dart';
import 'package:lesson1/services/battery_service.dart';

class GetBatteryLevel extends BaseAction {

  @override
  Future<AppState?> reduce() async {
    final batteryService = GetIt.I.get<BatteryService>();

    final batteryLevel = await batteryService.getBatteryLevel();

    return state.rebuild((b) => b..battery.batteryLevel = batteryLevel);
  }
}
