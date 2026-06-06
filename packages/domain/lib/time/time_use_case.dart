import 'dart:async';
import 'package:domain/resource.dart';
import 'package:domain/time/time_info.dart';
import 'package:domain/time/time_repository.dart';

abstract interface class TimeUseCase {
  Stream<Resource<TimeInfo>> get data;
  void fetch();
  void dispose();
}

class TimeUseCaseImpl implements TimeUseCase {
  final TimeRepository _repository;

  final _dataController = StreamController<Resource<TimeInfo>>();

  TimeUseCaseImpl(this._repository);

  @override
  Stream<Resource<TimeInfo>> get data => _dataController.stream;

  @override
  void fetch() {
    _dataController.add(const Resource.inProgress());

    _fetchInternal().then((result) {
      _dataController.add(result);
    }).catchError((error) {
      _dataController.add(Resource.error(message: error.toString()));
    });
  }

  Future<Resource<TimeInfo>> _fetchInternal() async {
    try {
      return await _repository.getCurrentTime();
    } catch (e) {
      return Resource.error(message: e.toString());
    }
  }

  @override
  void dispose() => _dataController.close();
}
