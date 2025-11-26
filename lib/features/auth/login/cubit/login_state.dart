part of 'login_cubit.dart';

@immutable
sealed class LoginState {}

final class LoginInitial extends LoginState {}

final class LoginLoading extends LoginState {}

final class LoginLoadingSocial extends LoginState {}

final class LoginSuccess extends LoginState {
  final UserEntity userEntity;

  LoginSuccess({required this.userEntity});
}

final class LoginError extends LoginState {
  final String errorMessage;

  LoginError({required this.errorMessage});
}

final class LoginChangePasswordVisibilityState extends LoginState {}

final class LoginChangeAutoValidateModeState extends LoginState {}