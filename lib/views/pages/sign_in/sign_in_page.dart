part of '../pages.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset('assets/images/logo.png'),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Masukkan email',
                    ),
                    textInputAction: TextInputAction.next,
                  ),
                ),
                const SizedBox(height: 24.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextField(
                    decoration: const InputDecoration(
                      labelText: 'Masukkan kata sandi',
                    ),
                    textInputAction: TextInputAction.next,
                    onEditingComplete: () => NavigationHelper.to(SlidePageRoute(
                        pageBuilder: (context) => const HomePage())),
                  ),
                ),
                const SizedBox(height: 24.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: MyFilledButton(
                    onPressed: () => NavigationHelper.to(SlidePageRoute(
                        pageBuilder: (context) => const HomePage())),
                    child: const Text('Masuk'),
                  ),
                ),
                TextButton(
                  onPressed: () => NavigationHelper.to(SlidePageRoute(
                      pageBuilder: (context) => const SignInPage())),
                  child: const Text('Lupa kata sandi?'),
                ),
              ],
            ),
          ),
        ),
      );
}
