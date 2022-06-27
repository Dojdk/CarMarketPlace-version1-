import 'package:flutter/material.dart';

import 'typesscreen.dart';
import 'favoritescreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _index = 0;
  final _pages = const [TypesScreen(), FavoriteScreen()];
  void _changepage(i) {
    setState(() {
      _index = i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('CarTypes'),
        ),
        body: _pages[_index],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _index,
          onTap: (index) {
            _changepage(index);
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.car_crash_outlined),
              label: 'Cars',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.star_border),
              label: 'Favourites',
            ),
          ],
        ));
  }
}
