// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i15;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i10;

import '../application/device_auth/device_auth_bloc.dart' as _i35;
import '../application/login/login_bloc.dart' as _i31;
import '../application/search_trailer/search_trailer_bloc.dart' as _i32;
import '../application/splash/splash_bloc.dart' as _i33;
import '../application/track_trailer/track_trailer_bloc.dart' as _i34;
import '../config/dependency/dependencies.dart' as _i3;
import '../config/dependency/development_dependencies.dart' as _i4;
import '../config/dependency/production_dependencies.dart' as _i5;
import '../config/device_info/device_info.dart' as _i13;
import '../config/device_info/device_info_impl.dart' as _i14;
import '../core/logger/http_formatter.dart' as _i6;
import '../data/device_authorization/datastore/device_authorization_datastore_impl.dart'
    as _i20;
import '../data/device_authorization/device_auth_api_service.dart' as _i18;
import '../data/device_authorization/repository/device_authorization_repository_impl.dart'
    as _i22;
import '../data/network/interceptor/api_header_interceptor.dart' as _i12;
import '../data/network/interceptor/network_interceptor.dart' as _i9;
import '../data/network/repository/network_info_impl.dart' as _i8;
import '../data/search_trailer/datastore/search_trailer_datastore_impl.dart'
    as _i24;
import '../data/search_trailer/repository/search_trailer_repository_impl.dart'
    as _i26;
import '../data/search_trailer/search_trailer_api_service.dart' as _i16;
import '../data/session/datastore/session_datastore_impl.dart' as _i28;
import '../data/session/managers/session_preference_manager.dart' as _i11;
import '../data/session/repository/session_repository_impl.dart' as _i30;
import '../data/session/session_api_service.dart' as _i17;
import '../domain/device_authorization/datastore/device_authorization_datastore.dart'
    as _i19;
import '../domain/device_authorization/repository/device_authorization_repository.dart'
    as _i21;
import '../domain/network/network_info.dart' as _i7;
import '../domain/search_trailer/datastore/search_trailer_datastore.dart'
    as _i23;
import '../domain/search_trailer/repository/search_trailer_repository.dart'
    as _i25;
import '../domain/session/datastore/session_datastore.dart' as _i27;
import '../domain/session/repository/session_repository.dart' as _i29;
import 'modules/core_modules.dart' as _i37;
import 'modules/network/network_module.dart' as _i36;

const String _dev = 'dev';
const String _prod = 'prod';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final networkModule = _$NetworkModule();
  final registerModule = _$RegisterModule();
  gh.lazySingleton<_i3.Dependencies>(() => _i4.DevelopmentDependenciesImpl(),
      registerFor: {_dev});
  gh.lazySingleton<_i3.Dependencies>(() => _i5.ProductionDependenciesImpl(),
      registerFor: {_prod});
  gh.factory<_i6.HttpFormatter>(() => networkModule.httpFormatter);
  gh.lazySingleton<_i7.INetworkInfo>(() => _i8.NetworkInfoImpl());
  gh.factory<_i9.NetworkConnectionInterceptor>(
      () => _i9.NetworkConnectionInterceptor(get<_i7.INetworkInfo>()));
  await gh.factoryAsync<_i10.SharedPreferences>(() => registerModule.prefs,
      preResolve: true);
  gh.singleton<_i11.SessionPreferenceManager>(
      _i11.SessionPreferenceManager(get<_i10.SharedPreferences>()));
  gh.factory<_i12.ApiHeadersInterceptor>(
      () => _i12.ApiHeadersInterceptor(get<_i11.SessionPreferenceManager>()));
  gh.lazySingleton<_i13.DeviceInfo>(
      () => _i14.DeviceInfoImpl(get<_i11.SessionPreferenceManager>()));
  gh.factory<_i15.Dio>(() => networkModule.getDio(
      get<_i9.NetworkConnectionInterceptor>(),
      get<_i6.HttpFormatter>(),
      get<_i12.ApiHeadersInterceptor>()));
  gh.factory<_i16.SearchTrailerApiService>(
      () => _i16.SearchTrailerApiService(get<_i15.Dio>()));
  gh.factory<_i17.SessionApiService>(
      () => _i17.SessionApiService(get<_i15.Dio>()));
  gh.factory<_i18.DeviceAuthApiService>(
      () => _i18.DeviceAuthApiService(get<_i15.Dio>()));
  gh.lazySingleton<_i19.IDeviceAuthorizationDataStore>(() =>
      _i20.DeviceAuthorizationDataStoreImpl(get<_i18.DeviceAuthApiService>()));
  gh.lazySingleton<_i21.IDeviceAuthorizationRepository>(() =>
      _i22.DeviceAuthorizationRepositoryImpl(
          get<_i19.IDeviceAuthorizationDataStore>()));
  gh.lazySingleton<_i23.ISearchTrailerDataStore>(() =>
      _i24.SearchTrailerDataStoreImpl(get<_i16.SearchTrailerApiService>()));
  gh.lazySingleton<_i25.ISearchTrailerRepository>(() =>
      _i26.SearchTrailerRepositoryImpl(get<_i23.ISearchTrailerDataStore>()));
  gh.lazySingleton<_i27.ISessionDataStore>(
      () => _i28.SessionDataStoreImpl(get<_i17.SessionApiService>()));
  gh.lazySingleton<_i29.ISessionRepository>(() => _i30.SessionRepositoryImpl(
      get<_i11.SessionPreferenceManager>(), get<_i27.ISessionDataStore>()));
  gh.factory<_i31.LoginBloc>(
      () => _i31.LoginBloc(get<_i29.ISessionRepository>()));
  gh.singleton<_i32.SearchTrailerBloc>(
      _i32.SearchTrailerBloc(get<_i25.ISearchTrailerRepository>()));
  gh.factory<_i33.SplashBloc>(
      () => _i33.SplashBloc(get<_i29.ISessionRepository>()));
  gh.factory<_i34.TrackTrailerBloc>(
      () => _i34.TrackTrailerBloc(get<_i25.ISearchTrailerRepository>()));
  gh.factory<_i35.DeviceAuthBloc>(
      () => _i35.DeviceAuthBloc(get<_i21.IDeviceAuthorizationRepository>()));
  return get;
}

class _$NetworkModule extends _i36.NetworkModule {}

class _$RegisterModule extends _i37.RegisterModule {}
