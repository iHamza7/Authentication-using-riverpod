import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authProvider =
    Provider<AuthenticationRepository>((_) => AuthenticationRepository());
