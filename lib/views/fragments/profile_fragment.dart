part of 'fragments.dart';

class ProfileFragment extends StatelessWidget {
  ProfileFragment({super.key});
  final image = currentUser?.foto;
  @override
  Widget build(BuildContext context) => Scaffold(
        body: AutofillGroup(
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                title: const Text('Profile'),
                centerTitle: true,
                pinned: true,
                foregroundColor: kColorWhite,
                backgroundColor: Theme.of(context).colorScheme.surface,
                flexibleSpace: FlexibleSpaceBar(
                  background: Align(
                    alignment: Alignment.topCenter,
                    child: Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 150.0 + MediaQuery.viewPaddingOf(context).top,
                          color: Theme.of(context).colorScheme.secondaryContainer,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            width: double.infinity,
                            height: 200.0 - 150.0 + MediaQuery.viewPaddingOf(context).top,
                            color: Theme.of(context).colorScheme.surface,
                          ),
                        ),
                        Align(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 90.0),
                            child: ImageContainer.hero(
                              tag: 'Profile picture',
                              width: 150.0,
                              height: 150.0,
                              containerIconSize: 150.0,
                              dialogIconSize: 150.0,
                              icon: Icons.account_circle_outlined,
                              border: const Border(),
                              image: CachedNetworkImageProvider(image ?? ''),
                              borderRadius: BorderRadius.circular(75.0),
                              containerBackgroundColor: const Color(0xFFA590A7),
                              dialogBackgroundColor: const Color(0xFFA590A7),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SvgPicture.asset('assets/svgs/profile.svg'),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                expandedHeight: 200.0,
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 16.0)),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                sliver: SliverToBoxAdapter(
                  child: TextField(
                    controller: TextEditingController(text: currentUser?.name ?? 'Guest'),
                    decoration: const InputDecoration(
                      labelText: 'Nama',
                    ),
                    textInputAction: TextInputAction.next,
                    autofillHints: const [AutofillHints.name],
                    enabled: false,
                  ),
                ),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 16.0)),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                sliver: SliverToBoxAdapter(
                  child: TextField(
                    controller: TextEditingController(text: currentUser?.email ?? 'Guest'),
                    decoration: const InputDecoration(
                      labelText: 'Email',
                    ),
                    textInputAction: TextInputAction.next,
                    autofillHints: const [AutofillHints.email],
                    enabled: false,
                  ),
                ),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 16.0)),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                sliver: SliverToBoxAdapter(
                  child: TextField(
                    controller: TextEditingController(
                        text: currentUser?.detail?.mapOrNull(
                              mentor: (value) => value.gelar,
                            ) ??
                            'Guest'),
                    decoration: const InputDecoration(
                      labelText: 'Gelar',
                    ),
                    textInputAction: TextInputAction.next,
                    enabled: false,
                  ),
                ),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 16.0)),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                sliver: SliverToBoxAdapter(
                  child: TextField(
                    controller: TextEditingController(
                        text: currentUser?.detail?.mapOrNull(
                              mentor: (value) => value.riwayatPendidikanTerakhir,
                            ) ??
                            'Guest'),
                    decoration: const InputDecoration(
                      labelText: 'Riwayat Pendidikan Terakhir',
                    ),
                    textInputAction: TextInputAction.next,
                    enabled: false,
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0 + MediaQuery.viewInsetsOf(context).bottom),
          child: ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            iconColor: kColorWhite,
            textColor: kColorWhite,
            onTap: () async {
              await ApiHelper.signOut();
              NavigationHelper.toReplacement(SlidePageRoute(pageBuilder: (context) => const SignInPage()));
            },
          ),
        ),
      );
}
