import 'package:inject_dependency/datasource/auth_local_datasource.dart';
import 'package:inject_dependency/datasource/auth_remote_datasource.dart';
import 'package:inject_dependency/interface/auth_repository.dart';
import '../model/user_model.dart';

class NodeAuthRepositoryImpl implements AuthRepository{
  NodeAuthRepositoryImpl({
    required this.remoteDatasource,
    required this.localDatasource,
  });

  final AuthRemoteDatasource remoteDatasource;
  final AuthLocalDatasource localDatasource;

  @override
  UserModel? getCurrentUser() {
    final localUser = localDatasource.getCurrentUser();
    if (localUser != null && localUser.name != null) {
      return localUser;
    } else {
      return remoteDatasource.getCurrentUser();
    }
  }
}
