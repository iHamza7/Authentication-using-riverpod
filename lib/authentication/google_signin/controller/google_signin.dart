import 'package:authentication_repository/authentication_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../repository/auth_repo_provider.dart';

final signInProvider =
    StateNotifierProvider<GoogleSignInController, GoogleSignInState>((ref) {
  final authenticationRepository = ref.watch(authRepoProvider);
  return GoogleSignInController(authenticationRepository);
});

enum GoogleSignInState {
  initial,
  loading,
  succes,
  error,
}

class GoogleSignInController extends StateNotifier<GoogleSignInState> {
  final AuthenticationRepository _authenticationRepository;
  GoogleSignInController(this._authenticationRepository)
      : super(GoogleSignInState.initial);

  Future<void> signInWithGoogle() async {
    state = GoogleSignInState.loading;

    try {
      final isNewUser = await _authenticationRepository.signInWithGoogle();
      if (isNewUser != null && isNewUser) {
        //write to database
        //call firebase repository
      }
      state = GoogleSignInState.succes;
    } on SignInWithGoogleFailure catch (_) {
      state = GoogleSignInState.error;
    }
  }
}
