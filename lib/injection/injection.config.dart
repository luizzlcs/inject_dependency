// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i5;

import '../datasource/auth_firebase_datasource.dart' as _i6;
import '../datasource/auth_local_datasource.dart' as _i7;
import '../datasource/auth_remote_datasource.dart' as _i3;
import '../interface/auth_repository.dart' as _i8;
import '../maneger/session_meneger.dart' as _i10;
import '../repositories/firebase_auth_repository_impl.dart' as _i9;
import 'injection.dart' as _i11; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  gh.factory<_i3.AuthRemoteDatasource>(() => _i3.AuthRemoteDatasource());
  gh.singleton<_i4.Dio>(registerModule.dio);
  await gh.singletonAsync<_i5.SharedPreferences>(
    () => registerModule.prefs,
    preResolve: true,
  );
  gh.factory<_i6.AuthFirebaseDatasource>(
      () => _i6.AuthFirebaseDatasource(get<_i4.Dio>()));
  gh.factory<_i7.AuthLocalDatasource>(
      () => _i7.AuthLocalDatasource(get<_i5.SharedPreferences>()));
  gh.factory<_i8.AuthRepository>(() => _i9.FirebaseAuthRepositoryImpl(
      firebaseDatasource: get<_i6.AuthFirebaseDatasource>()));
  gh.singleton<_i10.SessionMeneger>(
      _i10.SessionMeneger(get<_i8.AuthRepository>()));
  return get;
}

class _$RegisterModule extends _i11.RegisterModule {}
