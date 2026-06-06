import 'package:domain/time/time_use_case.dart';
import 'package:providers/app_deps.dart';

// use case providers

TimeUseCase makeTimeUseCase(AppDeps deps) => TimeUseCase(deps.timeRepository);
