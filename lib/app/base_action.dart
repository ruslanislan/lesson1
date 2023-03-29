import 'package:dash_kit_core/dash_kit_core.dart';

import '../utils/test.dart';
import 'app_state.dart';
import 'operation.dart';

abstract class BaseAction extends Action<AppState> {
  // Action<AppState> contains all logic for tracking state and uses ReduxAction
  // inside;
  BaseAction({
    bool isRefreshing = false,
  }) : super(isRefreshing: isRefreshing);

  @override
  // We defined Operation type here instead of Object in base Action;
  Operation? get operationKey => null;

  @override
  bool abortDispatch() => isTestingEnvironment();
}