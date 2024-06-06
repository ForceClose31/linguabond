part of '../pages.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) => BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, stateAuthentication) {
          stateAuthentication as AuthenticationDataLoaded;

          if (kDebugMode) {
            stateAuthentication.textControllerEmail.text = dotenv.env['USERNAME_DUMMY_MENTOR'] ?? '';
            stateAuthentication.textControllerPassword.text = dotenv.env['PASSWORD_DUMMY_MENTOR'] ?? '';
          }

          return Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 128.0),
                    Center(
                      child: Text(
                        'Yuk, mulai masuk!',
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                    ),
                    const SizedBox(height: 64.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: TextField(
                        controller: stateAuthentication.textControllerEmail,
                        decoration: const InputDecoration(
                          labelText: 'Email',
                        ),
                        textInputAction: TextInputAction.next,
                      ),
                    ),
                    const SizedBox(height: 24.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: TextField(
                        controller: stateAuthentication.textControllerPassword,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          suffixIcon: IconButton(
                            onPressed: () => MyApp.authenticationBloc.add(SetLoginPasswordVisible(value: !stateAuthentication.isPasswordVisible)),
                            icon: Icon(!stateAuthentication.isPasswordVisible ? Icons.visibility : Icons.visibility_off),
                          ),
                        ),
                        obscureText: !stateAuthentication.isPasswordVisible,
                        onEditingComplete: () => MyApp.authenticationBloc.add(SignInPressed()),
                      ),
                    ),
                    const SizedBox(height: 24.0),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: MyFilledButton(
                        onPressed: () => MyApp.authenticationBloc.add(SignInPressed()),
                        child: const Text('Masuk'),
                      ),
                    ),
                    // TODO: Implement forgot password
                    // TextButton(
                    //   onPressed: () => NavigationHelper.to(SlidePageRoute(pageBuilder: (context) => const SignInPage())),
                    //   child: const Text('Lupa password?'),
                    // ),
                  ],
                ),
              ),
            ),
          );
        },
      );
}
