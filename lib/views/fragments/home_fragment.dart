part of 'fragments.dart';

class HomeFragment extends StatelessWidget {
  const HomeFragment({super.key});

  @override
  Widget build(BuildContext context) => ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        children: [
          SizedBox(height: MediaQuery.viewPaddingOf(context).top),
          const SizedBox(height: 16.0),
          Text('Selamat datang,${currentUser?.name ?? 'Guest'}! 👋',
              style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(height: 16.0),
          BannerContainer(
            // ignore: unnecessary_string_interpolations
            title: Text(currentUser?.name ?? 'Guest'),
            subtitle: Text('Bergabung pada ${currentUser?.createdAt?.toFormattedDate(withWeekday: true, withMonthName: true, withHour: false) ?? 'Guest'}'),
            image: Image.asset('assets/images/profile-mentor.png'),
          ),
          const SizedBox(height: 16.0),
          Row(
            children: [
              Flexible(
                child: MyFilledButton.tonal(
                  onPressed: () => NavigationHelper.to(SlidePageRoute(
                      pageBuilder: (context) => const LeaderboardPage())),
                  icon: SvgPicture.asset('assets/svgs/exercise.svg'),
                  textStyle: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: kColorPrimary),
                  padding: const EdgeInsets.all(8.0),
                  borderColor: kColorBorder,
                  minHorizontalPadding: 8.0,
                  pressedBottomBorderWidth: 0.0,
                  bottomBorderOnly: true,
                  child: const Text('Leaderboard'),
                ),
              ),
              const SizedBox(width: 16.0),
              Flexible(
                child: MyFilledButton.tonal(
                  onPressed: () =>
                      homePageKey.currentState?.setSelectedIndex(1),
                  icon: SvgPicture.asset('assets/svgs/meet.svg'),
                  textStyle: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: kColorPrimary),
                  padding: const EdgeInsets.all(8.0),
                  borderColor: kColorBorder,
                  minHorizontalPadding: 8.0,
                  pressedBottomBorderWidth: 0.0,
                  bottomBorderOnly: true,
                  child: const Text('Meet'),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16.0),
          Text('Yuk, mulai mengajar dengan penuh semangat!',
              style: Theme.of(context).textTheme.headlineMedium),
          const SizedBox(height: 16.0),
          ListTile(
            leading: SvgPicture.asset('assets/svgs/forums.svg'),
            title: const Text('Converse with confidence'),
            subtitle: const Text('60,200+ stress-free interactive exercises'),
            textColor: kColorWhite,
          ),
          const Divider(),
          ListTile(
            leading: SvgPicture.asset('assets/svgs/word card.svg'),
            title: const Text('Build a large vocabulary'),
            subtitle: const Text('6,400+ practical words and phrases'),
            textColor: kColorWhite,
          ),
          const Divider(),
          ListTile(
            leading: SvgPicture.asset('assets/svgs/watch.svg'),
            title: const Text('Develop a learning habit'),
            subtitle: const Text('Smart reminders, fun challenges, and more'),
            textColor: kColorWhite,
          ),
          const SizedBox(height: 32.0),
        ],
      );
}
