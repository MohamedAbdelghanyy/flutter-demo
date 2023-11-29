import 'package:demo/screens/categories_screen.dart';
import 'package:flutter/material.dart';

class DrawerScreen extends StatefulWidget {
  static const routeName = '/drawer-screen';

  const DrawerScreen({super.key});

  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  final List<Map<String, Widget>> _pages = [
    {
      'page': const CategoriesScreen(),
    },
    {
      'page': const CategoriesScreen(),
    },
    {
      'page': const CategoriesScreen(),
    },
    {
      'page': const CategoriesScreen(),
    },
    {
      'page': const CategoriesScreen(),
    },
  ];

  int _selectedPageIndex = 1;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        backgroundColor: Colors.grey[100],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        iconSize: 26,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: const Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: const Icon(Icons.manage_search),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: const Icon(Icons.shopping_bag_rounded),
            label: 'Basket',
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: const Icon(Icons.bookmark_add_outlined),
            label: 'My Lists',
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: const Icon(Icons.person_outline),
            label: 'My Account',
          ),
        ],
      ),
    );
  }
}
