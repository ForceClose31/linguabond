part of 'fragments.dart';

class MeetFragment extends StatelessWidget {
  const MeetFragment({super.key});

  @override
  Widget build(BuildContext context) => CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
              child: SizedBox(height: MediaQuery.viewPaddingOf(context).top)),
          const SliverToBoxAdapter(child: SizedBox(height: 16.0)),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            sliver: SliverToBoxAdapter(
              child: BannerContainer(
                title: const Text('10 on 1 Sessions'),
                subtitle: const Text(
                    'Let\'s open up to the things that matter the most '),
                actions: [
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(padding: EdgeInsets.zero),
                    child: Text(
                      'Meet Now',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(color: kColorBorder),
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  const Icon(
                    Icons.date_range_outlined,
                    color: kColorBorder,
                    size: 17.0,
                  )
                ],
                image: Image.asset('assets/images/Meetup Icon.png'),
              ),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 16.0)),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            sliver: SliverToBoxAdapter(
                child: Text('Semua Sesi',
                    style: Theme.of(context).textTheme.headlineMedium)),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 16.0)),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            sliver: SliverList.builder(
              itemBuilder: (context, index) => buildMeetList(
                  context: context,
                  networkImage: kDummyPictureProfileUrl,
                  name: 'Mr. Marakopolo',
                  topic: 'Belajar Vocabulary',
                  date: DateTime.now(),
                  startTime: const TimeOfDay(hour: 7, minute: 30),
                  endTime: const TimeOfDay(hour: 8, minute: 30)),
              itemCount: 1000,
            ),
          ),
        ],
      );

  Widget buildMeetList({
    required BuildContext context,
    required String networkImage,
    required String name,
    required String topic,
    required DateTime date,
    required TimeOfDay startTime,
    required TimeOfDay endTime,
  }) =>
      Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: kColorWhite,
              borderRadius: kBorderRadiusBanner,
              boxShadow: kBannerShadow,
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      IgnorePointer(
                        child: MyFilledButton.circle(
                          bottomBorderWidth: 2.0,
                          onPressed: () {},
                          image: DecorationImage(
                            image: NetworkImage(networkImage),
                          ),
                        ),
                      ),
                      const SizedBox(width: 16.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            name,
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge!
                                .copyWith(color: kColorBorder),
                          ),
                          const SizedBox(height: 4.0),
                          Text(
                            topic,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(color: kColorBorder),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.date_range_outlined,
                                size: 17.0,
                                color: kColorBorder,
                              ),
                              const SizedBox(width: 8.0),
                              Text(
                                date.toFormattedDate(withMonthName: true),
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(color: kColorBorder),
                              ),
                            ],
                          ),
                          const SizedBox(height: 4.0),
                          Row(
                            children: [
                              const Icon(
                                Icons.schedule,
                                size: 17.0,
                                color: kColorBorder,
                              ),
                              const SizedBox(width: 8.0),
                              Text(
                                '${startTime.toFormattedString()} - ${endTime.toFormattedString()}',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(color: kColorBorder),
                              ),
                            ],
                          ),
                        ],
                      ),
                      FilledButton(
                        onPressed: () => NavigationHelper.to(SlidePageRoute(
                            pageBuilder: (context) => const DetailMeetPage())),
                        style: FilledButton.styleFrom(
                          backgroundColor: kColorBorder,
                          foregroundColor: kColorWhite,
                        ),
                        child: const Text('Gabung Sekarang'),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(height: 16.0),
        ],
      );
}
