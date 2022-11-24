import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../core/logger/log.dart';
import '../../domain/session/repository/session_repository.dart';

part 'splash_bloc.freezed.dart';
part 'splash_event.dart';
part 'splash_state.dart';

@injectable
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final ISessionRepository sessionRepository;
  SplashBloc(this.sessionRepository) : super(const _Loading()) {
    on<SplashEvent>((event, emit) {
      event.when(started: () async {
        final userCode = await sessionRepository.userCode;
        Log.d("Access User Code: ${userCode.toString()}");
        if (userCode != null && userCode != "") {
          emit(const SplashState.userExists());
        } else {
          emit(const SplashState.userDoesntExist());
        }
      });
    });
    add(const SplashEvent.started());
  }
}
