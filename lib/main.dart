import "package:flutter/material.dart";
import 'package:meals_app/assets/theme/app_theme.dart';
import 'package:meals_app/routes/app_routes.dart';
import 'package:meals_app/screens/categories_meals_screen.dart';
import 'package:meals_app/screens/categories_screen.dart';
import 'package:meals_app/screens/meal_details_screen.dart';

void main() {
  runApp(const MealsApp());
}

class MealsApp extends StatelessWidget {
  const MealsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Vamos Cozinhar?",
      theme: ThemeData(
          primarySwatch: Colors.pink,
          primaryColor: AppTheme.colors.primaryColor,
          canvasColor: AppTheme.colors.backgroudColor),
      debugShowCheckedModeBanner: false,
      home: const CategoriesScreen(),
      initialRoute: AppRoutes.home,
      routes: {
        AppRoutes.categoriesMeals: (context) => const CategoriesMealsScreen(),
        AppRoutes.mealDetail: (context) => const MealDetailScreen()
      },
    );
  }
}
