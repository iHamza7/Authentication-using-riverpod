part of 'authentication_controller.dart';

enum AuthenticationStatus {
  authenticated,
  unauthenticated,
}

class AuthenticationState extends Equatable {
  final AuthenticationStatus status;
  final AuthUser user;

  const AuthenticationState({required this.status, this.user = AuthUser.empty});

  const AuthenticationState.authenticated(AuthUser user)
      : this(status: AuthenticationStatus.authenticated, user: user);

  const AuthenticationState.unauthenticated()
      : this(status: AuthenticationStatus.unauthenticated);

  @override
  List<Object?> get props => [status, user];
}
