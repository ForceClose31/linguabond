part of 'fragments.dart';

class MeetFragment extends StatefulWidget {
  const MeetFragment({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MeetFragmentState createState() => _MeetFragmentState();
}

class _MeetFragmentState extends State<MeetFragment> {
  Future<void> _publishMeet(int meetId) async {
    try {
      await ApiHelper.post(
          pathUrl: '${dotenv.env['ENDPOINT_MEET_MENTOR_PUBLISH']!}/$meetId');
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Jadwal sudah dipublish')),
      );
    } catch (error) {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: $error')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    if (MyApp.meetBloc.state is MeetInitial) {
      MyApp.meetBloc.add(InitializeMeetData());
    }
    return Scaffold(
      body: BlocBuilder<MeetBloc, MeetState>(
        builder: (context, meetstate) {
          if (meetstate is MeetDataLoaded) {
            final meets = meetstate.meet;
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
                      return buildMeetList(context: context, meet: meet);
                    },
                    itemCount: meets.length,
                  ),
                ),
              ],
            );
          } else if (meetstate is MeetLoading) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return const Center(child: Text('Failed to load meets.'));
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
    required Meet meet,
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
                                "Topic           : ",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(color: kColorBorder),
                              ),
                              const SizedBox(width: 8.0),
                              Text(
                                meet.topik!,
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
                                "Link Meet      : ",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(color: kColorBorder),
                              ),
                              const SizedBox(width: 8.0),
                              Text(
                                meet.link!,
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
                                "Materi        : ",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(color: kColorBorder),
                              ),
                              const SizedBox(width: 8.0),
                              Text(
                                meet.materi!,
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
                                "Jam Mulai       : ",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(color: kColorBorder),
                              ),
                              const SizedBox(width: 8.0),
                              Text(
                                meet.jamMulai!.toFormattedDate(
                                    withYear: false, withHour: true),
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
                                "Jam Mulai       : ",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(color: kColorBorder),
                              ),
                              const SizedBox(width: 8.0),
                              Text(
                                meet.jamMulai!.toFormattedDate(
                                    withYear: false, withHour: true),
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
                                "Jam Berakhir   : ",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(color: kColorBorder),
                              ),
                              const SizedBox(width: 8.0),
                              Text(
                                meet.jamBerakhir!.toFormattedDate(
                                    withYear: false, withHour: true),
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
                                "Date           : ",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(color: kColorBorder),
                              ),
                              const SizedBox(width: 8.0),
                              Text(
                                meet.tanggal!
                                    .toFormattedDate(withMonthName: true),
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
                                "Jumlah Peserta   : ",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(color: kColorBorder),
                              ),
                              const SizedBox(width: 8.0),
                              Text(
                                meet.totalRemaja.toString(),
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
                                "Deskripsi  : ",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(color: kColorBorder),
                              ),
                              const SizedBox(width: 8.0),
                              Text(
                                meet.deskripsi!,
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
                                onPressed: () => _publishMeet(meet.id!),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: kColorBorder,
                                ),
                                child: const Text('Pubish Jadwal'),
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
