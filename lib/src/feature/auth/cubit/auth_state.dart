sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class AuthLoading extends AuthState {}

final class AuthSuccess extends AuthState {
  final dynamic userData;
  AuthSuccess({required this.userData });
}

final class ChooseImage extends AuthState {
}

final class AuthFailer extends AuthState {}
