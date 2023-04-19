import 'dart:async';

import 'package:dash_kit_core/dash_kit_core.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lesson1/app/app_state.dart';
import 'package:lesson1/app/base_action.dart';

typedef Dispatcher = Future<void> Function(BaseAction);

FutureOr<ActionStatus> Function(ReduxAction<AppState> action, {bool notify})
    useDispatcher() {
  final context = useContext();
  final storeProvider = StoreProvider.of<AppState>(context, 'dispatcher');

  return storeProvider.dispatch;
}
