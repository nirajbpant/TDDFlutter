part of 'splash_bloc.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState.loading() = _Loading;
  const factory SplashState.userExists() = _UserExists;
  const factory SplashState.userDoesntExist() = _UserDoesntExist;
}
