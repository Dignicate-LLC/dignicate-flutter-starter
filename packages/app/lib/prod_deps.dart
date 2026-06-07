import 'package:data/api/api_client.dart';
import 'package:data/api/api_wrapper_dio_impl.dart';
import 'package:data/time/time_repository_impl.dart';
import 'package:domain/time/time_repository.dart';
import 'package:providers/app_deps.dart';

class ProdDeps implements AppDeps {
  ProdDeps();

  final _dio = buildDioClient();
  late final _apiWrapper = ApiWrapperDioImpl(_dio);

  @override
  late final TimeRepository timeRepository = TimeRepositoryImpl(_apiWrapper);
}
