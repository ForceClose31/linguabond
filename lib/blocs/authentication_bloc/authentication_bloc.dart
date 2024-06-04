part of '../blocs.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(_authenticationDataLoaded) {
    on<SetAuthenticationState>(
        (event, emit) => emit(event.state ?? _authenticationDataLoaded));

    on<SetLoginPasswordVisible>((event, emit) {
      _isPasswordVisible = event.value;
      emit(_authenticationDataLoaded);
    });

    on<SignInPressed>((event, emit) async {
      if (_textControllerEmail.text.trim().isEmpty) {
        NavigationHelper.clearSnackBars();
        NavigationHelper.showSnackBar(
            const SnackBar(content: Text('Email masih kosong')));
        return;
      }

      if (_textControllerPassword.text.trim().isEmpty) {
        NavigationHelper.clearSnackBars();
        NavigationHelper.showSnackBar(
            const SnackBar(content: Text('Password masih kosong')));
        return;
      }

      showLoadingDialog();

      try {
        await ApiHelper.signIn(
          email: _textControllerEmail.text.trim(),
          password: _textControllerPassword.text.trim(),
        );
      } catch (e) {
        NavigationHelper.back();
        await ApiHelper.handleError(e);
        return;
      }

      while (NavigationHelper.canGoBack()) {
        NavigationHelper.back();
      }
      NavigationHelper.toReplacement(
          SlidePageRoute(pageBuilder: (context) => HomePage(key: homePageKey)));
    });

  }

  static final TextEditingController _textControllerEmail =
      TextEditingController();
  static final TextEditingController _textControllerPassword =
      TextEditingController();

  static bool _isPasswordVisible = false;

  static AuthenticationDataLoaded get _authenticationDataLoaded =>
      AuthenticationDataLoaded(
        textControllerEmail: _textControllerEmail,
        textControllerPassword: _textControllerPassword,
        isPasswordVisible: _isPasswordVisible,
      );
}
