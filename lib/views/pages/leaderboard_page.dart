part of 'pages.dart';

class LeaderboardPage extends StatelessWidget {
  const LeaderboardPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => NavigationHelper.back(),
            icon: const Icon(Icons.chevron_left),
          ),
          centerTitle: true,
          title: const Text('Leaderboard'),
          foregroundColor: kColorWhite,
          backgroundColor: kColorSurface,
        ),
        body: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(child: SizedBox(height: 16.0)),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              sliver: SliverToBoxAdapter(
                child: Text(
                  'Urutan Anda saat ini di 11',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: 16.0)),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              sliver: SliverList.builder(
                itemBuilder: (context, index) => Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 16.0, horizontal: 8.0),
                      decoration: index == 3
                          ? BoxDecoration(
                              color: kColorWhite.withOpacity(0.2),
                              borderRadius: kBorderRadius,
                            )
                          : null,
                      child: Row(
                        children: [
                          switch (index) {
                            0 =>
                              SvgPicture.asset('assets/svgs/bi trophy 1.svg'),
                            1 =>
                              SvgPicture.asset('assets/svgs/bi trophy 2.svg'),
                            2 =>
                              SvgPicture.asset('assets/svgs/bi trophy 3.svg'),
                            _ => Container(
                                width: 24.0,
                                height: 24.0,
                                decoration: const BoxDecoration(
                                  color: kColorBorder,
                                  shape: BoxShape.circle,
                                ),
                                child: Center(child: Text('${index + 1}')),
                              ),
                          },
                          const SizedBox(width: 8.0),
                          ImageContainer.hero(
                            tag: 'Leaderboard $index',
                            width: 56.0,
                            height: 56.0,
                            image: const NetworkImage(kDummyPictureProfileUrl),
                          ),
                          const SizedBox(width: 8.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('altamisatmaja'),
                              const SizedBox(height: 8.0),
                              Row(
                                children: [
                                  SvgPicture.asset('assets/svgs/fire.svg'),
                                  const SizedBox(width: 8.0),
                                  const Text('1 Star'),
                                  const SizedBox(width: 32.0),
                                  SvgPicture.asset('assets/svgs/exp.svg'),
                                  const SizedBox(width: 8.0),
                                  const Text('120 Exp'),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    if (index != 9) const Divider(),
                  ],
                ),
                itemCount: 10,
              ),
            )
          ],
        ),
      );
}
