import 'package:flutter/material.dart';
import 'package:internative/data/favorite_count.dart';
import 'package:internative/screens/favorite_screen.dart';
import 'package:internative/screens/home_screen.dart';
import 'package:internative/screens/profile_screen.dart';
import 'package:provider/provider.dart';

class NavigationScreen extends StatefulWidget {
  NavigationScreen({Key? key}) : super(key: key);

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int _selectedIndex = 1;
  static List<Widget> _screenList = <Widget>[
    FavoriteScreen(),
    HomeScreen(),
    ProfileScreen()
  ];

  void _onTappedItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _screenList.length,
      child: Scaffold(
        body: IndexedStack(
          index: _selectedIndex,
          children: _screenList,
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: context.watch<FavoriteCount>().countOfFavorite.toString(),
            ),
            const BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            const BottomNavigationBarItem(icon: Icon(Icons.person), label: '')
          ],
          onTap: (value) => _onTappedItem(value),
          currentIndex: _selectedIndex,
        ),
      ),
    );
  }
}
