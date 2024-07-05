
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../model/user_model.dart';
@injectable
class AuthFirebaseDatasource {
  AuthFirebaseDatasource(this.dio);
  
  final Dio dio;

  UserModel? getCurrentUser() {
    // Fazer chamada com o Dio;
    return UserModel(name: 'Luiz Carlos');
  }
}

