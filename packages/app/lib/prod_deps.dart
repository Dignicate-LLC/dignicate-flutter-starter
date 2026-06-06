import 'package:data/time/time_repository_impl.dart';
import 'package:domain/time/time_repository.dart';
import 'package:providers/app_deps.dart';

class ProdDeps implements AppDeps {
  ProdDeps();

  @override
  final TimeRepository timeRepository = TimeRepositoryImpl();
}
