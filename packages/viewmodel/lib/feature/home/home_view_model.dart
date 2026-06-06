import 'dart:async';
import 'package:domain/resource.dart';
import 'package:domain/time/time_use_case.dart';
import 'package:flutter/foundation.dart';
import 'package:viewmodel/feature/home/home_ui_state.dart';

class HomeViewModel extends ChangeNotifier {
  final TimeUseCase _timeUseCase;
  late final StreamSubscription<HomeUiState> _subscription;

  HomeViewModel(this._timeUseCase) {
    _subscription = _timeUseCase.data.map(_toUiState).listen((uiState) {
      _uiState = uiState;
      notifyListeners();
    });
  }

  HomeUiState _uiState = const HomeUiState();
  HomeUiState get uiState => _uiState;

  void onAppear() => _timeUseCase.fetch();
  void onRefresh() => _timeUseCase.fetch();

  HomeUiState _toUiState(Resource<dynamic> resource) {
    return switch (resource) {
      Resource.inProgress() => _uiState.copyWith(isLoading: true, errorMessage: null),
      Resource.data(:final data) => HomeUiState(currentTime: data.iso8601),
      Resource.unauthorized() => _uiState.copyWith(isLoading: false, errorMessage: 'Unauthorized'),
      Resource.error(:final message) => _uiState.copyWith(isLoading: false, errorMessage: message),
    };
  }

  @override
  void dispose() {
    _subscription.cancel();
    _timeUseCase.dispose();
    super.dispose();
  }
}
