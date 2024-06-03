part of 'pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void setSelectedIndex(int index) => setState(() => _selectedIndex = index);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: [
          const HomeFragment(),
          const ExerciseFragment(),
          const MeetFragment(),
          const ProfileFragment(),
        ][_selectedIndex],
        bottomNavigationBar: NavigationBarTheme(
          data: NavigationBarTheme.of(context).copyWith(
              labelTextStyle: WidgetStatePropertyAll(Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(color: kColorSurface))),
          child: MyNavigationBar(
            backgroundColor: kColorWhite,
            indicatorShape:
                const RoundedRectangleBorder(borderRadius: kBorderRadius),
            elevation: 8.0,
            indicatorColor: kColorTonalBorder,
            destinations: [
              MyNavigationDestination(
                icon: SvgPicture.asset(
                  'assets/svgs/home.svg',
                  width: 30.0,
                  height: 30.0,
                ),
                label: 'Home',
              ),
              MyNavigationDestination(
                icon: SvgPicture.asset(
                  'assets/svgs/exercise.svg',
                  width: 30.0,
                  height: 30.0,
                ),
                label: 'Exercise',
              ),
              MyNavigationDestination(
                icon: SvgPicture.asset(
                  'assets/svgs/meet.svg',
                  width: 30.0,
                  height: 30.0,
                ),
                label: 'Meet',
              ),
              MyNavigationDestination(
                icon: SvgPicture.asset(
                  'assets/svgs/profile.svg',
                  width: 30.0,
                  height: 30.0,
                ),
                label: 'Profile',
              ),
            ],
            selectedIndex: _selectedIndex,
            onDestinationSelected: setSelectedIndex,
          ),
        ),
      );
}
