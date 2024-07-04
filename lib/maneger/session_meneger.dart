import 'package:flutter/material.dart';
import 'package:inject_dependency/model/user_model.dart';

import '../interface/auth_repository.dart';

class SessionMeneger {

  SessionMeneger(this.repository) {
    debugPrint('Construção do SessionManeger');
    _getCurrentUser();
  }

  final AuthRepository repository;
  UserModel? user;

  void _getCurrentUser() {
    user = repository.getCurrentUser();
    debugPrint('Usuário recuperado: ${user?.name}');
  }
}
