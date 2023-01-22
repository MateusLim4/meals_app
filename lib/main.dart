import "package:flutter/material.dart";
import 'package:meals_app/assets/theme/app_theme.dart';
import 'package:meals_app/data/dummy_data.dart';
import 'package:meals_app/models/settings.dart';
import 'package:meals_app/routes/app_routes.dart';
import 'package:meals_app/screens/categories_meals_screen.dart';
import 'package:meals_app/screens/meal_details_screen.dart';
import 'package:meals_app/screens/settings_screen.dart';
import 'package:meals_app/screens/tabs_screen.dart';

import 'models/meal.dart';

void main() {
  runApp(const MealsApp());
}

class MealsApp extends StatefulWidget {
  const MealsApp({super.key});

  @override
  State<MealsApp> createState() => _MealsAppState();
}

class _MealsAppState extends State<MealsApp> {
  Settings settings = Settings();
  List<Meal> avaibleMeals = dummyMeals;

  void filterMeals(Settings settings) {
    setState(() {
      avaibleMeals = dummyMeals.where((meal) {
        final filterGluten = settings.isGlutenFree! && meal.isGlutenFree;
        final filterLactose = settings.isLactoseFree! && meal.isLactoseFree;
        final filterVegan = settings.isVegan! && meal.isVegan;
        final filterVegetarian = settings.isVegetarian! && meal.isVegetarian;

        return !filterGluten &&
            !filterLactose &&
            !filterVegan &&
            !filterVegetarian;
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Vamos Cozinhar?",
      theme: ThemeData(
        primarySwatch: Colors.purple,
        primaryColor: AppTheme.colors.primaryColor,
        canvasColor: AppTheme.colors.backgroudColor,
      ),
      debugShowCheckedModeBanner: false,
      home: const TabsScreen(),
      initialRoute: AppRoutes.home,
      routes: {
        AppRoutes.categoriesMeals: (context) =>
            CategoriesMealsScreen(meals: avaibleMeals),
        AppRoutes.mealDetail: (context) => const MealDetailScreen(),
        AppRoutes.settings: (context) => SettingsScreen(
              settings: settings,
              onSettingsChanged: filterMeals,
            )
      },
    );
  }
}
