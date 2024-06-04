part of 'fragments.dart';


class MeetFragment extends StatelessWidget {
  const MeetFragment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<MeetBloc, MeetState>(
        builder: (context, state) {
          if (state is MeetLoaded) {
            final meets = state.meets;
            return CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: SizedBox(height: MediaQuery.of(context).padding.top),
                ),
                const SliverToBoxAdapter(child: SizedBox(height: 16.0)),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  sliver: SliverToBoxAdapter(
                    child: Text(
                      'Semua Jadwal Meet',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),
                ),
                const SliverToBoxAdapter(child: SizedBox(height: 16.0)),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  sliver: SliverList.builder(
                    itemBuilder: (context, index) {
                      final meet = meets[index];
                      return buildMeetList(
                        context: context,
                        date: meet.tanggal,
                        time: meet.jamMulai,
                        name: currentUser?.name,
                        topic: meet.topik,
                        subtopic: meet.deskripsi,
                      );
                    },
                    itemCount: meets.length,
                  ),
                ),
              ],
            );
          } else if (state is MeetLoading) {
            return Center(child: CircularProgressIndicator());
          } else {
            return Center(child: Text('Failed to load meets.'));
          }
        },
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 16.0, right: 16.0),
        child: FloatingActionButton(
          onPressed: () {
            NavigationHelper.to(
              SlidePageRoute(pageBuilder: (context) => const AddMeetPage()),
            );
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }

  Widget buildMeetList({
    required BuildContext context,
    DateTime ? date,
    DateTime ? time,
    String ? name,
    String ? topic,
    String ? subtopic,
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Date           : ",
                                style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: kColorBorder),
                              ),
                              const SizedBox(width: 8.0),
                              Text(
                                date!.toFormattedDate(withMonthName: true),
                                style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: kColorBorder),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Time           : ",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(color: kColorBorder),
                              ),
                              const SizedBox(width: 8.0),
                              Text(
                                time!.toFormattedDate(withHour: true),
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(color: kColorBorder),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Teacher    : ",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(color: kColorBorder),
                              ),
                              const SizedBox(width: 8.0),
                              Text(
                                name!,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(color: kColorBorder),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Topic          : ",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(color: kColorBorder),
                              ),
                              const SizedBox(width: 8.0),
                              Text(
                                topic!,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(color: kColorBorder),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Subtopic  : ",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(color: kColorBorder),
                              ),
                              const SizedBox(width: 8.0),
                              Text(
                                subtopic!,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(color: kColorBorder),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15.0),
                          Row(
                            children: [
                              ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: kColorBorder,
                                ),
                                child: const Text('Status: Publish'),
                              ),
                            ],
                          ),
                        ],
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
