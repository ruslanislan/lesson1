import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:lesson1/app/app_state.dart';

import 'test_parent_widget.dart';

class TestStateWidget extends StatelessWidget {
  const TestStateWidget({
    required this.child,
    this.initialState,
    Key? key,
  }) : super(key: key);

  final Widget child;
  final AppState? initialState;

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: Store<AppState>(
        initialState: initialState ?? AppState.initial(),
        actionObservers: [],
      ),
      child: TestParentWidget(child: child),
    );
  }
}