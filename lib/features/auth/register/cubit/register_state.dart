part of 'register_cubit.dart';

@immutable
sealed class RegisterState {}

final class RegisterInitial extends RegisterState {}

final class RegisterLoading extends RegisterState {}

final class RegisterSuccess extends RegisterState {
  final UserEntity userEntity;

  RegisterSuccess({required this.userEntity});
}

final class RegisterError extends RegisterState {
  final String errorMessage;

  RegisterError({required this.errorMessage});
}

final class RegisterChangePasswordVisibilityState extends RegisterState {}

final class RegisterChangeAutoValidateModeState extends RegisterState {}