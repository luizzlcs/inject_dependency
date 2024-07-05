// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:inject_dependency/injection/injection.config.dart';
// import 'package:inject_dependency/datasource/auth_firebase_datasource.dart';
// import 'package:inject_dependency/datasource/auth_local_datasource.dart';
// import 'package:inject_dependency/datasource/auth_remote_datasource.dart';
// import 'package:inject_dependency/maneger/session_meneger.dart';
// import 'package:inject_dependency/interface/auth_repository.dart';
// import 'package:inject_dependency/repositories/firebase_auth_repository_impl.dart';
// import 'package:inject_dependency/repositories/node_auth_repository_impl.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.I;
/* void configureDependencies() {
  const useFirebase = false;

  debugPrint('Inicio da configuração de dependência'.toString());

  getIt.registerSingleton(Dio());
  getIt.registerFactory(() => AuthRemoteDatasource(getIt()));
  getIt.registerFactory(() => AuthLocalDatasource());
  getIt.registerFactory(() => AuthFirebaseDatasource(getIt()),);

  useFirebase == false // Faz alternância entre as dependência de acesso aos dados
      ? getIt.registerFactory<AuthRepository>(() => FirebaseAuthRepositoryImpl(firebaseDatasource: getIt()))
      : getIt.registerFactory<AuthRepository>(() => NodeAuthRepositoryImpl(
          localDatasource: getIt(), remoteDatasource: getIt()));

  getIt.registerFactory(() => SessionMeneger(getIt()));

  debugPrint('Fim da configuração de dependência'.toString());

  // Registro nomal das dependências sem a alternância de acesso a ulma das dependências.
  // getIt.registerSingleton(Dio());
  // getIt.registerFactory(() => AuthRemoteDatasource(getIt()));
  // getIt.registerFactory(() => AuthLocalDatasource());
  // getIt.registerFactory<AuthRepository>(() =>
  //     NodeAuthRepository(localDatasource: getIt(), remoteDatasource: getIt()));
  // getIt.registerFactory(() => SessionMeneger(getIt()));

} */

@InjectableInit()  
Future<void> configureDependencies() => $initGetIt(getIt);

@module  
abstract class RegisterModule {  
  @singleton
   Dio get  dio => Dio(); 

   @preResolve
   @singleton
   Future<SharedPreferences> get prefs => SharedPreferences.getInstance(); 
}  
