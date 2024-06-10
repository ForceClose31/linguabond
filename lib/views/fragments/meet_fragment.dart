part of 'fragments.dart';

class MeetFragment extends StatefulWidget {
  const MeetFragment({super.key});

  @override
  State<MeetFragment> createState() => _MeetFragmentState();
}

class _MeetFragmentState extends State<MeetFragment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<MeetBloc, MeetState>(
        builder: (context, meetstate) {
          if (meetstate is MeetDataLoaded) {
            final meets = meetstate.meet;
            return RefreshIndicator(
              onRefresh: () {
                Completer<bool> completer = Completer();
                MyApp.meetBloc.add(InitializeMeetData(completer: completer));
                return completer.future;
              },
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(child: SizedBox(height: MediaQuery.of(context).padding.top)),
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
                  const SliverToBoxAdapter(child: SizedBox(height: kBottomFabPadding))
                ],
              ),
            );
          } else if (meetstate is MeetError) {
            return ErrorOccuredButton(
              onRetryPressed: () => MyApp.meetBloc.add(InitializeMeetData()),
            );
          }

          return const Center(child: CircularProgressIndicator());
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          NavigationHelper.to(
            SlidePageRoute(pageBuilder: (context) => const AddMeetPage()),
          );
        },
        icon: const Icon(Icons.add),
        label: const Text('Jadwal'),
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
                  LayoutBuilder(
                    builder: (context, constraints) {
                      return Table(
                        columnWidths: {
                          0: const FixedColumnWidth(100.0),
                          1: const FixedColumnWidth(16.0),
                          2: FixedColumnWidth(constraints.maxWidth - 100.0 - 16.0),
                        },
                        children: [
                          _buildTableRow(context, "Topic", '${meet.topik}'),
                          _buildLinkTableRow(context, "Link Meet", '${meet.link}'),
                          _buildLinkTableRow(context, "Materi", '${meet.materi}'),
                          _buildTableRow(
                            context,
                            "Jam Mulai",
                            TimeOfDay.fromDateTime(meet.jamMulai!).toFormattedString(),
                          ),
                          _buildTableRow(
                            context,
                            "Jam Berakhir",
                            TimeOfDay.fromDateTime(meet.jamBerakhir!).toFormattedString(),
                          ),
                          _buildTableRow(
                            context,
                            "Date",
                            meet.tanggal!.toFormattedDate(withMonthName: true),
                          ),
                          _buildTableRow(
                            context,
                            "Jumlah Peserta",
                            meet.totalRemaja.toString(),
                          ),
                          _buildTableRow(context, "Deskripsi", '${meet.deskripsi}'),
                          _buildTableRow(context, "Status", meet.status!.text),
                        ],
                      );
                    },
                  ),
                  const SizedBox(height: 15.0),
                  if (meet.status == MeetStatus.belumDipublish)
                    Align(
                      alignment: Alignment.centerLeft,
                      child: ElevatedButton(
                        onPressed: () => MyApp.meetBloc.add(PublishMeet(meet.id!)),
                        style: ElevatedButton.styleFrom(backgroundColor: kColorBorder),
                        child: const Text('Pubish Jadwal'),
                      ),
                    ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16.0),
        ],
      );
}

TableRow _buildLinkTableRow(BuildContext context, String label, String? url) {
  return TableRow(
    children: [
      Text(
        label,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: kColorBorder),
        maxLines: 1,
      ),
      Text(
        ' : ',
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: kColorBorder),
      ),
      InkWell(
        onTap: () async {
          try {
            if (!await launchUrl(Uri.parse(url))) {
              throw 'Error';
            }
          } catch (e) {
            showErrorDialog('Url tidak bisa dibuka');
          }
        },
        child: Text(
          url!,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: kColorBorder),
        ),
      ),
    ],
  );
}

TableRow _buildTableRow(BuildContext context, String label, String? value) {
  return TableRow(
    children: [
      Text(
        label,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: kColorBorder),
      ),
      Text(
        ' : ',
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: kColorBorder),
      ),
      Text(
        value ?? '',
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: kColorBorder),
      ),
    ],
  );
}
