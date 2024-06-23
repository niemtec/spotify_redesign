import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_redesign/constants.dart';
import 'package:spotify_redesign/now_playing_bar/now_playing_bar.dart';
import 'package:spotify_redesign/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // theme: AppTheme.lightTheme, // Set the light theme
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
              NowPlayingBar(0.25),
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
            "Home",
            "Home",
            context,
          ),
          bottomNavigationBarItem(
            "Discover",
            "Discover",
            context,
          ),
          bottomNavigationBarItem(
            "Search",
            "Search",
            context,
          ),
          bottomNavigationBarItem(
            "Library",
            "Library",
            context,
          ),
          bottomNavigationBarItem(
            "User",
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
    String iconName, String label, BuildContext context) {
  return BottomNavigationBarItem(
    icon: _navBarIcon(iconName),
    activeIcon: _navBarIcon(iconName, isFilled: true),
    label: label,
  );
}

Widget _navBarIcon(String iconName, {bool isFilled = false}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 2.0),
    child: SvgPicture.asset(
      "assets/icons/$iconName${isFilled ? "-filled.svg" : ".svg"}",
      height: Constants.iconSize,
    ),
  );
}
