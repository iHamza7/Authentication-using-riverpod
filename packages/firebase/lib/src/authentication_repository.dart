class SignUpWithEmailAndPasswordFailure implements Exception {
  final String code;
  const SignUpWithEmailAndPasswordFailure(this.code);
}

class SignInWithEmailAndPasswordFailure implements Exception {
  final String code;
  const SignInWithEmailAndPasswordFailure(this.code);
}

class ForgotPasswordFailure implements Exception {
  final String code;
  const ForgotPasswordFailure(this.code);
}

class SignInWithGoogleFailure implements Exception {}

class SignOutFailure implements Exception {}
