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
                  Table(
                    columnWidths: const {
                      0: IntrinsicColumnWidth(),
                      1: FixedColumnWidth(260),
                    },
                    children: [
                      _buildTableRow(context, "Topic", ': ${meet.topik}'),
                      _buildLinkTableRow(
                          context, "Link Meet", ': ${meet.link}'),
                      _buildLinkTableRow(context, "Materi",
                          ': ${_truncateText(meet.materi, 25)}'),
                      _buildTableRow(
                        context,
                        "Jam Mulai",
                        ': ${meet.jamMulai!.toFormattedDate(withYear: false, withMonthName: false, withWeekday: false, withHour: true)}',
                      ),
                      _buildTableRow(
                        context,
                        "Jam Berakhir",
                        ': ${meet.jamBerakhir!.toFormattedDate(withYear: false, withMonthName: false, withWeekday: false, withHour: true)}',
                      ),
                      _buildTableRow(
                        context,
                        "Date",
                        ': ${meet.tanggal!.toFormattedDate(withMonthName: true)}',
                      ),
                      _buildTableRow(
                        context,
                        "Jumlah Peserta",
                        ': ${meet.totalRemaja.toString()}',
                      ),
                      _buildTableRow(
                          context, "Deskripsi", ': ${meet.deskripsi}'),
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
            ),
          ),
          const SizedBox(height: 16.0),
        ],
      );

  TableRow _buildLinkTableRow(BuildContext context, String label, String? url) {
    return TableRow(
      children: [
        Text(
          "$label",
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: kColorBorder),
        ),
        InkWell(
          onTap: () => _launchURL(url),
          child: Text(
            _truncateText(url, 25),
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: kColorBorder,
                ),
          ),
        ),
      ],
    );
  }

  TableRow _buildTableRow(BuildContext context, String label, String? value) {
    return TableRow(
      children: [
        Text(
          "$label",
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: kColorBorder),
        ),
        Text(
          value ?? '',
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: kColorBorder),
        ),
      ],
    );
  }

  String _truncateText(String? text, int maxLength) {
    if (text == null) return '';
    return text.length <= maxLength
        ? text
        : '${text.substring(0, maxLength)}...';
  }

  Future<void> _launchURL(String? url) async {
    // ignore: no_leading_underscores_for_local_identifiers
    final Uri _url = Uri.parse(url!);
    if (!await launchUrl(_url)) {
      throw 'Could not launch $url';
    }
  }
}
