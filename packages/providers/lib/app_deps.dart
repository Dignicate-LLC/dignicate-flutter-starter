import 'package:data/api/time_api_client.dart';
import 'package:domain/time/time_repository.dart';

abstract interface class AppDeps {
  TimeApiClient get timeApiClient;
  TimeRepository get timeRepository;
}
