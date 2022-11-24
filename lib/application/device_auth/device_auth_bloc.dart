import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:dummy_flutter/data/device_authorization/datastore/models/device_auth_request.dart';
import 'package:dummy_flutter/domain/device_authorization/repository/device_authorization_repository.dart';
import 'package:dummy_flutter/domain/exception/auth_device_exception.dart';

part 'device_auth_event.dart';
part 'device_auth_state.dart';
part 'device_auth_bloc.freezed.dart';

@injectable
class DeviceAuthBloc extends Bloc<DeviceAuthEvent, DeviceAuthState> {
  final IDeviceAuthorizationRepository authorizationRepository;
  DeviceAuthBloc(this.authorizationRepository) : super(const _Initial()) {
    on<DeviceAuthEvent>((event, emit) async {
      await event.when(authorize: (activationKey) async {
        emit(const DeviceAuthState.loading());
        final result = await authorizationRepository.authorize(activationKey);
        result.fold(
            (exception) => emit(
                  exception.when(
                    noConnection: () => DeviceAuthState.unAuthorized(
                      message: AuthDeviceExceptions.getErrorMessage(
                        const AuthDeviceExceptions.noConnection(),
                      ),
                    ),
                    invalidKey: () => DeviceAuthState.unAuthorized(
                      message: AuthDeviceExceptions.getErrorMessage(
                        const AuthDeviceExceptions.invalidKey(),
                      ),
                    ),
                    unKnownError: () => DeviceAuthState.unAuthorized(
                      message: AuthDeviceExceptions.getErrorMessage(
                        const AuthDeviceExceptions.unKnownError(),
                      ),
                    ),
                  ),
                ),
            (result) => emit(const DeviceAuthState.authorized()));
      });
    });
  }
}
