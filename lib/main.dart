import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_redesign/constants/constants.dart';
import 'package:spotify_redesign/constants/icons.dart';
import 'package:spotify_redesign/theme/theme.dart';
import 'package:spotify_redesign/widgets/filter_chips/filter_chips_widget.dart';
import 'package:spotify_redesign/widgets/made_for_you/made_for_you_header_widget.dart';
import 'package:spotify_redesign/widgets/now_playing_bar/now_playing_bar_widget.dart';
import 'package:spotify_redesign/widgets/recents_grid/recents_grid_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      darkTheme: AppTheme.darkTheme, // Set the dark theme
      themeMode: ThemeMode.dark, // Use the system theme mode (light/dark)
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text('Home Page'),
    Text('Search Page'),
    Text('Notifications Page'),
    Text('Messages Page'),
    Text('Profile Page'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _widgetOptions.elementAt(_selectedIndex),
              FilterChipsWidget(),
              // RecentsGridWidget(),
              // MadeForYouHeaderWidget(),
              NowPlayingBarWidget(0.25),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Theme.of(context).colorScheme.onSecondary,
        unselectedItemColor: Theme.of(context).colorScheme.onSecondary,
        elevation: 0,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        items: <BottomNavigationBarItem>[
          bottomNavigationBarItem(
            AppIcons.home,
            AppIcons.homeFilled,
            "Home",
            context,
          ),
          bottomNavigationBarItem(
            AppIcons.discover,
            AppIcons.discoverFilled,
            "Discover",
            context,
          ),
          bottomNavigationBarItem(
            AppIcons.search,
            AppIcons.searchFilled,
            "Search",
            context,
          ),
          bottomNavigationBarItem(
            AppIcons.library,
            AppIcons.libraryFilled,
            "Library",
            context,
          ),
          bottomNavigationBarItem(
            AppIcons.user,
            AppIcons.userFilled,
            "Me",
            context,
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

BottomNavigationBarItem bottomNavigationBarItem(
    String defaultIcon, String selectedIcon, String label, BuildContext context) {
  return BottomNavigationBarItem(
    icon: _navBarIcon(defaultIcon),
    activeIcon: _navBarIcon(selectedIcon),
    label: label,
  );
}

Widget _navBarIcon(String icon) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 2.0),
    child: SvgPicture.asset(
      icon,
      height: Constants.iconSize,
    ),
  );
}
