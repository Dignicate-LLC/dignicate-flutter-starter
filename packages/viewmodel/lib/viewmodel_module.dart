import 'package:domain/time/time_use_case.dart';
import 'package:viewmodel/feature/home/home_view_model.dart';

// view model providers

HomeViewModel makeHomeViewModel(TimeUseCase timeUseCase) =>
    HomeViewModel(timeUseCase);
