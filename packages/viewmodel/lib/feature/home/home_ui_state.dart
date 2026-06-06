class HomeUiState {
  final bool isLoading;
  final String? currentTime;
  final String? errorMessage;

  const HomeUiState({
    this.isLoading = false,
    this.currentTime,
    this.errorMessage,
  });

  bool get isRefreshing => isLoading && currentTime != null;

  HomeUiState onData(String currentTime) =>
      HomeUiState(currentTime: currentTime);

  HomeUiState onInProgress() =>
      _copyWith(isLoading: true, errorMessage: null);

  HomeUiState onError(String message) =>
      _copyWith(isLoading: false, errorMessage: message);

  HomeUiState _copyWith({
    bool? isLoading,
    Object? currentTime = _sentinel,
    Object? errorMessage = _sentinel,
  }) {
    return HomeUiState(
      isLoading: isLoading ?? this.isLoading,
      currentTime: currentTime == _sentinel ? this.currentTime : currentTime as String?,
      errorMessage: errorMessage == _sentinel ? this.errorMessage : errorMessage as String?,
    );
  }
}

const _sentinel = Object();
