part of 'pages.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: AutofillGroup(
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                title: const Text('Edit Profile'),
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
                          color:
                              Theme.of(context).colorScheme.secondaryContainer,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            width: double.infinity,
                            height: 200.0 -
                                150.0 +
                                MediaQuery.viewPaddingOf(context).top,
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
                              image:
                                  const NetworkImage(kDummyPictureProfileUrl),
                              borderRadius: BorderRadius.circular(75.0),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0.0,
                          right: MediaQuery.sizeOf(context).width / 2 -
                              56.0 -
                              32.0,
                          child: IconButton.filled(
                            onPressed: () {},
                            icon: const Icon(Icons.camera_alt),
                            iconSize: 28.0,
                            style: const ButtonStyle(
                              fixedSize:
                                  WidgetStatePropertyAll(Size(56.0, 56.0)),
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
                    controller:
                        TextEditingController(text: 'Altamis Fattah Atmaja'),
                    decoration: const InputDecoration(
                      labelText: 'Nama',
                    ),
                    textInputAction: TextInputAction.next,
                    autofillHints: const [AutofillHints.username],
                  ),
                ),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 16.0)),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                sliver: SliverToBoxAdapter(
                  child: TextField(
                    controller: TextEditingController(
                        text: 'altamisfattah16@gmail.com'),
                    decoration: const InputDecoration(
                      labelText: 'Email',
                    ),
                    textInputAction: TextInputAction.next,
                    autofillHints: const [AutofillHints.username],
                  ),
                ),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 16.0)),
              SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                sliver: SliverToBoxAdapter(
                  child: TextField(
                    controller: TextEditingController(text: 'altamisatmaja'),
                    decoration: const InputDecoration(
                      labelText: 'Username',
                    ),
                    textInputAction: TextInputAction.next,
                    autofillHints: const [AutofillHints.username],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.fromLTRB(
              16.0, 16.0, 16.0, 16.0 + MediaQuery.viewInsetsOf(context).bottom),
          child: MyFilledButton(
            onPressed: () {},
            child: const Text('Simpan'),
          ),
        ),
      );
}