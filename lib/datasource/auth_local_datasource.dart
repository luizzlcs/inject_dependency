
import '../model/user_model.dart';

class AuthLocalDatasource {
  
  UserModel? getCurrentUser(){
    // Pegar os dados em FlutterSecureStorage
    return UserModel(name: 'Thiago Pereira');
  }
}