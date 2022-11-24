import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../core/logger/log.dart';
import '../../data/session/datastore/models/login_request.dart';
import '../../domain/exception/login_exceptions.dart';
import '../../domain/session/repository/session_repository.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final ISessionRepository sessionRepository;
  LoginBloc(this.sessionRepository) : super(const _Initial()) {
    on<LoginEvent>((event, emit) async {
      await event.when(login: (loginRequest) async {
        emit(const LoginState.loading());
        final response = await sessionRepository.login(loginRequest);
        Log.d(response.toString());
        response.fold(
          (exception) {
            emit(
              exception.when(
                unKnownError: () => LoginState.error(
                  messsage: LoginExceptions.getErrorMessage(
                    const LoginExceptions.unKnownError(),
                  ),
                ),
                connectionTimeOut: () => LoginState.error(
                  messsage: LoginExceptions.getErrorMessage(
                    const LoginExceptions.connectionTimeOut(),
                  ),
                ),
                noConnection: () => LoginState.error(
                  messsage: LoginExceptions.getErrorMessage(
                    const LoginExceptions.noConnection(),
                  ),
                ),
                deviceNotActivated: () =>
                    const LoginState.successAndDeviceUnAuthorized(),
                invalidUsername: () => LoginState.error(
                  messsage: LoginExceptions.getErrorMessage(
                    const LoginExceptions.invalidUsername(),
                  ),
                ),
              ),
            );
          },
          (response) => emit(
            const LoginState.successAndDeviceAuthorized(authMessage: ""),
          ),
        );
      });
    });
  }
}
