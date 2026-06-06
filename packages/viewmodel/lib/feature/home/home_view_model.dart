import 'package:domain/resource.dart';
import 'package:domain/time/time_use_case.dart';
import 'package:flutter/foundation.dart';
import 'package:viewmodel/feature/home/home_ui_state.dart';

class HomeViewModel extends ChangeNotifier {
  final TimeUseCase _timeUseCase;

  HomeViewModel(this._timeUseCase);

  HomeUiState _uiState = const HomeUiState();
  HomeUiState get uiState => _uiState;

  void onAppear() {
    _fetch();
  }

  void onRefresh() {
    _fetch();
  }

  void _fetch() async {
    final currentState = _uiState;
    _uiState = currentState.copyWith(isLoading: true, errorMessage: null);
    notifyListeners();

    final resource = await _timeUseCase.fetch();
    _uiState = switch (resource) {
      Resource.data(:final data) => HomeUiState(currentTime: data.iso8601),
      Resource.inProgress() => _uiState,
      Resource.unauthorized() => _uiState.copyWith(
          isLoading: false,
          errorMessage: 'Unauthorized',
        ),
      Resource.error(:final message) => _uiState.copyWith(
          isLoading: false,
          errorMessage: message,
        ),
    };
    notifyListeners();
  }
}
