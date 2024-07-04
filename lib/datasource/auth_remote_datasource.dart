import 'package:dio/dio.dart';
import 'package:inject_dependency/model/user_model.dart';

class AuthRemoteDatasource {
  AuthRemoteDatasource(this.dio);
  
  final Dio dio;

  UserModel? getCurrentUser() {
    // Fazer chamada com o Dio;
    return UserModel(name: 'Lucicleide Silva');
  }
}
