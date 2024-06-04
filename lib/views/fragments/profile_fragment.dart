part of 'fragments.dart';

class ProfileFragment extends StatelessWidget {
  const ProfileFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        children: [
          const SizedBox(height: 20.0),
          ListTile(
            leading: ImageContainer.hero(
              tag: 'Profile picture',
              width: 48.0,
              height: 48.0,
              icon: Icons.person,
              border: const Border(),
              image: const NetworkImage(kDummyPictureProfileUrl),
              borderRadius: BorderRadius.circular(24.0),
              extendedAppBar: AppBar(
                title: Text('Guest'),
              ),
            ),
            title: Text('Guest'),
            trailing: const Icon(Icons.chevron_right),
            iconColor: kColorWhite,
            textColor: kColorWhite,
            onTap: () => NavigationHelper.to(SlidePageRoute(
                pageBuilder: (context) => const EditProfilePage())),
          ),
          const SizedBox(height: 32.0),
          ListTile(
            leading: const Icon(Icons.key),
            title: const Text('Ganti Password'),
            iconColor: kColorWhite,
            textColor: kColorWhite,
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            iconColor: kColorWhite,
            textColor: kColorWhite,
            onTap: () async {
              await ApiHelper.signOut();
              NavigationHelper.toReplacement(SlidePageRoute(
                  pageBuilder: (context) => const SignInPage()));
            },
          ),
        ],
      ),
    );
  }
}
