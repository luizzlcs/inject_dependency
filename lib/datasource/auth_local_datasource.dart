
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../model/user_model.dart';

  @injectable
class AuthLocalDatasource {
  AuthLocalDatasource(this.sharedPreferences);
  
  final SharedPreferences sharedPreferences;
  UserModel? getCurrentUser(){
    // Pegar os dados no SharedPreferences
    return UserModel(name: 'Thiago Pereira');
  }
}