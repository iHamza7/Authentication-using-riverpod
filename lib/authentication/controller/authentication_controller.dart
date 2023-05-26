import 'package:authentication_repository/authentication_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'authentication_state.dart';

class AuthController extends StateNotifier<AuthenticationState> {
  final AuthenticationRepository _authRepository;
  AuthController(this._authRepository)
      : super(const AuthenticationState.unauthenticated()) {
    _authRepository.user.listen((user) => _onUserChanged(user));
  }
  void _onUserChanged(AuthUser user) {
    if (user.isEmpty) {
      state = const AuthenticationState.unauthenticated();
    }
  }
}
