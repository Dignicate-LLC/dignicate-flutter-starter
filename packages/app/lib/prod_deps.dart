import 'package:data/api/api_client.dart';
import 'package:data/api/time_api_client.dart';
import 'package:data/api/time_api_client_impl.dart';
import 'package:data/time/time_repository_impl.dart';
import 'package:domain/time/time_repository.dart';
import 'package:providers/app_deps.dart';

class ProdDeps implements AppDeps {
  ProdDeps();

  final _dio = buildDioClient();

  @override
  late final TimeApiClient timeApiClient = TimeApiClientImpl(_dio);

  @override
  late final TimeRepository timeRepository = TimeRepositoryImpl(timeApiClient);
}
