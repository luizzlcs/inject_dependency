import 'package:inject_dependency/datasource/auth_firebase_datasource.dart';
import 'package:inject_dependency/interface/auth_repository.dart';
import '../model/user_model.dart';

class FirebaseAuthRepositoryImpl implements AuthRepository {
  FirebaseAuthRepositoryImpl({required this.firebaseDatasource});

  final AuthFirebaseDatasource firebaseDatasource;

  UserModel? userModel;

  @override
  UserModel? getCurrentUser() {
    return firebaseDatasource.getCurrentUser();
  }
}
