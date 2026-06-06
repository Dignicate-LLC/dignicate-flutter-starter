import 'package:domain/resource.dart';
import 'package:domain/time/time_info.dart';
import 'package:domain/time/time_repository.dart';

class TimeUseCase {
  final TimeRepository _repository;

  TimeUseCase(this._repository);

  Future<Resource<TimeInfo>> fetch() {
    return _repository.getCurrentTime();
  }
}
