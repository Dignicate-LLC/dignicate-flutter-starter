import 'dart:async';
import 'package:domain/resource.dart';
import 'package:domain/time/time_info.dart';
import 'package:domain/time/time_use_case.dart';
import 'package:flutter/foundation.dart';
import 'package:viewmodel/feature/home/home_ui_state.dart';

class HomeViewModel extends ChangeNotifier {
  final TimeUseCase _timeUseCase;
  late final StreamSubscription<Resource<TimeInfo>> _subscription;

  HomeViewModel(this._timeUseCase) {
    _subscription = _timeUseCase.data.listen((resource) {
      resource.when(
        data: (data) => _uiState = _uiState.onData(data.iso8601),
        inProgress: () => _uiState = _uiState.onInProgress(),
        error: (message) => _uiState = _uiState.onError(message),
      );
      notifyListeners();
    });
  }

  HomeUiState _uiState = const HomeUiState();
  HomeUiState get uiState => _uiState;

  void onAppear() => _timeUseCase.fetch();
  void onRefresh() => _timeUseCase.fetch();

  @override
  void dispose() {
    _subscription.cancel();
    _timeUseCase.dispose();
    super.dispose();
  }
}
