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

  @override
  List<Object?> get props => throw UnimplementedError();
}
