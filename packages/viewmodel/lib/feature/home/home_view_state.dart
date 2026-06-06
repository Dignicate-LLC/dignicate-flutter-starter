class HomeViewState {
  final bool isLoading;
  final String? currentTime;
  final String? errorMessage;

  const HomeViewState({
    this.isLoading = false,
    this.currentTime,
    this.errorMessage,
  });

  bool get isRefreshing => isLoading && currentTime != null;

  HomeViewState copyWith({
    bool? isLoading,
    Object? currentTime = _sentinel,
    Object? errorMessage = _sentinel,
  }) {
    return HomeViewState(
      isLoading: isLoading ?? this.isLoading,
      currentTime: currentTime == _sentinel ? this.currentTime : currentTime as String?,
      errorMessage: errorMessage == _sentinel ? this.errorMessage : errorMessage as String?,
    );
  }
}

const _sentinel = Object();
