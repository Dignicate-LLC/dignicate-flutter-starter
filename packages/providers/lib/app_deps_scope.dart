import 'package:flutter/material.dart';
import 'package:providers/app_deps.dart';

/// AppDeps をウィジェットツリーに提供する InheritedWidget
class AppDepsScope extends InheritedWidget {
  final AppDeps deps;

  const AppDepsScope({
    super.key,
    required this.deps,
    required super.child,
  });

  static AppDeps of(BuildContext context) {
    final scope =
        context.dependOnInheritedWidgetOfExactType<AppDepsScope>();
    assert(scope != null, 'No AppDepsScope found in context');
    return scope!.deps;
  }

  @override
  bool updateShouldNotify(AppDepsScope oldWidget) => deps != oldWidget.deps;
}
