part of '../blocs.dart';

abstract class AuthenticationEvent {}

class SetAuthenticationState extends AuthenticationEvent {
  SetAuthenticationState([this.state]);

  final AuthenticationState? state;
}

class SetLoginPasswordVisible extends AuthenticationEvent {
  SetLoginPasswordVisible({required this.value});

  final bool value;
}

class SignInPressed extends AuthenticationEvent {}

class SignUpPressed extends AuthenticationEvent {}
