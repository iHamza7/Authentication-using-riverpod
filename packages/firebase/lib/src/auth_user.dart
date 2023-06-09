import 'package:equatable/equatable.dart';

class AuthUser extends Equatable {
  final String id;
  final String? name;
  final String? email;
  final bool emailVerified;

  const AuthUser({
    required this.id,
    this.name,
    this.email,
    this.emailVerified = false,
  });

  static const empty = AuthUser(id: '');
  bool get isEmpty => this == AuthUser.empty;
  @override
  List<Object?> get props => [
        id,
        name,
        email,
        emailVerified,
      ];
}
