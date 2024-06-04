part of '../blocs.dart';

abstract class AuthenticationState {}

class AuthenticationDataLoaded extends AuthenticationState {
  AuthenticationDataLoaded({
    required this.textControllerEmail,
    required this.textControllerPassword,
    required this.isPasswordVisible,
  });

  final TextEditingController textControllerEmail;
  final TextEditingController textControllerPassword;

  final bool isPasswordVisible;
}
