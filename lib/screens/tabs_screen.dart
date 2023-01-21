import 'package:flutter/material.dart';
import 'package:meals_app/screens/favorites_screen.dart';

import '../assets/theme/app_theme.dart';
import 'categories_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedScreenIndex = 0;

  final List<Map<String, dynamic>> _screens = [
    {"title": "Lista de Categorias", "screen": const CategoriesScreen()},
    {"title": "Meus Favoritos", "screen": const FavoritesScreen()},
  ];

  _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.colors.primaryColor,
        title: Text(
          _screens[_selectedScreenIndex]["title"],
          style: AppTheme.fontStyles.title,
        ),
      ),
      body: _screens[_selectedScreenIndex]["screen"],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.white,
        selectedIconTheme: IconThemeData(color: AppTheme.colors.secondaryColor),
        onTap: _selectScreen,
        backgroundColor: AppTheme.colors.primaryColor,
        currentIndex: _selectedScreenIndex,
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            backgroundColor: AppTheme.colors.primaryColor,
            icon: const Icon(
              Icons.category,
            ),
            label: "Categorias",
          ),
          BottomNavigationBarItem(
              backgroundColor: AppTheme.colors.primaryColor,
              icon: const Icon(
                Icons.favorite,
              ),
              label: "Favoritos"),
        ],
      ),
    );
  }
}
